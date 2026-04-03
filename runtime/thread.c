// ============================================
// THREAD.C - Threading Runtime for Nyx v5.1
// ============================================

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#define GC_THREADS
#include <gc.h>
#include "thread.h"

// ===== THREAD SPAWN =====

// Closure pair layout: { fn_ptr (i8*), env_ptr (i8*) }
// fn_ptr signature: i64 fn(i8* env)
typedef struct {
    void* fn_ptr;
    void* env_ptr;
} nyx_closure_pair_t;

typedef struct {
    nyx_closure_pair_t closure;
    int64_t result;
} nyx_thread_ctx_t;

typedef struct {
    nyx_thread_ctx_t* ctx;
    pthread_t thread;
} nyx_thread_handle_t;

static void* thread_entry(void* arg) {
    nyx_thread_ctx_t* ctx = (nyx_thread_ctx_t*)arg;
    // The closure function takes env_ptr as first arg, returns i64
    typedef int64_t (*closure_fn_t)(void*);
    closure_fn_t fn = (closure_fn_t)ctx->closure.fn_ptr;
    ctx->result = fn(ctx->closure.env_ptr);
    return NULL;
}

// Spawn a thread running a closure. Returns an opaque handle (actually a heap-allocated thread context).
int64_t nyx_thread_spawn(void* closure_pair) {
    if (!closure_pair) {
        fprintf(stderr, "Runtime Error: thread_spawn() received NULL closure\n");
        return 0;
    }

    // Read fn_ptr and env_ptr from the closure pair struct in memory
    void** pair = (void**)closure_pair;
    nyx_thread_ctx_t* ctx = (nyx_thread_ctx_t*)GC_MALLOC(sizeof(nyx_thread_ctx_t));
    ctx->closure.fn_ptr = pair[0];
    ctx->closure.env_ptr = pair[1];
    ctx->result = 0;

    nyx_thread_handle_t* handle = (nyx_thread_handle_t*)GC_MALLOC(sizeof(nyx_thread_handle_t));
    handle->ctx = ctx;

    pthread_create(&handle->thread, NULL, thread_entry, ctx);
    return (int64_t)handle;
}

// Join a thread and return its result.
int64_t nyx_thread_join(int64_t handle_i64) {
    nyx_thread_handle_t* handle = (nyx_thread_handle_t*)(intptr_t)handle_i64;
    if (!handle) return 0;

    pthread_join(handle->thread, NULL);
    return handle->ctx->result;
}

// Cancel a task (async, no join). v7.4
void nyx_task_cancel(int64_t handle_i64) {
    nyx_thread_handle_t* handle = (nyx_thread_handle_t*)(intptr_t)handle_i64;
    if (!handle) return;
    pthread_cancel(handle->thread);
}

// Race two tasks: return result of whichever finishes first. v7.4
int64_t nyx_task_race(int64_t h1_i64, int64_t h2_i64) {
    nyx_thread_handle_t* h1 = (nyx_thread_handle_t*)(intptr_t)h1_i64;
    nyx_thread_handle_t* h2 = (nyx_thread_handle_t*)(intptr_t)h2_i64;
    if (!h1 || !h2) return 0;

    struct timespec ts;
    while (1) {
        clock_gettime(CLOCK_REALTIME, &ts);
        ts.tv_nsec += 1000000;  // 1ms
        if (ts.tv_nsec >= 1000000000) { ts.tv_sec++; ts.tv_nsec -= 1000000000; }
        if (pthread_timedjoin_np(h1->thread, NULL, &ts) == 0)
            return h1->ctx->result;

        clock_gettime(CLOCK_REALTIME, &ts);
        ts.tv_nsec += 1000000;
        if (ts.tv_nsec >= 1000000000) { ts.tv_sec++; ts.tv_nsec -= 1000000000; }
        if (pthread_timedjoin_np(h2->thread, NULL, &ts) == 0)
            return h2->ctx->result;
    }
}

// ===== MUTEX =====

void* nyx_mutex_new(void) {
    pthread_mutex_t* m = (pthread_mutex_t*)GC_MALLOC(sizeof(pthread_mutex_t));
    pthread_mutex_init(m, NULL);
    return (void*)m;
}

void nyx_mutex_lock(void* mutex) {
    if (mutex) pthread_mutex_lock((pthread_mutex_t*)mutex);
}

void nyx_mutex_unlock(void* mutex) {
    if (mutex) pthread_mutex_unlock((pthread_mutex_t*)mutex);
}

void nyx_mutex_destroy(void* mutex) {
    if (mutex) pthread_mutex_destroy((pthread_mutex_t*)mutex);
}

// ===== CHANNEL =====

typedef struct {
    int64_t* buffer;
    int64_t capacity;
    int64_t head;
    int64_t tail;
    int64_t count;
    pthread_mutex_t lock;
    pthread_cond_t not_empty;
    pthread_cond_t not_full;
} nyx_channel_t;

void* nyx_channel_new(int64_t capacity) {
    if (capacity <= 0) capacity = 64;
    nyx_channel_t* ch = (nyx_channel_t*)GC_MALLOC(sizeof(nyx_channel_t));
    ch->buffer = (int64_t*)GC_MALLOC(sizeof(int64_t) * capacity);
    ch->capacity = capacity;
    ch->head = 0;
    ch->tail = 0;
    ch->count = 0;
    pthread_mutex_init(&ch->lock, NULL);
    pthread_cond_init(&ch->not_empty, NULL);
    pthread_cond_init(&ch->not_full, NULL);
    return (void*)ch;
}

void nyx_channel_send(void* handle, int64_t val) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return;

    pthread_mutex_lock(&ch->lock);
    while (ch->count >= ch->capacity) {
        pthread_cond_wait(&ch->not_full, &ch->lock);
    }
    ch->buffer[ch->tail] = val;
    ch->tail = (ch->tail + 1) % ch->capacity;
    ch->count++;
    pthread_cond_signal(&ch->not_empty);
    pthread_mutex_unlock(&ch->lock);
}

int64_t nyx_channel_recv(void* handle) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return 0;

    pthread_mutex_lock(&ch->lock);
    while (ch->count <= 0) {
        pthread_cond_wait(&ch->not_empty, &ch->lock);
    }
    int64_t val = ch->buffer[ch->head];
    ch->head = (ch->head + 1) % ch->capacity;
    ch->count--;
    pthread_cond_signal(&ch->not_full);
    pthread_mutex_unlock(&ch->lock);
    return val;
}

// Non-blocking receive: returns value if available, -1 if empty
int64_t nyx_channel_try_recv(void* handle) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return -1;

    pthread_mutex_lock(&ch->lock);
    if (ch->count <= 0) {
        pthread_mutex_unlock(&ch->lock);
        return -1;
    }
    int64_t val = ch->buffer[ch->head];
    ch->head = (ch->head + 1) % ch->capacity;
    ch->count--;
    pthread_cond_signal(&ch->not_full);
    pthread_mutex_unlock(&ch->lock);
    return val;
}

void nyx_channel_destroy(void* handle) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return;
    pthread_mutex_destroy(&ch->lock);
    pthread_cond_destroy(&ch->not_empty);
    pthread_cond_destroy(&ch->not_full);
}
