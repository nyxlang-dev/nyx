// ============================================
// THREAD.C - Threading Runtime for Nyx v5.1
// ============================================

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <time.h>
// ES: sin pthread directo ni GC_THREADS acá — el redirect a GC_pthread_create
// vive en os_posix.c, que os_thread_create ya usa por debajo.
// EN: no direct pthread nor GC_THREADS here — the redirect to
// GC_pthread_create lives in os_posix.c, already used under os_thread_create.
#include <gc.h>
#include "os/nyx_os.h"
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
    os_thread_t thread;
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

    os_thread_create(&handle->thread, thread_entry, ctx);
    return (int64_t)handle;
}

// Join a thread and return its result.
int64_t nyx_thread_join(int64_t handle_i64) {
    nyx_thread_handle_t* handle = (nyx_thread_handle_t*)(intptr_t)handle_i64;
    if (!handle) return 0;

    os_thread_join(&handle->thread);
    return handle->ctx->result;
}

// Cancel a task (async, no join). v7.4
void nyx_task_cancel(int64_t handle_i64) {
    nyx_thread_handle_t* handle = (nyx_thread_handle_t*)(intptr_t)handle_i64;
    if (!handle) return;
    os_thread_cancel(&handle->thread);
}

// Race two tasks: return result of whichever finishes first. v7.4
int64_t nyx_task_race(int64_t h1_i64, int64_t h2_i64) {
    nyx_thread_handle_t* h1 = (nyx_thread_handle_t*)(intptr_t)h1_i64;
    nyx_thread_handle_t* h2 = (nyx_thread_handle_t*)(intptr_t)h2_i64;
    if (!h1 || !h2) return 0;

    while (1) {
        if (os_thread_timedjoin(&h1->thread, 1) == 0)
            return h1->ctx->result;
        if (os_thread_timedjoin(&h2->thread, 1) == 0)
            return h2->ctx->result;
    }
}

// ===== MUTEX =====

void* nyx_mutex_new(void) {
    os_mutex_t* m = (os_mutex_t*)GC_MALLOC(sizeof(os_mutex_t));
    os_mutex_init(m);
    return (void*)m;
}

void nyx_mutex_lock(void* mutex) {
    if (mutex) os_mutex_lock((os_mutex_t*)mutex);
}

void nyx_mutex_unlock(void* mutex) {
    if (mutex) os_mutex_unlock((os_mutex_t*)mutex);
}

void nyx_mutex_destroy(void* mutex) {
    if (mutex) os_mutex_destroy((os_mutex_t*)mutex);
}

// ===== CONDVAR =====
//
// condvar_wait blocks the OS THREAD (like mutex_lock and channel_recv) — for
// goroutines on the M:N scheduler the idiomatic primitive remains the channel.
// The caller MUST hold `m` locked when calling wait/timedwait (pthread contract).
// Uses CLOCK_MONOTONIC for timedwait so it does not depend on wall-clock (NTP jumps).

void* nyx_condvar_new(void) {
    // os_cond_init SIEMPRE usa CLOCK_MONOTONIC por debajo — ya no hace falta
    // armar el condattr acá (era exactamente lo que la lección de este mismo
    // archivo le enseñó a la capa os_*).
    // EN: os_cond_init ALWAYS uses CLOCK_MONOTONIC underneath — no need to
    // build the condattr here anymore (that was exactly the lesson this file
    // taught the os_* layer).
    os_cond_t* cv = (os_cond_t*)GC_MALLOC(sizeof(os_cond_t));
    os_cond_init(cv);
    return (void*)cv;
}

void nyx_condvar_wait(void* cv, void* mutex) {
    if (cv && mutex) os_cond_wait((os_cond_t*)cv, (os_mutex_t*)mutex);
}

void nyx_condvar_signal(void* cv) {
    if (cv) os_cond_signal((os_cond_t*)cv);
}

void nyx_condvar_broadcast(void* cv) {
    if (cv) os_cond_broadcast((os_cond_t*)cv);
}

// Returns 0 if signaled, 1 if timed out.
// ⚠️ Colapso documentado (catalogado 2026-07-19): `cv`/`mutex` NULL devuelve 1
// (indistinguible de un timeout real), y cualquier error de
// os_cond_timedwait que no sea -ETIMEDOUT (-EINVAL; -EPERM = "olvidé tomar
// el mutex") cae al else y devuelve 0 — un FALSO "señalado". Un caller con
// ese misuse ve éxito en vez de un error claro; distinguirlo requeriría un
// código de retorno aparte (decidido no hacerlo por ahora — contrato 0/1).
int64_t nyx_condvar_timedwait(void* cv, void* mutex, int64_t timeout_ms) {
    if (!cv || !mutex) return 1;
    int64_t deadline = os_monotonic_ns() + timeout_ms * 1000000LL;
    int rc = os_cond_timedwait((os_cond_t*)cv, (os_mutex_t*)mutex, deadline);
    // rc != 0 && rc != -ETIMEDOUT (otro -errno, p.ej. -EINVAL/-EPERM) cae acá
    // igual que antes: colapsa a 0, ver el comentario de arriba.
    return (rc == -ETIMEDOUT) ? 1 : 0;
}

// ===== RWLOCK =====
//
// Multi-reader/single-writer (pthread_rwlock). Como mutex/condvar, bloquea el
// OS THREAD — para goroutines sobre el scheduler M:N el primitivo idiomático
// sigue siendo el channel. Motivación: nyx-db serializa TODO con un mutex
// global; con RWLock las lecturas concurrentes dejan de colisionar entre sí.
// try* devuelven 0 = adquirido, 1 = ocupado (o handle NULL).

void* nyx_rwlock_new(void) {
    os_rwlock_t* l = (os_rwlock_t*)GC_MALLOC(sizeof(os_rwlock_t));
    os_rwlock_init(l);
    return (void*)l;
}

void nyx_rwlock_rdlock(void* l) {
    if (l) os_rwlock_rdlock((os_rwlock_t*)l);
}

void nyx_rwlock_wrlock(void* l) {
    if (l) os_rwlock_wrlock((os_rwlock_t*)l);
}

int64_t nyx_rwlock_tryrdlock(void* l) {
    if (!l) return 1;
    return os_rwlock_tryrdlock((os_rwlock_t*)l) == 0 ? 0 : 1;
}

int64_t nyx_rwlock_trywrlock(void* l) {
    if (!l) return 1;
    return os_rwlock_trywrlock((os_rwlock_t*)l) == 0 ? 0 : 1;
}

void nyx_rwlock_unlock(void* l) {
    if (l) os_rwlock_unlock((os_rwlock_t*)l);
}

void nyx_rwlock_destroy(void* l) {
    if (l) os_rwlock_destroy((os_rwlock_t*)l);
}

// ===== CHANNEL =====

typedef struct {
    int64_t* buffer;
    int64_t capacity;
    int64_t head;
    int64_t tail;
    int64_t count;
    os_mutex_t lock;
    os_cond_t not_empty;
    os_cond_t not_full;
} nyx_channel_t;

void* nyx_channel_new(int64_t capacity) {
    if (capacity <= 0) capacity = 64;
    nyx_channel_t* ch = (nyx_channel_t*)GC_MALLOC(sizeof(nyx_channel_t));
    ch->buffer = (int64_t*)GC_MALLOC(sizeof(int64_t) * capacity);
    ch->capacity = capacity;
    ch->head = 0;
    ch->tail = 0;
    ch->count = 0;
    os_mutex_init(&ch->lock);
    os_cond_init(&ch->not_empty);
    os_cond_init(&ch->not_full);
    return (void*)ch;
}

void nyx_channel_send(void* handle, int64_t val) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return;

    os_mutex_lock(&ch->lock);
    while (ch->count >= ch->capacity) {
        os_cond_wait(&ch->not_full, &ch->lock);
    }
    ch->buffer[ch->tail] = val;
    ch->tail = (ch->tail + 1) % ch->capacity;
    ch->count++;
    os_cond_signal(&ch->not_empty);
    os_mutex_unlock(&ch->lock);
}

int64_t nyx_channel_recv(void* handle) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return 0;

    os_mutex_lock(&ch->lock);
    while (ch->count <= 0) {
        os_cond_wait(&ch->not_empty, &ch->lock);
    }
    int64_t val = ch->buffer[ch->head];
    ch->head = (ch->head + 1) % ch->capacity;
    ch->count--;
    os_cond_signal(&ch->not_full);
    os_mutex_unlock(&ch->lock);
    return val;
}

// Non-blocking receive: returns value if available, -1 if empty
int64_t nyx_channel_try_recv(void* handle) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return -1;

    os_mutex_lock(&ch->lock);
    if (ch->count <= 0) {
        os_mutex_unlock(&ch->lock);
        return -1;
    }
    int64_t val = ch->buffer[ch->head];
    ch->head = (ch->head + 1) % ch->capacity;
    ch->count--;
    os_cond_signal(&ch->not_full);
    os_mutex_unlock(&ch->lock);
    return val;
}

void nyx_channel_destroy(void* handle) {
    nyx_channel_t* ch = (nyx_channel_t*)handle;
    if (!ch) return;
    os_mutex_destroy(&ch->lock);
    os_cond_destroy(&ch->not_empty);
    os_cond_destroy(&ch->not_full);
}
