// runtime/event_loop.c — Epoll-based event loop for Nyx (v4.0.0)
// Provides async I/O primitives using Linux epoll

#include "event_loop.h"
#include "strings.h"
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <time.h>

#ifdef __linux__
#include <sys/epoll.h>
#define HAS_EPOLL 1
#else
// Fallback: poll-based for non-Linux
#include <poll.h>
#define HAS_EPOLL 0
#endif

#define MAX_EVENTS 64
#define MAX_FDS    256

typedef struct {
    int fd;
    int events;
    nyx_ev_callback cb;
    void* userdata;
    int active;
    int is_timer;
    long long timer_deadline_ms;
} FdEntry;

struct NyxEventLoop {
#if HAS_EPOLL
    int epfd;
#endif
    FdEntry fds[MAX_FDS];
    int fd_count;
    int last_event_fd;
    int last_events;
};

// Get current time in ms
static long long now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

NyxEventLoop* nyx_event_loop_create(void) {
    NyxEventLoop* loop = (NyxEventLoop*)calloc(1, sizeof(NyxEventLoop));
    if (!loop) return NULL;
#if HAS_EPOLL
    loop->epfd = epoll_create1(EPOLL_CLOEXEC);
    if (loop->epfd < 0) { free(loop); return NULL; }
#endif
    loop->last_event_fd = -1;
    loop->last_events = 0;
    return loop;
}

void nyx_event_loop_destroy(NyxEventLoop* loop) {
    if (!loop) return;
#if HAS_EPOLL
    close(loop->epfd);
#endif
    free(loop);
}

int nyx_event_loop_add(NyxEventLoop* loop, int fd, int events,
                        nyx_ev_callback cb, void* userdata) {
    if (!loop || fd < 0 || loop->fd_count >= MAX_FDS) return -1;

    int slot = loop->fd_count++;
    loop->fds[slot].fd = fd;
    loop->fds[slot].events = events;
    loop->fds[slot].cb = cb;
    loop->fds[slot].userdata = userdata;
    loop->fds[slot].active = 1;

#if HAS_EPOLL
    struct epoll_event ev;
    ev.data.fd = fd;
    ev.events = 0;
    if (events & NYX_EV_READ)  ev.events |= EPOLLIN;
    if (events & NYX_EV_WRITE) ev.events |= EPOLLOUT;
    epoll_ctl(loop->epfd, EPOLL_CTL_ADD, fd, &ev);
#endif
    return 0;
}

int nyx_event_loop_remove(NyxEventLoop* loop, int fd) {
    if (!loop) return -1;
    for (int i = 0; i < loop->fd_count; i++) {
        if (loop->fds[i].fd == fd && loop->fds[i].active) {
            loop->fds[i].active = 0;
#if HAS_EPOLL
            epoll_ctl(loop->epfd, EPOLL_CTL_DEL, fd, NULL);
#endif
            return 0;
        }
    }
    return -1;
}

int nyx_event_loop_run_once(NyxEventLoop* loop, int timeout_ms) {
    if (!loop) return -1;
    int fired = 0;

#if HAS_EPOLL
    struct epoll_event events[MAX_EVENTS];
    int n = epoll_wait(loop->epfd, events, MAX_EVENTS, timeout_ms);
    for (int i = 0; i < n; i++) {
        int fd = events[i].data.fd;
        int ev = 0;
        if (events[i].events & EPOLLIN)  ev |= NYX_EV_READ;
        if (events[i].events & EPOLLOUT) ev |= NYX_EV_WRITE;
        if (events[i].events & EPOLLERR) ev |= NYX_EV_ERROR;

        loop->last_event_fd = fd;
        loop->last_events = ev;

        for (int j = 0; j < loop->fd_count; j++) {
            if (loop->fds[j].fd == fd && loop->fds[j].active) {
                if (loop->fds[j].cb) {
                    loop->fds[j].cb(fd, ev, loop->fds[j].userdata);
                }
                fired++;
                break;
            }
        }
    }
#else
    // Fallback: poll
    struct pollfd pfds[MAX_FDS];
    int cnt = 0;
    for (int i = 0; i < loop->fd_count; i++) {
        if (!loop->fds[i].active) continue;
        pfds[cnt].fd = loop->fds[i].fd;
        pfds[cnt].events = 0;
        if (loop->fds[i].events & NYX_EV_READ)  pfds[cnt].events |= POLLIN;
        if (loop->fds[i].events & NYX_EV_WRITE) pfds[cnt].events |= POLLOUT;
        pfds[cnt].revents = 0;
        cnt++;
    }
    int n = poll(pfds, cnt, timeout_ms);
    for (int i = 0; i < cnt && n > 0; i++) {
        if (pfds[i].revents == 0) continue;
        int fd = pfds[i].fd;
        int ev = 0;
        if (pfds[i].revents & POLLIN)  ev |= NYX_EV_READ;
        if (pfds[i].revents & POLLOUT) ev |= NYX_EV_WRITE;
        if (pfds[i].revents & POLLERR) ev |= NYX_EV_ERROR;
        loop->last_event_fd = fd;
        loop->last_events = ev;
        for (int j = 0; j < loop->fd_count; j++) {
            if (loop->fds[j].fd == fd && loop->fds[j].active) {
                if (loop->fds[j].cb) loop->fds[j].cb(fd, ev, loop->fds[j].userdata);
                fired++;
                break;
            }
        }
    }
#endif
    return fired;
}

// === Pipe helpers ===

int nyx_pipe_create(int* read_fd, int* write_fd) {
    int fds[2];
    if (pipe(fds) < 0) return -1;
    // Make non-blocking
    fcntl(fds[0], F_SETFL, O_NONBLOCK);
    fcntl(fds[1], F_SETFL, O_NONBLOCK);
    *read_fd  = fds[0];
    *write_fd = fds[1];
    return 0;
}

int nyx_pipe_write(int fd, const char* data, int len) {
    return (int)write(fd, data, len);
}

int nyx_pipe_read(int fd, char* buf, int bufsize) {
    int n = (int)read(fd, buf, bufsize - 1);
    if (n > 0) buf[n] = '\0';
    else buf[0] = '\0';
    return n;
}

void nyx_pipe_close(int fd) {
    close(fd);
}

// === Nyx bridge (called from Nyx runtime via extern "C") ===

// Stored pipe pair for simple API
static int g_pipe_read = -1;
static int g_pipe_write = -1;

void* nyx_create_event_loop(void) {
    return (void*)nyx_event_loop_create();
}

void nyx_destroy_event_loop(void* loop) {
    nyx_event_loop_destroy((NyxEventLoop*)loop);
}

int nyx_event_loop_wait(void* loop, int timeout_ms) {
    return nyx_event_loop_run_once((NyxEventLoop*)loop, timeout_ms);
}

int nyx_ev_create_pipe(void) {
    int r, w;
    if (nyx_pipe_create(&r, &w) < 0) return -1;
    g_pipe_read  = r;
    g_pipe_write = w;
    return r;
}

void nyx_ev_write_pipe(int write_fd, nyx_string* msg) {
    if (!msg || !msg->data) return;
    int len = (int)strlen(msg->data);
    write(write_fd, msg->data, len);
}

nyx_string* nyx_ev_read_pipe(int read_fd) {
    static char buf[4096];
    int n = (int)read(read_fd, buf, sizeof(buf) - 1);
    if (n > 0) buf[n] = '\0';
    else buf[0] = '\0';
    return nyx_string_from_cstr(buf);
}

void nyx_ev_close_pipe(int fd) {
    close(fd);
}

int nyx_ev_register_fd(void* loop, int fd, int events) {
    return nyx_event_loop_add((NyxEventLoop*)loop, fd, events, NULL, NULL);
}

void nyx_ev_unregister_fd(void* loop, int fd) {
    nyx_event_loop_remove((NyxEventLoop*)loop, fd);
}

int nyx_ev_last_event_fd(void* loop) {
    if (!loop) return -1;
    return ((NyxEventLoop*)loop)->last_event_fd;
}

int nyx_ev_last_events(void* loop) {
    if (!loop) return 0;
    return ((NyxEventLoop*)loop)->last_events;
}
