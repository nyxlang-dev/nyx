// ============================================================
// NYX SCHEDULER — M:N Green Thread Scheduler (v2.0.0)
// ============================================================
// Work-stealing scheduler using ucontext_t for context switching.
// Provides goroutine-style concurrency on top of pthreads.
// ============================================================

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <pthread.h>
#include <fcntl.h>
#include <time.h>
// GC_THREADS must be defined before <gc.h> is included: it makes
// gc/gc_pthread_redirects.h #define pthread_create/pthread_join (used below,
// in nyx_scheduler_start/stop) to GC_pthread_create/GC_pthread_join, which
// auto-register/unregister worker OS threads with Boehm's collector so their
// stacks are scanned during stop-the-world. Mirrors runtime/thread.c. Do NOT
// additionally call GC_register_my_thread — that would double-register
// (GC_DUPLICATE) since the redirect already does it.
#define GC_THREADS
#include <gc.h>
#include "scheduler.h"
#include "event_loop.h"

// Global scheduler instance
static NyxScheduler g_scheduler;
static int g_scheduler_initialized = 0;

// Thread-local: which worker is running on this OS thread
static __thread NyxWorker* g_current_worker = NULL;

// ============================================================
// Scheduler <-> Event Loop bridge (Track 5a.2b)
// ------------------------------------------------------------
// One event loop shared by the whole scheduler. There is no dedicated
// poller thread: whichever worker finds its own queue AND every other
// worker's queue empty opportunistically becomes the "designated poller"
// for one tick (see the idle branch in worker_thread), guarded by
// g_poller_lock so at most one worker polls at a time (nyx_event_loop_run_once
// is not designed for concurrent callers). g_block_lock is the leaf lock
// that linearizes the block/wake handshake (see nyx_goroutine_sleep /
// wake_cb / the BLOCKED arm below) — it is NEVER nested with
// g_join_lock/g_reg_lock, and NEVER held across a swapcontext() call.
// ============================================================
static NyxEventLoop* g_loop = NULL;
static pthread_mutex_t g_poller_lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t g_block_lock = PTHREAD_MUTEX_INITIALIZER;
#define NYX_POLLER_TICK_MS 10

// ============================================================
// Goroutine Registry (Track 5a.1)
// ------------------------------------------------------------
// Hash-chained-by-id registry of live (spawned, not yet reaped) goroutines.
// Backs real `nyx_goroutine_join`: a joiner looks the goroutine up here to
// find out whether it's DONE, claims its result exactly once, and reaps it.
// The array itself is a GC root (static data) but goroutines are only kept
// alive by being reachable *through* it — reg_remove makes a GC_MALLOC'd
// NyxGoroutine collectible again.
// ============================================================

#define NYX_REG_BUCKETS 8192

static NyxGoroutine* g_reg[NYX_REG_BUCKETS];
static pthread_mutex_t g_reg_lock = PTHREAD_MUTEX_INITIALIZER;
static int g_reg_live = 0;

// Join synchronization: one global lock/condvar pair, never destroyed (so no
// UAF risk on the condvar itself). Lock order is ALWAYS g_join_lock ->
// g_reg_lock (never the reverse) to avoid a lock-order-inversion deadlock
// between goroutine_entry (join lock only) and try_claim_locked (both).
static pthread_mutex_t g_join_lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t  g_join_cv   = PTHREAD_COND_INITIALIZER;

static inline int reg_bucket(int64_t gid) {
    return (int)(((uint64_t)gid) % NYX_REG_BUCKETS);
}

// Caller must hold g_reg_lock.
static void reg_insert_locked(NyxGoroutine* g) {
    int b = reg_bucket(g->id);
    g->reg_next = g_reg[b];
    g_reg[b] = g;
    g_reg_live++;
}

// Caller must hold g_reg_lock.
static NyxGoroutine* reg_lookup_locked(int64_t gid) {
    int b = reg_bucket(gid);
    for (NyxGoroutine* g = g_reg[b]; g; g = g->reg_next) {
        if (g->id == (int)gid) return g;
    }
    return NULL;
}

// Caller must hold g_reg_lock. `g` must currently be in the registry.
static void reg_remove_locked(NyxGoroutine* g) {
    int b = reg_bucket(g->id);
    NyxGoroutine** pp = &g_reg[b];
    while (*pp) {
        if (*pp == g) {
            *pp = g->reg_next;
            g->reg_next = NULL;
            g_reg_live--;
            return;
        }
        pp = &(*pp)->reg_next;
    }
}

static void reg_insert(NyxGoroutine* g) {
    pthread_mutex_lock(&g_reg_lock);
    reg_insert_locked(g);
    pthread_mutex_unlock(&g_reg_lock);
}

int nyx_scheduler_debug_live_count(void) {
    pthread_mutex_lock(&g_reg_lock);
    int n = g_reg_live;
    pthread_mutex_unlock(&g_reg_lock);
    return n;
}

// Releases the goroutine's stack root + backing memory. Must only be called
// once per goroutine, after it has been reg_removed and claimed (join owns
// this invariant). GC_remove_roots MUST happen before free(): otherwise a
// concurrent GC scan could read already-freed memory through the stale root.
// The NyxGoroutine struct itself is GC_MALLOC'd and is NEVER freed here —
// once unreachable (post reg_remove) the collector reclaims it on its own.
static void reap(NyxGoroutine* g) {
    if (g->stack) {
        GC_remove_roots(g->stack, g->stack + NYX_STACK_SIZE);
        free(g->stack);
        g->stack = NULL;
    }
}

// Attempts to claim gid's result. Caller must hold g_join_lock (lock order:
// join -> reg). Returns:
//   1  -> claimed; *out = result (goroutine has been reaped)
//   0  -> exists but not DONE yet (caller should wait/yield and retry)
//  -1  -> unknown id or already claimed by another joiner (double-join)
static int try_claim_locked(int64_t gid, int64_t* out) {
    pthread_mutex_lock(&g_reg_lock);
    NyxGoroutine* g = reg_lookup_locked(gid);
    if (!g || g->claimed) {
        pthread_mutex_unlock(&g_reg_lock);
        return -1;
    }
    // Require BOTH: logically finished (DONE) AND the worker's own
    // swapcontext() back to its scheduler has actually returned
    // (stack_vacated) — i.e. no OS thread is still executing on g->stack.
    // See the stack_vacated field comment in scheduler.h for why DONE alone
    // is not sufficient (freeing the stack earlier is a use-after-free of
    // the still-active context).
    if (g->state != NYX_GOROUTINE_DONE || !g->stack_vacated) {
        pthread_mutex_unlock(&g_reg_lock);
        return 0;
    }
    g->claimed = 1;
    *out = g->result;        // copy result BEFORE reap
    reg_remove_locked(g);     // so no other joiner can attach to it
    pthread_mutex_unlock(&g_reg_lock);
    reap(g);
    return 1;
}

// Track 5a.2c: attempts to claim+remove a DONE, vacated, detached goroutine
// for reaping. Caller must hold g_join_lock (lock order: join -> reg, same
// as try_claim_locked). Returns 1 if `g` was just claimed+reg_removed -- the
// CALLER is responsible for calling reap(g) itself, AFTER releasing
// g_join_lock and from a context that is not `g`'s own stack (this function
// only arbitrates + unlinks; it deliberately does not call reap() so callers
// can release g_join_lock first -- reap() does file/GC work that need not
// happen under that lock). Returns 0 if `g` is not (yet, or ever, from this
// call's point of view) reapable-as-detached: not detached, already claimed
// by someone else (join or a previous detach/reaper), or not both DONE and
// stack_vacated yet.
static int try_reap_detached_locked(NyxGoroutine* g) {
    pthread_mutex_lock(&g_reg_lock);
    if (!g->detached || g->claimed ||
        g->state != NYX_GOROUTINE_DONE || !g->stack_vacated) {
        pthread_mutex_unlock(&g_reg_lock);
        return 0;
    }
    g->claimed = 1;
    reg_remove_locked(g);
    pthread_mutex_unlock(&g_reg_lock);
    return 1;
}

// ============================================================
// Run Queue Operations
// ============================================================

static void rq_init(NyxRunQueue* q) {
    q->head = NULL;
    q->tail = NULL;
    q->count = 0;
    pthread_mutex_init(&q->lock, NULL);
}

static void rq_push(NyxRunQueue* q, NyxGoroutine* g) {
    pthread_mutex_lock(&q->lock);
    g->next = NULL;
    if (q->tail) {
        q->tail->next = g;
    } else {
        q->head = g;
    }
    q->tail = g;
    q->count++;
    pthread_mutex_unlock(&q->lock);
}

static NyxGoroutine* rq_pop(NyxRunQueue* q) {
    pthread_mutex_lock(&q->lock);
    NyxGoroutine* g = q->head;
    if (g) {
        q->head = g->next;
        if (!q->head) q->tail = NULL;
        q->count--;
        g->next = NULL;
    }
    pthread_mutex_unlock(&q->lock);
    return g;
}

// Steal a goroutine from another worker's queue
static NyxGoroutine* rq_steal(NyxRunQueue* q) {
    return rq_pop(q);  // simple: steal from front (same as pop)
}

// ============================================================
// Block/Wake handshake callback (Track 5a.2b)
// ------------------------------------------------------------
// Invoked by nyx_event_loop_run_once, on the designated poller's native OS
// thread/stack (NOT on `g`'s own stack — `g` is parked, not running). `fd`
// is -1 for a timer firing (see event_loop.c's DispatchEntry convention),
// or the real fd for an I/O readiness wake.
// ============================================================
static void wake_cb(int fd, int events, void* ud) {
    (void)events;
    NyxGoroutine* g = (NyxGoroutine*)ud;
    // Timers are already one-shot/self-deactivating in the event loop; a
    // real fd registration must be explicitly torn down so it isn't
    // dispatched again on a future readiness edge before the goroutine has
    // re-registered (e.g. after a partial read).
    if (fd >= 0) nyx_event_loop_remove(g_loop, fd);

    pthread_mutex_lock(&g_block_lock);
    g->woken = 1;
    int push_now = g->parked;
    if (push_now) g->state = NYX_GOROUTINE_READY;
    pthread_mutex_unlock(&g_block_lock);
    // See the extended race-invariant trace in worker_thread's BLOCKED arm:
    // push_now is true only if the worker's arm already observed the
    // swapcontext() return (parked==1) BEFORE we took the lock here, which
    // means g->context is fully saved and safe to resume from another
    // thread's rq_push.
    if (push_now) {
        rq_push(&g_scheduler.workers[g->home_worker].queue, g);
    }
    // else: the worker's BLOCKED arm will requeue once it sets parked=1 and
    // observes woken==1 under the same lock.
}

// ============================================================
// Goroutine Entry Point
// ============================================================

static void goroutine_entry(uint32_t hi, uint32_t lo) {
    // Reconstruct pointer from two 32-bit halves (ucontext_t limitation)
    uintptr_t ptr = ((uintptr_t)hi << 32) | (uintptr_t)lo;
    NyxGoroutine* g = (NyxGoroutine*)ptr;

    // Call the goroutine function
    g->result = g->fn(g->arg);

    // Publish DONE. NOTE: this does NOT mean it's safe to reap yet — this
    // goroutine is still executing ON `stack` (the swapcontext() call just
    // below still needs it). The final "safe to free the stack" signal
    // (stack_vacated) is set by worker_thread, from ITS OWN native stack,
    // once that swapcontext() call has actually returned control there. See
    // the stack_vacated comment in scheduler.h. No broadcast here — the
    // authoritative wakeup happens alongside stack_vacated below, avoiding a
    // premature wakeup that would let a joiner free `stack` out from under
    // this still-running context (reproduces reliably under rapid
    // spawn/join churn: the freed range gets reused for the next stack).
    pthread_mutex_lock(&g_join_lock);
    g->state = NYX_GOROUTINE_DONE;
    pthread_mutex_unlock(&g_join_lock);

    // Return to scheduler context
    NyxWorker* w = g_current_worker;
    if (w) {
        swapcontext(&g->context, &w->scheduler_ctx);
    }
}

// ============================================================
// Worker Thread
// ============================================================

static void* worker_thread(void* arg) {
    NyxWorker* w = (NyxWorker*)arg;
    g_current_worker = w;

    while (w->active) {
        // Try to get a goroutine from own queue
        NyxGoroutine* g = rq_pop(&w->queue);

        // Work-stealing: try other workers' queues
        if (!g) {
            for (int i = 0; i < g_scheduler.num_workers && !g; i++) {
                if (i != w->id) {
                    g = rq_steal(&g_scheduler.workers[i].queue);
                }
            }
        }

        if (g) {
            // Run the goroutine
            w->current = g;
            g->state = NYX_GOROUTINE_RUNNING;
            swapcontext(&w->scheduler_ctx, &g->context);
            // Control only reaches here once the goroutine has swapcontext'd
            // BACK to us (either by finishing or by yielding) — at this
            // exact point it is no longer executing on `g->stack` at all;
            // we (the worker) are back on our own native pthread stack.
            w->current = NULL;

            if (g->state == NYX_GOROUTINE_DONE) {
                // Only now is it safe for a joiner to free g->stack. Signal
                // that under g_join_lock and wake any waiters (this is the
                // authoritative "done AND reapable" wakeup — see the
                // comment in goroutine_entry for why the DONE transition
                // itself does not broadcast).
                pthread_mutex_lock(&g_join_lock);
                g->stack_vacated = 1;
                // Track 5a.2c: if this goroutine was (already) marked
                // detached, nobody is ever going to join() it -- claim+
                // unlink it right here so it doesn't leak forever. This is
                // done while still holding g_join_lock (matching the lock
                // order join->reg used everywhere else), but the actual
                // reap() call happens AFTER releasing both locks, below —
                // we are on the WORKER's own native stack at this point
                // (g's swapcontext() back to us has already returned), so
                // it is safe to free g's stack from here, unlike from
                // inside g's own DONE path in goroutine_entry.
                int reap_me = try_reap_detached_locked(g);
                pthread_cond_broadcast(&g_join_cv);
                pthread_mutex_unlock(&g_join_lock);
                if (reap_me) reap(g);
            } else if (g->state == NYX_GOROUTINE_READY) {
                // Not done: re-queue it.
                rq_push(&w->queue, g);
            } else if (g->state == NYX_GOROUTINE_BLOCKED) {
                // Race-invariant trace (early-wake / lost-wake / double-requeue):
                //
                // At this exact line, `g` is fully OFF g->stack — the
                // swapcontext() a few lines above has already returned
                // control to us, on our own native worker stack. This is
                // the earliest point at which it is safe to let a wake_cb
                // (running concurrently on the designated poller's native
                // stack, possibly a DIFFERENT OS thread) touch `g` again.
                // That is why `parked` is set HERE and not before the
                // swapcontext() call — setting it earlier would let wake_cb
                // observe parked==1 and rq_push `g` onto a run queue while
                // g's ucontext is still mid-save, a use-after-resume race
                // (the generalized form of the stack_vacated lesson from
                // T5a.1: never let another thread act on a context before
                // the switch away from it has actually completed).
                //
                // g_block_lock linearizes this arm against wake_cb: whichever
                // of the two runs first sets its own flag (parked here,
                // woken there) and reads the other's under the SAME lock.
                //   - If wake_cb already ran (woken==1 when we take the
                //     lock): we see wake_now=1 here and immediately requeue.
                //     wake_cb, having found parked==0 at the time, did NOT
                //     requeue (push_now was false) -- so exactly one requeue
                //     happens, from this arm (no early-wake was possible,
                //     since wake_cb's push_now check reads parked which we
                //     had not yet set).
                //   - If wake_cb has not fired yet: we set parked=1, see
                //     wake_now=0, and do nothing further -- wake_cb, when it
                //     eventually fires and takes the lock, will see
                //     parked==1 and do the single rq_push itself.
                // Either way exactly one of {this arm, wake_cb} performs the
                // rq_push -- never both, never neither (lost-wake is
                // impossible because both sides check under the same lock
                // before deciding whether to skip the push; double-requeue
                // is impossible because only the side that observes the
                // other's flag already set pushes, and only one side can be
                // "the one that observes it already set" for a given pair of
                // lock acquisitions since the lock serializes them).
                pthread_mutex_lock(&g_block_lock);
                g->parked = 1;
                int wake_now = g->woken;
                pthread_mutex_unlock(&g_block_lock);
                if (wake_now) {
                    g->state = NYX_GOROUTINE_READY;
                    rq_push(&w->queue, g);
                }
                // else: wake_cb will requeue once it observes parked==1.
            }
        } else {
            // No work available. Rather than a fixed sched_yield() every
            // time, try to become the designated poller for this tick: at
            // most one worker holds g_poller_lock and drives the shared
            // event loop, which both makes progress on any pending
            // timers/fds AND (via wake_cb) requeues any goroutine whose
            // wait just became ready. If another worker already holds the
            // poller role, fall back to a plain yield so we don't busy-spin.
            if (g_loop && pthread_mutex_trylock(&g_poller_lock) == 0) {
                nyx_event_loop_run_once(g_loop, NYX_POLLER_TICK_MS);
                pthread_mutex_unlock(&g_poller_lock);
            } else {
                sched_yield();
            }
        }
    }

    return NULL;
}

// ============================================================
// Public API
// ============================================================

void nyx_scheduler_init(int num_workers) {
    if (g_scheduler_initialized) return;

    if (num_workers <= 0) num_workers = NYX_NUM_WORKERS;
    if (num_workers > NYX_NUM_WORKERS) num_workers = NYX_NUM_WORKERS;

    memset(&g_scheduler, 0, sizeof(g_scheduler));
    g_scheduler.num_workers = num_workers;
    g_scheduler.running = 0;
    pthread_mutex_init(&g_scheduler.global_lock, NULL);

    for (int i = 0; i < num_workers; i++) {
        g_scheduler.workers[i].id = i;
        g_scheduler.workers[i].active = 0;
        g_scheduler.workers[i].current = NULL;
        rq_init(&g_scheduler.workers[i].queue);
    }

    g_scheduler_initialized = 1;
}

void nyx_scheduler_start(void) {
    if (!g_scheduler_initialized) nyx_scheduler_init(NYX_NUM_WORKERS);

    // Create the shared event loop before any worker can go idle and try to
    // become the designated poller (g_loop must be non-NULL by then).
    if (!g_loop) g_loop = nyx_event_loop_create();

    g_scheduler.running = 1;
    for (int i = 0; i < g_scheduler.num_workers; i++) {
        g_scheduler.workers[i].active = 1;
        pthread_create(&g_scheduler.workers[i].thread, NULL,
                       worker_thread, &g_scheduler.workers[i]);
    }
}

void nyx_scheduler_stop(void) {
    g_scheduler.running = 0;
    for (int i = 0; i < g_scheduler.num_workers; i++) {
        g_scheduler.workers[i].active = 0;
        pthread_join(g_scheduler.workers[i].thread, NULL);
    }
    if (g_loop) {
        nyx_event_loop_destroy(g_loop);
        g_loop = NULL;
    }
}

// Shared body of nyx_goroutine_spawn / nyx_goroutine_spawn_detached. `detached`
// is stamped onto the goroutine BEFORE it is queued (reg_insert + rq_push),
// i.e. before any worker can possibly run it -- so an instant-completing
// goroutine can never observe detached==0 in the worker's DONE arm and skip
// the self-reap (see the DONE arm in worker_thread and try_reap_detached_locked).
static int64_t spawn_internal(int64_t (*fn)(void*), void* arg, int detached) {
    if (!g_scheduler_initialized) nyx_scheduler_init(NYX_NUM_WORKERS);
    if (!g_scheduler.running) nyx_scheduler_start();

    // Allocate goroutine. GC_MALLOC (not malloc): the struct can hold
    // GC-traceable pointers (closure env in `arg`, a GC object in `result`)
    // and must be scanned; it is NEVER free()'d — once reg_remove'd by join
    // it becomes unreachable and the collector reclaims it on its own.
    NyxGoroutine* g = (NyxGoroutine*)GC_MALLOC(sizeof(NyxGoroutine));
    if (!g) return -1;
    // GC_MALLOC already zeroes memory, but be explicit/defensive.
    memset(g, 0, sizeof(NyxGoroutine));

    pthread_mutex_lock(&g_scheduler.global_lock);
    g->id = ++g_scheduler.goroutine_count;
    pthread_mutex_unlock(&g_scheduler.global_lock);

    g->state = NYX_GOROUTINE_READY;
    g->fn = fn;
    g->arg = arg;
    g->result = 0;
    g->detached = detached;

    // Allocate stack (plain malloc — invisible to GC until rooted below).
    // `g` itself needs no explicit free on this failure path: it is
    // GC_MALLOC'd and not yet registered/reachable, so it's simply collected.
    g->stack = (char*)malloc(NYX_STACK_SIZE);
    if (!g->stack) { return -1; }

    // Set up ucontext
    getcontext(&g->context);
    g->context.uc_stack.ss_sp = g->stack;
    g->context.uc_stack.ss_size = NYX_STACK_SIZE;
    g->context.uc_link = NULL;  // We manage context switching manually

    // Pass goroutine pointer as two 32-bit ints (ucontext_t limitation)
    uintptr_t ptr = (uintptr_t)g;
    uint32_t hi = (uint32_t)(ptr >> 32);
    uint32_t lo = (uint32_t)(ptr & 0xFFFFFFFF);
    makecontext(&g->context, (void(*)(void))goroutine_entry, 2, hi, lo);

    // Register the stack as a GC root BEFORE this goroutine can possibly run
    // (i.e. before it's queued): a suspended goroutine's only reference to a
    // GC object may live in a stack local, invisible to the collector
    // otherwise. Paired with GC_remove_roots in reap(), using the exact same
    // range, in the opposite order (remove-before-free there).
    GC_add_roots(g->stack, g->stack + NYX_STACK_SIZE);

    // Publish to the join registry before it can be observed running/done.
    reg_insert(g);

    // Queue to worker with least work (simple round-robin)
    int min_worker = 0;
    int min_count = g_scheduler.workers[0].queue.count;
    for (int i = 1; i < g_scheduler.num_workers; i++) {
        if (g_scheduler.workers[i].queue.count < min_count) {
            min_count = g_scheduler.workers[i].queue.count;
            min_worker = i;
        }
    }
    rq_push(&g_scheduler.workers[min_worker].queue, g);

    return (int64_t)g->id;
}

int64_t nyx_goroutine_spawn(int64_t (*fn)(void*), void* arg) {
    return spawn_internal(fn, arg, /*detached=*/0);
}

// Track 5a.2c: see the header comment for the full contract.
int64_t nyx_goroutine_spawn_detached(int64_t (*fn)(void*), void* arg) {
    return spawn_internal(fn, arg, /*detached=*/1);
}

// Track 5a.2c: mark an already-spawned goroutine as fire-and-forget. See the
// header comment for the full contract and scheduler.c's module comment /
// try_reap_detached_locked for the double-free avoidance argument: `claimed`
// (set exactly once, under g_reg_lock) is the single arbiter shared by join,
// the worker's own DONE-arm reaper, and this function.
void nyx_goroutine_detach(int64_t gid) {
    // Lock order join -> reg, same as try_claim_locked / try_reap_detached_locked.
    pthread_mutex_lock(&g_join_lock);
    pthread_mutex_lock(&g_reg_lock);
    NyxGoroutine* g = reg_lookup_locked(gid);
    if (!g || g->claimed) {
        // Unknown id, or already claimed (already joined, or already reaped
        // by a previous detach/the worker's DONE-arm reaper): no-op. This is
        // the case where the worker's DONE arm ran BEFORE this detach() call
        // could set `detached` -- with detached==0 at that time it correctly
        // did not self-reap, but if a joiner got there first `claimed` is
        // already set and there is nothing left for us to do.
        pthread_mutex_unlock(&g_reg_lock);
        pthread_mutex_unlock(&g_join_lock);
        return;
    }
    g->detached = 1;
    // If it already finished AND vacated its stack, nobody else is ever
    // going to reap it (a join is not coming -- the caller just chose to
    // detach instead), so claim it ourselves, right here. This is safe:
    // stack_vacated implies the worker's own swapcontext() back to its
    // scheduler has already returned, i.e. no OS thread is executing on
    // g->stack anymore -- the same precondition try_claim_locked/join relies
    // on. If it's NOT done yet, we just leave detached=1 set and let the
    // worker's DONE arm (try_reap_detached_locked) claim+reap it later.
    int can_reap = (g->state == NYX_GOROUTINE_DONE && g->stack_vacated);
    if (can_reap) {
        g->claimed = 1;
        reg_remove_locked(g);
    }
    pthread_mutex_unlock(&g_reg_lock);
    pthread_mutex_unlock(&g_join_lock);
    // reap() runs off g's own stack unconditionally here: if can_reap is
    // true, g finished and vacated its stack already (we are on the calling
    // thread's own stack, never g's), so it's always safe.
    if (can_reap) reap(g);
}

void nyx_goroutine_yield(void) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) return;

    NyxGoroutine* g = w->current;
    g->state = NYX_GOROUTINE_READY;
    swapcontext(&g->context, &w->scheduler_ctx);
}

int64_t nyx_goroutine_join(int64_t gid) {
    int64_t result = 0;

    // Two dispatch paths, chosen by who's calling:
    //   - a worker running a goroutine that itself calls join() must NOT
    //     block the OS thread (that would starve the scheduler) — it yields
    //     back to the scheduler and retries, like a cooperative spin.
    //   - anything else (typically main()) blocks on the condvar, woken by
    //     goroutine_entry's broadcast when ANY goroutine completes.
    if (g_current_worker && g_current_worker->current) {
        for (;;) {
            pthread_mutex_lock(&g_join_lock);
            int rc = try_claim_locked(gid, &result);
            // Never hold g_join_lock across nyx_goroutine_yield (it
            // swapcontext()s back to the scheduler) — release first.
            pthread_mutex_unlock(&g_join_lock);
            if (rc == 1) return result;
            if (rc == -1) return 0; // unknown id / already joined elsewhere
            nyx_goroutine_yield();
        }
    } else {
        pthread_mutex_lock(&g_join_lock);
        for (;;) {
            int rc = try_claim_locked(gid, &result);
            if (rc == 1) { pthread_mutex_unlock(&g_join_lock); return result; }
            if (rc == -1) { pthread_mutex_unlock(&g_join_lock); return 0; }
            // Mesa-monitor semantics: re-check the predicate (try_claim)
            // after every wakeup, since cond_wait can have spurious wakeups
            // or wake for a different goroutine's completion.
            pthread_cond_wait(&g_join_cv, &g_join_lock);
        }
    }
}

// ============================================================
// Block/wake entry points (Track 5a.2b)
// ============================================================

// Suspend the calling goroutine for ~ms milliseconds, then resume. Backed by
// a one-shot event-loop timer + the block/wake handshake (see wake_cb and
// the BLOCKED arm in worker_thread) -- the OS thread is NOT tied up sleeping;
// it goes back to running other goroutines/polling until the timer fires.
void nyx_goroutine_sleep(int64_t ms) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) {
        // Not running on a goroutine (e.g. called from main / a plain OS
        // thread outside the scheduler): there is no context to suspend, so
        // fall back to a real sleep. Documented fallback per the design.
        struct timespec ts;
        ts.tv_sec = ms / 1000;
        ts.tv_nsec = (ms % 1000) * 1000000L;
        nanosleep(&ts, NULL);
        return;
    }

    NyxGoroutine* g = w->current;
    g->state = NYX_GOROUTINE_BLOCKED;
    g->woken = 0;
    g->parked = 0;
    g->home_worker = w->id;
    // Registered BEFORE the swapcontext(): if the timer were somehow to fire
    // before we suspend, wake_cb would just see parked==0 and defer the
    // requeue to the BLOCKED arm (no early-wake risk -- see its comment).
    nyx_event_loop_add_timer(g_loop, (int)ms, wake_cb, g);
    // NO lock held here -- g_block_lock is only ever taken inside the
    // worker's BLOCKED arm (after this returns to the scheduler) and inside
    // wake_cb, never across this call.
    swapcontext(&g->context, &w->scheduler_ctx);
    // Resumed here once the worker's BLOCKED arm (or a subsequent pop from
    // the run queue) has scheduled us again -- i.e. after the timer fired
    // and the handshake completed.
}

// Suspend the calling goroutine until `fd` becomes ready for `events`
// (NYX_EV_READ/NYX_EV_WRITE), then resume. Returns 0 once woken (the caller
// is expected to retry its syscall -- e.g. read()/write() -- since readiness
// doesn't guarantee the full requested transfer completed).
int nyx_goroutine_block_on_fd(int fd, int events) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) {
        // Off-goroutine caller: there is no scheduler context to suspend.
        // Documented fallback -- callers outside a goroutine must use a
        // blocking (or their own polling) I/O path instead.
        return -1;
    }

    NyxGoroutine* g = w->current;
    // fd must be non-blocking so a spurious/edge-triggered wakeup or a
    // partial-readiness race never wedges the goroutine in a blocking
    // syscall on the shared OS thread pool.
    int flags = fcntl(fd, F_GETFL, 0);
    if (flags >= 0) fcntl(fd, F_SETFL, flags | O_NONBLOCK);

    g->state = NYX_GOROUTINE_BLOCKED;
    g->woken = 0;
    g->parked = 0;
    g->home_worker = w->id;
    nyx_event_loop_add(g_loop, fd, events, wake_cb, g);
    swapcontext(&g->context, &w->scheduler_ctx);
    return 0;
}

// ============================================================
// Nyx runtime bindings
// ============================================================

// Called from Nyx code: goroutine_spawn(closure_pair) -> gid
int64_t nyx_goroutine_spawn_closure(void* closure_pair) {
    // closure_pair is {fn_ptr: i8*, env_ptr: i8*}
    // We need to call fn_ptr(env_ptr) from the goroutine
    typedef int64_t (*fn_t)(void*);
    void** pair = (void**)closure_pair;
    fn_t fn = (fn_t)pair[0];
    void* env = pair[1];
    return nyx_goroutine_spawn(fn, env);
}

// Called from Nyx code (T5b.2): spawn { } desugars to __go_spawn(closure_pair)
// -> a DETACHED, self-reaping goroutine (fire-and-forget, no leak). Unlike
// nyx_goroutine_spawn_closure (used by await), the caller never joins this
// one — nyx_goroutine_spawn_detached reaps it internally on completion.
int64_t nyx_goroutine_spawn_closure_detached(void* closure_pair) {
    typedef int64_t (*fn_t)(void*);
    void** pair = (void**)closure_pair;
    fn_t fn = (fn_t)pair[0];
    void* env = pair[1];
    return nyx_goroutine_spawn_detached(fn, env);
}

// goroutine_yield() — called from Nyx
void nyx_yield(void) {
    nyx_goroutine_yield();
}
