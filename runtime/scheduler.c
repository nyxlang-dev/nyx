// ============================================================
// NYX SCHEDULER — M:N Green Thread Scheduler (v2.0.0)
// ============================================================
// Work-stealing scheduler using ucontext_t for context switching.
// Provides goroutine-style concurrency on top of pthreads.
// ============================================================

#include "scheduler.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>

// Global scheduler instance
static NyxScheduler g_scheduler;
static int g_scheduler_initialized = 0;

// Thread-local: which worker is running on this OS thread
static __thread NyxWorker* g_current_worker = NULL;

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
// Goroutine Entry Point
// ============================================================

static void goroutine_entry(uint32_t hi, uint32_t lo) {
    // Reconstruct pointer from two 32-bit halves (ucontext_t limitation)
    uintptr_t ptr = ((uintptr_t)hi << 32) | (uintptr_t)lo;
    NyxGoroutine* g = (NyxGoroutine*)ptr;

    // Call the goroutine function
    g->result = g->fn(g->arg);
    g->state = NYX_GOROUTINE_DONE;

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
            w->current = NULL;

            // If goroutine is not done, re-queue it
            if (g->state == NYX_GOROUTINE_READY) {
                rq_push(&w->queue, g);
            }
        } else {
            // No work available: yield CPU briefly
            sched_yield();
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
}

int64_t nyx_goroutine_spawn(int64_t (*fn)(void*), void* arg) {
    if (!g_scheduler_initialized) nyx_scheduler_init(NYX_NUM_WORKERS);
    if (!g_scheduler.running) nyx_scheduler_start();

    // Allocate goroutine
    NyxGoroutine* g = (NyxGoroutine*)malloc(sizeof(NyxGoroutine));
    if (!g) return -1;

    memset(g, 0, sizeof(NyxGoroutine));

    pthread_mutex_lock(&g_scheduler.global_lock);
    g->id = ++g_scheduler.goroutine_count;
    pthread_mutex_unlock(&g_scheduler.global_lock);

    g->state = NYX_GOROUTINE_READY;
    g->fn = fn;
    g->arg = arg;
    g->result = 0;

    // Allocate stack
    g->stack = (char*)malloc(NYX_STACK_SIZE);
    if (!g->stack) { free(g); return -1; }

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

void nyx_goroutine_yield(void) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) return;

    NyxGoroutine* g = w->current;
    g->state = NYX_GOROUTINE_READY;
    swapcontext(&g->context, &w->scheduler_ctx);
}

int64_t nyx_goroutine_join(int64_t gid) {
    // Simple spin-wait for the goroutine to complete
    // In a real scheduler, this would use a more efficient mechanism
    // For now, scan all workers' queues
    // This is O(n) and not production-quality but demonstrates the concept
    while (1) {
        int found = 0;
        // Check if any goroutine with this id is still running
        // (We'd need a goroutine registry for proper join support)
        // For now, just yield a bit
        usleep(1000);  // 1ms
        // Since we don't have a registry, return immediately
        // Real implementation would block until the goroutine finishes
        break;
    }
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

// goroutine_yield() — called from Nyx
void nyx_yield(void) {
    nyx_goroutine_yield();
}
