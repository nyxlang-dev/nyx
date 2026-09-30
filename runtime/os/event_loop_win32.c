// runtime/os/event_loop_win32.c — event loop de win32: adaptador FINO del API
// interno de scheduler.c (runtime/event_loop.h) sobre os_ev (IOCP, os_win32.c).
// Reemplaza a runtime/event_loop.c en el link de Windows (aquel es posix puro:
// epoll/poll/pipe/fcntl).
//
// ES: historia y alcance.
//  - W3 Task 4 lo dejó con timers propios en una tabla FIJA de 256 y la espera
//    en os_sleep_ms. W4 Task 5 (spike 2026-09-29-w4-iocp-vs-readiness) mueve
//    todo a os_ev: la tabla crece (el techo fijo era el muro de test-411) y la
//    espera es un completion port que os_ev_timer despierta — un timer nuevo
//    más corto ya no espera al fin del wait del poller.
//  - Solo timers. Readiness de fds NO se emula sobre IOCP (decisión de la
//    Task 2): la E/S de goroutinas entra por os_ev_read/os_ev_write. add/modify
//    siguen devolviendo -1 ruidoso, y nyx_goroutine_block_on_fd ya propaga ese
//    -1 en vez de colgarse (W4 Task 4).
//  - Adaptación de callbacks: event_loop.h despacha cb(fd, events, ud) con
//    fd=-1 para timers; os_ev despacha cb(result, ud). Cada timer lleva un
//    registro chico (calloc, liberado al disparar) que hace el puente. Es
//    memoria invisible para Boehm, igual que la tabla de antes: el ud (la
//    goroutina) lo retiene el registry del scheduler, que es el contrato.
// EN: thin adapter of scheduler.c's internal API (event_loop.h) over os_ev
// (IOCP). W3 left a fixed 256-slot timer table and an os_sleep_ms wait; W4
// Task 5 moves it to os_ev (growing table, interruptible wait). Timers only:
// fd readiness is NOT emulated over IOCP (Task 2 decision). Each timer carries
// a small calloc'd bridge record, freed when it fires.
#include "../event_loop.h"
#include "nyx_os.h"
#include <stdlib.h>
#include <stdio.h>

struct NyxEventLoop {
    os_ev_loop_t* ev;
};

typedef struct {
    nyx_ev_callback cb;
    void* userdata;
} EvwTimerBridge;

static void evw_timer_fire(int64_t result, void* ud) {
    (void)result;
    EvwTimerBridge* b = (EvwTimerBridge*)ud;
    nyx_ev_callback cb = b->cb;
    void* userdata = b->userdata;
    free(b);                       // antes del cb: el cb puede no volver pronto
    cb(-1, 0, userdata);           // fd=-1 marca "timer" (contrato de wake_cb)
}

NyxEventLoop* nyx_event_loop_create(void) {
    NyxEventLoop* loop = (NyxEventLoop*)calloc(1, sizeof(NyxEventLoop));
    if (!loop) return NULL;
    loop->ev = os_ev_loop_new();
    if (!loop->ev) { free(loop); return NULL; }
    return loop;
}

void nyx_event_loop_destroy(NyxEventLoop* loop) {
    // Los puentes de timers aún pendientes se pierden con el loop (os_ev
    // descarta lo pendiente sin correr cbs): solo pasa al apagar el scheduler.
    if (!loop) return;
    os_ev_loop_free(loop->ev);
    free(loop);
}

// fd events: la readiness no se emula sobre IOCP (Task 2). -1 ruidoso.
int nyx_event_loop_add(NyxEventLoop* loop, int fd, int events, nyx_ev_callback cb, void* userdata) {
    (void)loop; (void)events; (void)cb; (void)userdata;
    fprintf(stderr, "[nyx] event_loop win32: readiness de fds no soportada (fd=%d) — usar os_ev_read/os_ev_write\n", fd);
    return -1;
}
int nyx_event_loop_modify(NyxEventLoop* loop, int fd, int events) {
    (void)loop; (void)fd; (void)events;
    return -1;
}
int nyx_event_loop_remove(NyxEventLoop* loop, int fd) {
    // wake_cb lo llama solo para fd >= 0; sin fds registrados es un no-op.
    (void)loop; (void)fd;
    return 0;
}

int nyx_event_loop_add_timer(NyxEventLoop* loop, int delay_ms, nyx_ev_callback cb, void* userdata) {
    if (!loop || !cb) return -1;
    EvwTimerBridge* b = (EvwTimerBridge*)malloc(sizeof(EvwTimerBridge));
    if (!b) return -1;
    b->cb = cb;
    b->userdata = userdata;
    int rc = os_ev_timer(loop->ev, delay_ms, evw_timer_fire, b);
    if (rc < 0) {
        // Techo de OS_EV_W32_MAX_TIMERS (65536) o sin memoria: el scheduler
        // cae a su fallback (dormir de verdad). Ruidoso, como antes.
        free(b);
        fprintf(stderr, "[nyx] event_loop win32: os_ev_timer fallo (%d)\n", rc);
        return -1;
    }
    return 0;
}

int nyx_event_loop_run_once(NyxEventLoop* loop, int timeout_ms) {
    if (!loop) return -1;
    int rc = os_ev_run_once(loop->ev, timeout_ms);
    return rc < 0 ? -1 : rc;
}
