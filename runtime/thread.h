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
