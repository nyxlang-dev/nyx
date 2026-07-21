// ============================================================
// NYX SCHEDULER — M:N Green Thread Scheduler (v2.0.0)
// ============================================================
// Implements a work-stealing scheduler for Nyx goroutines.
// Uses ucontext_t for cooperative/preemptive coroutines.
//
// Architecture:
//   - N OS threads (workers) pulled from a thread pool
//   - M goroutines (lightweight tasks) scheduled onto workers
//   - Work-stealing: idle workers steal tasks from busy workers
//   - Each worker has its own run queue (deque)
// ============================================================

#ifndef NYX_SCHEDULER_H
#define NYX_SCHEDULER_H

#include <stdint.h>
#include <ucontext.h>
#include <pthread.h>

// Maximum goroutines in the scheduler
#define NYX_MAX_GOROUTINES 4096
#define NYX_STACK_SIZE     (64 * 1024)  // 64KB stack per goroutine
#define NYX_NUM_WORKERS    4            // default worker thread count

// Goroutine states
#define NYX_GOROUTINE_READY    0
#define NYX_GOROUTINE_RUNNING  1
#define NYX_GOROUTINE_DONE     2
#define NYX_GOROUTINE_BLOCKED  3

// Goroutine descriptor
//
// Allocation model (Track 5a.1): the struct itself is GC_MALLOC'd (never
// `free`'d) because it may hold GC-traceable pointers (closure env in `arg`,
// a GC object in `result`). It stays reachable only via the registry
// (g_reg[]/reg_next chains) while alive; once `nyx_goroutine_join` reg_removes
// it, it becomes unreachable to the collector and is eventually reclaimed.
// The `stack` buffer remains a plain `malloc` (forward-compatible with the
// future guard-page stacks of Track 5c) but is registered as an explicit GC
// root (`GC_add_roots`) for its lifetime so a suspended goroutine's locals
// are scanned; the root is removed before the stack is freed in `reap`.
typedef struct NyxGoroutine {
    int            id;
    int            state;       // NYX_GOROUTINE_*
    ucontext_t     context;
    char*          stack;       // allocated stack (plain malloc, GC-rooted separately)
    int64_t        (*fn)(void*); // function to run
    void*          arg;         // argument (closure pair)
    int64_t        result;      // return value
    struct NyxGoroutine* next;     // linked list in run queue (rq_push/rq_pop)
    struct NyxGoroutine* reg_next; // linked list in the join registry (hash chain)
    int            claimed;        // 1 once a joiner has claimed the result (prevents double-reap)
    // 1 once the OS thread that ran this goroutine has swapcontext'd BACK to
    // its own native (scheduler) stack, i.e. it is no longer executing on
    // `stack` at all. state==DONE alone is NOT enough to reap: the goroutine
    // sets DONE while still running on `stack`, immediately before its own
    // swapcontext() call back to the scheduler — that call itself still
    // needs `stack` to complete. Freeing it before stack_vacated is set is a
    // use-after-free of the currently-executing stack (reproduces reliably
    // under rapid spawn/join churn, where the freed range is immediately
    // reused for the next goroutine's stack). Set by worker_thread right
    // after its swapcontext() into the goroutine returns.
    int            stack_vacated;
    // --- Track 5a.2b: scheduler<->event-loop block/wake handshake ---
    // Which worker this goroutine was running on when it blocked (so wake_cb,
    // running on the poller's native stack, knows which run queue to requeue
    // it onto). Set right before the blocking swapcontext().
    int            home_worker;
    // woken/parked: the two halves of the block/wake handshake, both only
    // ever touched under g_block_lock (see scheduler.c). `parked` is set by
    // the worker's BLOCKED arm AFTER swapcontext() has returned there (i.e.
    // the goroutine's context is fully saved and off its stack). `woken` is
    // set by wake_cb (event-loop callback) when the timer/fd fires. Whichever
    // of the two happens second observes the other's flag already set (under
    // the same lock) and performs the single rq_push — see the race-invariant
    // trace in scheduler.c above worker_thread's BLOCKED arm.
    int            woken;
    int            parked;
    // Reserved for Track 5a.2c (detached goroutines + reaper). Unused here.
    int            detached;
} NyxGoroutine;

// Per-worker run queue (simple FIFO for now)
typedef struct NyxRunQueue {
    NyxGoroutine*  head;
    NyxGoroutine*  tail;
    int            count;
    pthread_mutex_t lock;
} NyxRunQueue;

// Worker thread descriptor
typedef struct NyxWorker {
    int            id;
    pthread_t      thread;
    NyxRunQueue    queue;
    NyxGoroutine*  current;    // currently running goroutine
    ucontext_t     scheduler_ctx; // context to return to scheduler
    int            active;
} NyxWorker;

// Global scheduler state
typedef struct NyxScheduler {
    NyxWorker      workers[NYX_NUM_WORKERS];
    int            num_workers;
    int            running;
    pthread_mutex_t global_lock;
    int            goroutine_count; // total goroutines ever created
} NyxScheduler;

// Public API
void nyx_scheduler_init(int num_workers);
void nyx_scheduler_start(void);
void nyx_scheduler_stop(void);
int64_t nyx_goroutine_spawn(int64_t (*fn)(void*), void* arg);
void nyx_goroutine_yield(void);
int64_t nyx_goroutine_join(int64_t gid);

// Track 5a.2c: fire-and-forget goroutines. A `spawn`ed goroutine that is
// never `join`ed stays in the registry forever (struct + stack + GC root
// leak) -- these two entry points close that leak for callers that
// intentionally don't want the result.
//
// nyx_goroutine_detach: mark an already-spawned (joinable) goroutine `gid`
// as detached. If it has already finished (DONE + stack_vacated) by the
// time this is called, it is reaped synchronously, right here. Otherwise
// the worker's DONE arm will reap it once it finishes. Safe to call
// concurrently with a join on the same gid (see scheduler.c for the
// claimed-arbiter race analysis) -- whichever of {detach, join, the
// worker's own DONE-arm reaper} sets `claimed` first under g_reg_lock owns
// the single reap; the others observe claimed==1 and no-op. Unknown/already
// reaped gid: no-op.
void nyx_goroutine_detach(int64_t gid);

// nyx_goroutine_spawn_detached: spawn a goroutine that is fire-and-forget
// from the start -- equivalent to nyx_goroutine_spawn immediately followed
// by nyx_goroutine_detach(gid), but race-free: `detached` is set before the
// goroutine is queued (i.e. before it can possibly run/finish), so an
// instant-completing goroutine can never race the detach against its own
// completion.
int64_t nyx_goroutine_spawn_detached(int64_t (*fn)(void*), void* arg);

// Track 5a.2b: block the calling goroutine until a timer/fd fires, then
// resume. Must be called from a goroutine (i.e. from inside a function
// running on the scheduler); if called off-goroutine (no current worker),
// nyx_goroutine_sleep falls back to a real sleep and nyx_goroutine_block_on_fd
// is not meaningful (documented fallback — see scheduler.c).
void nyx_goroutine_sleep(int64_t ms);
int  nyx_goroutine_block_on_fd(int fd, int events);

// Test/debug hook: number of goroutines currently live in the join registry
// (spawned but not yet joined/reaped). Used by tests/runtime-unit to assert
// no leaks after a batch of spawn/join cycles.
int nyx_scheduler_debug_live_count(void);

#endif // NYX_SCHEDULER_H
