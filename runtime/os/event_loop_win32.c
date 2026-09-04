// runtime/os/event_loop_win32.c — event loop MÍNIMO para win32 (W3 Task 4):
// SOLO timers. Reemplaza a runtime/event_loop.c en el link de Windows
// (aquel es posix puro: epoll/poll/pipe/fcntl — su port real es IOCP, W4).
//
// ES: alcance deliberado y medido contra los consumidores REALES:
//  - scheduler.c es el ÚNICO TU que consume este API (verificado por grep en
//    Task 4), y usa: create/destroy/add_timer/run_once (camino de
//    nyx_goroutine_sleep + poller designado) y add/remove (camino de
//    nyx_goroutine_block_on_fd — I/O de red, INALCANZABLE en win32 hasta W4:
//    los os_sock_* son -ENOSYS).
//  - Los timers son OBLIGATORIOS ya: sleep() dentro de una goroutine registra
//    un timer one-shot y se suspende — con un loop nulo la goroutine no
//    despierta jamás (test-243 lo ejercita).
//  - Semántica calcada de event_loop.c: slots con reuso, one-shot desactivado
//    BAJO el lock (no puede doble-disparar entre run_once concurrentes),
//    snapshot-then-dispatch (wake_cb re-toma el lock vía remove — despachar
//    con el lock tomado sería self-deadlock), timeout efectivo = min(caller,
//    deadline más próximo - now).
//  - La espera es os_sleep_ms: sin fds no hay nada que la interrumpa. Un
//    timer agregado DURANTE la espera del poller puede disparar hasta
//    NYX_POLLER_TICK_MS (10 ms) + granularidad de Sleep (~15.6 ms) tarde —
//    jitter aceptado y documentado; IOCP (W4) lo elimina de raíz
//    (PostQueuedCompletionStatus despierta el wait).
// EN: deliberately minimal, measured against the REAL consumers: scheduler.c
// is the only TU consuming this API; timers are mandatory NOW (a sleeping
// goroutine never wakes with a null loop), fd paths are unreachable until W4
// (os_sock_* are -ENOSYS) and stubbed loudly. Semantics mirror event_loop.c:
// slot reuse, one-shot deactivation UNDER the lock, snapshot-then-dispatch,
// effective timeout = min(caller, soonest deadline). The wait is os_sleep_ms
// (nothing can interrupt it without fds): a timer added DURING the poller's
// wait can fire up to tick+Sleep-granularity late — accepted jitter; IOCP
// (W4) removes it for real.
#include "../event_loop.h"
#include "nyx_os.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define EVW_MAX_SLOTS 256   // paridad con MAX_FDS de event_loop.c

typedef struct {
    int active;
    long long deadline_ms;
    nyx_ev_callback cb;
    void* userdata;
} EvwTimer;

struct NyxEventLoop {
    os_mutex_t lock;
    EvwTimer timers[EVW_MAX_SLOTS];
    int count;
};

static long long evw_now_ms(void) {
    return (long long)(os_monotonic_ns() / 1000000);
}

NyxEventLoop* nyx_event_loop_create(void) {
    NyxEventLoop* loop = (NyxEventLoop*)calloc(1, sizeof(NyxEventLoop));
    if (!loop) return NULL;
    os_mutex_init(&loop->lock);
    return loop;
}

void nyx_event_loop_destroy(NyxEventLoop* loop) {
    if (!loop) return;
    os_mutex_destroy(&loop->lock);
    free(loop);
}

// fd events = I/O de red: INALCANZABLE hasta W4 (os_sock_* son -ENOSYS en
// win32). -1 ruidoso, no mudo: si algo llega acá antes de IOCP, es un bug de
// secuenciamiento del arco, no un degradado aceptable. OJO consecuencia real
// (review Task 4): nyx_goroutine_block_on_fd IGNORA este retorno y hace el
// swap igual — la goroutine queda BLOCKED para siempre (cuelgue, no error).
// W4 debe cablear el retorno además de implementar IOCP.
// EN: fd events are W4 (IOCP); unreachable today. Loud -1, not silent. Real
// consequence (Task 4 review): block_on_fd ignores this return and swaps
// anyway — the goroutine hangs forever. W4 must wire the return too.
int nyx_event_loop_add(NyxEventLoop* loop, int fd, int events, nyx_ev_callback cb, void* userdata) {
    (void)loop; (void)events; (void)cb; (void)userdata;
    fprintf(stderr, "[nyx] event_loop win32: fd events no implementados (fd=%d) — W4/IOCP\n", fd);
    return -1;
}
int nyx_event_loop_modify(NyxEventLoop* loop, int fd, int events) {
    (void)loop; (void)fd; (void)events;
    return -1;
}
int nyx_event_loop_remove(NyxEventLoop* loop, int fd) {
    // wake_cb lo llama solo para fd >= 0 (los timers pasan fd=-1); sin fds
    // registrados nunca hay nada que remover. 0 para no inventar un error en
    // un no-op. / wake_cb only calls this for fd >= 0; nothing to remove.
    (void)loop; (void)fd;
    return 0;
}

int nyx_event_loop_add_timer(NyxEventLoop* loop, int delay_ms, nyx_ev_callback cb, void* userdata) {
    if (!loop || !cb) return -1;
    os_mutex_lock(&loop->lock);
    int slot = -1;
    // Reuso de slots desactivados (misma lección que event_loop.c: sin reuso,
    // los one-shot agotan el array de por vida). / slot reuse, same lesson.
    for (int i = 0; i < loop->count; i++) {
        if (!loop->timers[i].active) { slot = i; break; }
    }
    if (slot < 0) {
        if (loop->count >= EVW_MAX_SLOTS) {
            os_mutex_unlock(&loop->lock);
            fprintf(stderr, "[nyx] event_loop win32: sin slots de timer (%d)\n", EVW_MAX_SLOTS);
            return -1;
        }
        slot = loop->count++;
    }
    loop->timers[slot].deadline_ms = evw_now_ms() + delay_ms;
    loop->timers[slot].cb = cb;
    loop->timers[slot].userdata = userdata;
    loop->timers[slot].active = 1;
    os_mutex_unlock(&loop->lock);
    return 0;
}

int nyx_event_loop_run_once(NyxEventLoop* loop, int timeout_ms) {
    if (!loop) return -1;

    // 1) timeout efectivo = min(caller, deadline más próximo - now), >= 0 —
    //    idéntico a event_loop.c (un timer no puede morir de hambre detrás de
    //    un timeout largo). / effective timeout, mirrors event_loop.c.
    long long soonest = -1;
    os_mutex_lock(&loop->lock);
    for (int i = 0; i < loop->count; i++) {
        if (loop->timers[i].active &&
            (soonest < 0 || loop->timers[i].deadline_ms < soonest)) {
            soonest = loop->timers[i].deadline_ms;
        }
    }
    os_mutex_unlock(&loop->lock);

    long long eff = timeout_ms;
    if (soonest >= 0) {
        long long d = soonest - evw_now_ms();
        if (d < 0) d = 0;
        if (eff < 0 || d < eff) eff = d;
    }

    // 2) esperar. Sin fds, la única señal es el paso del tiempo. Un timeout
    //    negativo (bloquear para siempre) sin ningún timer activo sería un
    //    cuelgue: clampear al tick razonable más chico y volver (el poller
    //    del scheduler llama en loop igual). / wait; a forever-block with no
    //    timers would hang — clamp and return (the poller loops anyway).
    if (eff < 0) eff = 10;
    if (eff > 0) os_sleep_ms(eff);

    // 3) snapshot-then-dispatch bajo el lock, one-shot desactivado ANTES de
    //    despachar — no puede doble-disparar entre run_once concurrentes, y
    //    wake_cb (que re-toma el lock vía remove) no se self-deadlockea.
    //    / snapshot under the lock, deactivate before dispatch.
    struct { nyx_ev_callback cb; void* ud; } snap[EVW_MAX_SLOTS];
    int snap_count = 0;
    long long tnow = evw_now_ms();
    os_mutex_lock(&loop->lock);
    for (int i = 0; i < loop->count; i++) {
        if (loop->timers[i].active && loop->timers[i].deadline_ms <= tnow) {
            snap[snap_count].cb = loop->timers[i].cb;
            snap[snap_count].ud = loop->timers[i].userdata;
            snap_count++;
            loop->timers[i].active = 0;
        }
    }
    os_mutex_unlock(&loop->lock);

    // 4) despacho FUERA del lock; fd=-1 marca "timer" (contrato de wake_cb).
    //    / dispatch outside the lock; fd=-1 marks a timer firing.
    int fired = 0;
    for (int i = 0; i < snap_count; i++) {
        if (snap[i].cb) snap[i].cb(-1, 0, snap[i].ud);
        fired++;
    }
    return fired;
}
