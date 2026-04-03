#ifndef NYX_EVENT_LOOP_H
#define NYX_EVENT_LOOP_H

#include <stdint.h>
#include "strings.h"

// Opaque event loop handle
typedef struct NyxEventLoop NyxEventLoop;

// Event flags
#define NYX_EV_READ   0x01
#define NYX_EV_WRITE  0x02
#define NYX_EV_ERROR  0x04

// Callback type: (fd, events, userdata) -> void
typedef void (*nyx_ev_callback)(int fd, int events, void* userdata);

// Create/destroy event loop
NyxEventLoop* nyx_event_loop_create(void);
void          nyx_event_loop_destroy(NyxEventLoop* loop);

// Add/modify/remove fd
int nyx_event_loop_add(NyxEventLoop* loop, int fd, int events, nyx_ev_callback cb, void* userdata);
int nyx_event_loop_modify(NyxEventLoop* loop, int fd, int events);
int nyx_event_loop_remove(NyxEventLoop* loop, int fd);

// Run one iteration, up to timeout_ms (-1 = block forever)
// Returns number of events fired, or -1 on error
int nyx_event_loop_run_once(NyxEventLoop* loop, int timeout_ms);

// Create a non-blocking fd pair (pipe)
int nyx_pipe_create(int* read_fd, int* write_fd);
int nyx_pipe_write(int fd, const char* data, int len);
int nyx_pipe_read(int fd, char* buf, int bufsize);
void nyx_pipe_close(int fd);

// Async timer: fire callback after delay_ms (approximate)
int nyx_event_loop_add_timer(NyxEventLoop* loop, int delay_ms, nyx_ev_callback cb, void* userdata);

// Nyx runtime bridge (called from Nyx code)
void* nyx_create_event_loop(void);
void  nyx_destroy_event_loop(void* loop);
int   nyx_event_loop_wait(void* loop, int timeout_ms);
int   nyx_ev_create_pipe(void);   // returns read_fd; write_fd = read_fd + 1 (stored internally)
void       nyx_ev_write_pipe(int write_fd, nyx_string* msg);
nyx_string* nyx_ev_read_pipe(int read_fd);
void  nyx_ev_close_pipe(int fd);
int   nyx_ev_register_fd(void* loop, int fd, int events);
void  nyx_ev_unregister_fd(void* loop, int fd);
int   nyx_ev_last_event_fd(void* loop);
int   nyx_ev_last_events(void* loop);

#endif // NYX_EVENT_LOOP_H
