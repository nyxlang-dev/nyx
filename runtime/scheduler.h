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
typedef struct NyxGoroutine {
    int            id;
    int            state;       // NYX_GOROUTINE_*
    ucontext_t     context;
    char*          stack;       // allocated stack
    int64_t        (*fn)(void*); // function to run
    void*          arg;         // argument (closure pair)
    int64_t        result;      // return value
    struct NyxGoroutine* next;  // linked list in run queue
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

#endif // NYX_SCHEDULER_H
