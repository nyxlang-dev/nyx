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
#include <pthread.h>

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
    // Guards fds[]/fd_count. The scheduler bridge (T5a.2b) will make the
    // loop multi-threaded (workers registering/removing fds concurrently
    // with the thread running run_once), so this lock is needed even
    // though the current single-threaded tests don't stress it.
    pthread_mutex_t lock;
};

// One dispatch-ready entry captured under loop->lock before invoking any
// callback. fd == -1 marks a timer firing (matches the "no real fd" case).
typedef struct {
    nyx_ev_callback cb;
    void* userdata;
    int fd;
    int ev;
} DispatchEntry;

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
    pthread_mutex_init(&loop->lock, NULL);
    return loop;
}

void nyx_event_loop_destroy(NyxEventLoop* loop) {
    if (!loop) return;
#if HAS_EPOLL
    close(loop->epfd);
#endif
    pthread_mutex_destroy(&loop->lock);
    free(loop);
}

int nyx_event_loop_add(NyxEventLoop* loop, int fd, int events,
                        nyx_ev_callback cb, void* userdata) {
    if (!loop || fd < 0) return -1;
    pthread_mutex_lock(&loop->lock);
    // Reclamar un slot inactivo antes de crecer fd_count: los slots de fd/timer
    // desactivados (remove / expiración de timer one-shot) no se compactaban, así
    // que fd_count solo crecía y tras MAX_FDS registros de por vida add fallaba en
    // silencio → una goroutine bloqueada en el bridge parkeaba para siempre.
    int slot = -1;
    for (int i = 0; i < loop->fd_count; i++) {
        if (!loop->fds[i].active) { slot = i; break; }
    }
    if (slot < 0) {
        if (loop->fd_count >= MAX_FDS) {
            pthread_mutex_unlock(&loop->lock);
            return -1;
        }
        slot = loop->fd_count++;
    }
    loop->fds[slot].fd = fd;
    loop->fds[slot].events = events;
    loop->fds[slot].cb = cb;
    loop->fds[slot].userdata = userdata;
    loop->fds[slot].active = 1;
    loop->fds[slot].is_timer = 0;

#if HAS_EPOLL
    struct epoll_event ev;
    ev.data.fd = fd;
    ev.events = 0;
    if (events & NYX_EV_READ)  ev.events |= EPOLLIN;
    if (events & NYX_EV_WRITE) ev.events |= EPOLLOUT;
    epoll_ctl(loop->epfd, EPOLL_CTL_ADD, fd, &ev);
#endif
    pthread_mutex_unlock(&loop->lock);
    return 0;
}

int nyx_event_loop_modify(NyxEventLoop* loop, int fd, int events) {
    if (!loop || fd < 0) return -1;
    pthread_mutex_lock(&loop->lock);
    int result = -1;
    for (int i = 0; i < loop->fd_count; i++) {
        if (loop->fds[i].fd == fd && loop->fds[i].active && !loop->fds[i].is_timer) {
            loop->fds[i].events = events;
#if HAS_EPOLL
            struct epoll_event ev;
            ev.data.fd = fd;
            ev.events = 0;
            if (events & NYX_EV_READ)  ev.events |= EPOLLIN;
            if (events & NYX_EV_WRITE) ev.events |= EPOLLOUT;
            epoll_ctl(loop->epfd, EPOLL_CTL_MOD, fd, &ev);
#endif
            result = 0;
            break;
        }
    }
    pthread_mutex_unlock(&loop->lock);
    return result;
}

// One-shot timer: fires cb once after delay_ms, then deactivates itself.
// Stored as an fds[] entry with fd=-1/events=0/is_timer=1 so it shares the
// slot table with fd-based entries; run_once scans it separately from epoll.
int nyx_event_loop_add_timer(NyxEventLoop* loop, int delay_ms, nyx_ev_callback cb, void* userdata) {
    if (!loop) return -1;
    pthread_mutex_lock(&loop->lock);
    // Reusar slot inactivo (ver nota en nyx_event_loop_add) — sin esto, los timers
    // one-shot agotan fd_count y add_timer falla en silencio.
    int slot = -1;
    for (int i = 0; i < loop->fd_count; i++) {
        if (!loop->fds[i].active) { slot = i; break; }
    }
    if (slot < 0) {
        if (loop->fd_count >= MAX_FDS) {
            pthread_mutex_unlock(&loop->lock);
            return -1;
        }
        slot = loop->fd_count++;
    }
    loop->fds[slot].fd = -1;
    loop->fds[slot].events = 0;
    loop->fds[slot].cb = cb;
    loop->fds[slot].userdata = userdata;
    loop->fds[slot].active = 1;
    loop->fds[slot].is_timer = 1;
    loop->fds[slot].timer_deadline_ms = now_ms() + delay_ms;
    pthread_mutex_unlock(&loop->lock);
    return 0;
}

int nyx_event_loop_remove(NyxEventLoop* loop, int fd) {
    if (!loop) return -1;
    pthread_mutex_lock(&loop->lock);
    int result = -1;
    for (int i = 0; i < loop->fd_count; i++) {
        if (loop->fds[i].fd == fd && loop->fds[i].active) {
            loop->fds[i].active = 0;
#if HAS_EPOLL
            epoll_ctl(loop->epfd, EPOLL_CTL_DEL, fd, NULL);
#endif
            result = 0;
            break;
        }
    }
    pthread_mutex_unlock(&loop->lock);
    return result;
}

int nyx_event_loop_run_once(NyxEventLoop* loop, int timeout_ms) {
    if (!loop) return -1;
    int fired = 0;

    // 1) Effective timeout = min(caller timeout, soonest active timer
    //    deadline - now), clamped to >= 0. Otherwise a timer could be
    //    starved by a longer/blocking caller timeout (or fire "late" by
    //    up to timeout_ms).
    long long soonest = -1;
    pthread_mutex_lock(&loop->lock);
    for (int i = 0; i < loop->fd_count; i++) {
        if (loop->fds[i].active && loop->fds[i].is_timer) {
            if (soonest < 0 || loop->fds[i].timer_deadline_ms < soonest) {
                soonest = loop->fds[i].timer_deadline_ms;
            }
        }
    }
    pthread_mutex_unlock(&loop->lock);

    int eff_timeout = timeout_ms;
    if (soonest >= 0) {
        long long d = soonest - now_ms();
        if (d < 0) d = 0;
        if (eff_timeout < 0 || d < eff_timeout) eff_timeout = (int)d;
    }

    // 2) Wait for I/O readiness (or the timer-driven timeout).
    DispatchEntry snapshot[MAX_EVENTS + MAX_FDS];
    int snap_count = 0;

#if HAS_EPOLL
    struct epoll_event events[MAX_EVENTS];
    int n = epoll_wait(loop->epfd, events, MAX_EVENTS, eff_timeout);
#else
    struct pollfd pfds[MAX_FDS];
    int pfd_fd[MAX_FDS];
    int cnt = 0;
    pthread_mutex_lock(&loop->lock);
    for (int i = 0; i < loop->fd_count; i++) {
        if (!loop->fds[i].active || loop->fds[i].is_timer) continue;
        pfds[cnt].fd = loop->fds[i].fd;
        pfds[cnt].events = 0;
        if (loop->fds[i].events & NYX_EV_READ)  pfds[cnt].events |= POLLIN;
        if (loop->fds[i].events & NYX_EV_WRITE) pfds[cnt].events |= POLLOUT;
        pfds[cnt].revents = 0;
        pfd_fd[cnt] = loop->fds[i].fd;
        cnt++;
    }
    pthread_mutex_unlock(&loop->lock);
    int n = poll(pfds, cnt, eff_timeout);
    if (n < 0) n = 0;
#endif

    // 3) Snapshot-then-dispatch: under the lock, resolve ready fds/timers to
    // callback+userdata copies WITHOUT invoking anything. This is mandatory
    // once the scheduler bridge (T5a.2b) lands: its wake_cb calls
    // nyx_event_loop_remove(), which re-takes loop->lock — dispatching while
    // still holding the lock here would self-deadlock. It also avoids
    // iterating fds[] while a concurrent worker thread mutates it.
    pthread_mutex_lock(&loop->lock);

#if HAS_EPOLL
    for (int i = 0; i < n; i++) {
        int fd = events[i].data.fd;
        int ev = 0;
        if (events[i].events & EPOLLIN)  ev |= NYX_EV_READ;
        if (events[i].events & EPOLLOUT) ev |= NYX_EV_WRITE;
        if (events[i].events & EPOLLERR) ev |= NYX_EV_ERROR;

        loop->last_event_fd = fd;
        loop->last_events = ev;

        for (int j = 0; j < loop->fd_count; j++) {
            if (loop->fds[j].fd == fd && loop->fds[j].active && !loop->fds[j].is_timer) {
                snapshot[snap_count].cb = loop->fds[j].cb;
                snapshot[snap_count].userdata = loop->fds[j].userdata;
                snapshot[snap_count].fd = fd;
                snapshot[snap_count].ev = ev;
                snap_count++;
                break;
            }
        }
    }
#else
    for (int i = 0; i < cnt && n > 0; i++) {
        if (pfds[i].revents == 0) continue;
        int fd = pfd_fd[i];
        int ev = 0;
        if (pfds[i].revents & POLLIN)  ev |= NYX_EV_READ;
        if (pfds[i].revents & POLLOUT) ev |= NYX_EV_WRITE;
        if (pfds[i].revents & POLLERR) ev |= NYX_EV_ERROR;
        loop->last_event_fd = fd;
        loop->last_events = ev;
        for (int j = 0; j < loop->fd_count; j++) {
            if (loop->fds[j].fd == fd && loop->fds[j].active && !loop->fds[j].is_timer) {
                snapshot[snap_count].cb = loop->fds[j].cb;
                snapshot[snap_count].userdata = loop->fds[j].userdata;
                snapshot[snap_count].fd = fd;
                snapshot[snap_count].ev = ev;
                snap_count++;
                break;
            }
        }
    }
#endif

    // Timers: one-shot, deactivate now (under the lock) so they can't
    // double-fire across concurrent run_once calls, then queue for dispatch.
    long long tnow = now_ms();
    for (int i = 0; i < loop->fd_count; i++) {
        if (loop->fds[i].active && loop->fds[i].is_timer &&
            loop->fds[i].timer_deadline_ms <= tnow) {
            snapshot[snap_count].cb = loop->fds[i].cb;
            snapshot[snap_count].userdata = loop->fds[i].userdata;
            snapshot[snap_count].fd = -1;
            snapshot[snap_count].ev = 0;
            snap_count++;
            loop->fds[i].active = 0;
        }
    }

    pthread_mutex_unlock(&loop->lock);

    // 4) Dispatch outside the lock.
    for (int i = 0; i < snap_count; i++) {
        if (snapshot[i].cb) {
            snapshot[i].cb(snapshot[i].fd, snapshot[i].ev, snapshot[i].userdata);
        }
        fired++;
    }

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
