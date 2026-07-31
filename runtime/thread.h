// ============================================
// THREAD.H - Threading Runtime for Nyx v5.1
// ============================================

#ifndef NYX_THREAD_H
#define NYX_THREAD_H

#include <stdint.h>

// Thread functions
int64_t nyx_thread_spawn(void* closure_pair);
int64_t nyx_thread_join(int64_t handle);

// Mutex functions
void* nyx_mutex_new(void);
void nyx_mutex_lock(void* mutex);
void nyx_mutex_unlock(void* mutex);
void nyx_mutex_destroy(void* mutex);

// Condition variable functions (CLOCK_MONOTONIC clocked; wait/timedwait block the
// OS THREAD, like mutex_lock/channel_recv — goroutines should prefer channels).
// The caller MUST hold `mutex` locked when calling wait/timedwait (pthread contract).
void* nyx_condvar_new(void);
void nyx_condvar_wait(void* cv, void* mutex);
void nyx_condvar_signal(void* cv);
void nyx_condvar_broadcast(void* cv);
int64_t nyx_condvar_timedwait(void* cv, void* mutex, int64_t timeout_ms);  // 0=signaled, 1=timeout

// RWLock multi-reader/single-writer (bloquea el OS thread, como mutex)
void* nyx_rwlock_new(void);
void nyx_rwlock_rdlock(void* l);
void nyx_rwlock_wrlock(void* l);
int64_t nyx_rwlock_tryrdlock(void* l);   // 0=adquirido, 1=ocupado/NULL
int64_t nyx_rwlock_trywrlock(void* l);   // 0=adquirido, 1=ocupado/NULL
void nyx_rwlock_unlock(void* l);
void nyx_rwlock_destroy(void* l);

// Channel functions (bounded FIFO queue with blocking send/recv)
void* nyx_channel_new(int64_t capacity);
void nyx_channel_send(void* ch, int64_t val);
int64_t nyx_channel_recv(void* ch);
int64_t nyx_channel_try_recv(void* ch);  // non-blocking: returns value or -1
void nyx_channel_destroy(void* ch);

// Async executor (v7.4)
void    nyx_task_cancel(int64_t handle);
int64_t nyx_task_race(int64_t h1, int64_t h2);

#endif // NYX_THREAD_H
