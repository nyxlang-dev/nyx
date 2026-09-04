// ============================================================
// NYX SCHEDULER — M:N Green Thread Scheduler (v2.0.0)
// ============================================================
// Implements a work-stealing scheduler for Nyx goroutines.
// Uses os_ctx_t (capa nyx_os_*) for cooperative/preemptive coroutines.
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
// W1 inc 1: threads/locks vía la capa de plataforma (ya no <pthread.h>).
// W1 inc 2: el cambio de contexto también — los `os_ctx_t` de abajo son de la
// capa (ya no `ucontext_t` POSIX crudo), y el mapeo de los stacks pasaba por
// os_vm_* (ya no mmap/mprotect/munmap directos).
// W3 ctx v2: el mapeo YA NO lo hace el scheduler — el `os_ctx_t` es dueño de
// su stack (os_ctx_make lo mapea con su guard adentro; os_ctx_stack/guard
// devuelven los rangos). El scheduler no llama más a os_vm_*.
// EN: W1 inc 1: threads/locks go through the platform layer. W1 inc 2: context
// switching too. W3 ctx v2: the scheduler no longer maps stacks — the os_ctx_t
// owns its own stack (os_ctx_make maps it with its guard inside), and the
// scheduler no longer calls os_vm_* at all.
#include "os/nyx_os.h"

// Maximum goroutines in the scheduler
#define NYX_MAX_GOROUTINES 4096
// Track 5c inc.1 (2026-08-12): default 256KB (era 64KB fijo). El stack se
// reserva con mmap RW + una GUARD PAGE PROT_NONE al fondo, así un overflow
// muere con diagnóstico en vez de pisar el heap vecino en silencio. Tuneable
// sin recompilar con NYX_GOROUTINE_STACK_KB (clamp [64KB, 8MB]).
// Spec: docs/design/specs/2026-08-11-stacks-growables-design.md
#define NYX_STACK_SIZE     (256 * 1024) // DEFAULT (no "el" tamaño: ver nyx_goroutine_stack_size)
#define NYX_STACK_MIN_KB   64
#define NYX_STACK_MAX_KB   8192
#define NYX_NUM_WORKERS    4            // default worker thread count

// Tamaño efectivo del stack (leído una vez de NYX_GOROUTINE_STACK_KB).
size_t nyx_goroutine_stack_size(void);

// Goroutine states
#define NYX_GOROUTINE_READY    0
#define NYX_GOROUTINE_RUNNING  1
#define NYX_GOROUTINE_DONE     2
#define NYX_GOROUTINE_BLOCKED  3

// Goroutine descriptor
//
// Allocation model (Track 5a.1): the struct itself is GC_MALLOC'd (never
// `free`'d) because it may hold GC-traceable pointers (closure env in `arg`,
// a GC object in `result`). It stays reachable only via the registry
// (g_reg[]/reg_next chains) while alive; once `nyx_goroutine_join` reg_removes
// it, it becomes unreachable to the collector and is eventually reclaimed.
// El stack se reserva con `mmap` RW + una GUARD multi-página `PROT_NONE` al
// fondo (Track 5c inc.1, 2026-08-12). Desde ctx v2 (W3) ese mapeo lo hace la
// CAPA, adentro de `os_ctx_make`: el `context` de abajo es DUEÑO de su stack
// (motivo: una Fiber win32 no puede adoptar un stack ajeno). Solo el área ÚTIL
// se registra como GC root (`GC_add_roots`) para que los locals de una
// goroutine suspendida se escaneen — la guard queda fuera, así el colector
// nunca la toca. El root se quita ANTES de devolver el ctx al pool (o de
// `os_ctx_free`) en `reap`.
// EN: since ctx v2 (W3) the mapping happens inside the LAYER (os_ctx_make):
// `context` below OWNS its stack (a win32 Fiber cannot adopt a foreign stack).
typedef struct NyxGoroutine {
    int            id;
    int            state;       // NYX_GOROUTINE_*
    // ctx v2: el contexto es DUEÑO de su stack (mapeo + guard adentro), y se
    // guarda POR PUNTERO, no por valor. Motivo medido: el pool de stacks pasó
    // a poolear contextos, y con el ctx embebido cada spawn+join copiaba el
    // blob opaco dos veces (4800B por copia en aarch64) — A/B de 20 000
    // spawn+join: 362ms (pool v1, puntero de stack crudo) contra 385ms
    // (+6.3%). Con el ctx por puntero el pool mueve UN puntero y la medición
    // A/B de v0.26.0 ("el pool cuesta cero") se preserva tal cual. El objeto
    // es GC_MALLOC'd: lo mantiene vivo `g` mientras la goroutine existe, y el
    // array estático del pool (que es GC root) mientras está reciclado.
    // `context == NULL` es además el flag de "ya reciclado" de `reap`.
    // EN: ctx v2: the context OWNS its stack and is held BY POINTER, not by
    // value. Measured reason: the stack pool now pools contexts, and with the
    // ctx embedded every spawn+join copied the opaque blob twice (4800B per
    // copy on aarch64) — A/B over 20 000 spawn+join: 362ms (v1 pool, raw stack
    // pointer) vs 385ms (+6.3%). By pointer the pool moves ONE pointer and
    // v0.26.0's "the pool costs nothing" measurement still holds. The object is
    // GC_MALLOC'd: kept alive by `g` while the goroutine exists and by the
    // pool's static array (a GC root) while recycled. `context == NULL` doubles
    // as reap's "already recycled" flag.
    os_ctx_t*      context;
    // CACHE del rango que `os_ctx_stack(context)` devuelve, publicado por
    // `goroutine_stack_publish` (scheduler.c) y limpiado en `reap`. NO es la
    // fuente de verdad —el ctx lo es—: existe porque `nyx_gc_sp_corrector`
    // consulta este rango con el MUNDO PARADO, donde no puede llamar a nada de
    // la capa, y porque `stack != NULL` es además el flag de "raíces
    // publicadas" del camino diferido (ver os_ctx_stack en nyx_os.h).
    // EN: CACHE of the range os_ctx_stack(context) returns — not the source of
    // truth (the ctx is). It exists because nyx_gc_sp_corrector reads this range
    // WITH THE WORLD STOPPED, where it cannot call into the layer, and because
    // `stack != NULL` doubles as the "roots published" flag of the deferred path.
    char*          stack;       // área útil del stack (GC-rooted aparte)
    size_t         stack_size;  // bytes útiles (lo que se registra como root)
    int64_t        (*fn)(void*); // function to run
    void*          arg;         // argument (closure pair)
    int64_t        result;      // return value
    struct NyxGoroutine* next;     // linked list in run queue (rq_push/rq_pop)
    struct NyxGoroutine* reg_next; // linked list in the join registry (hash chain)
    int            claimed;        // 1 once a joiner has claimed the result (prevents double-reap)
    // 1 once the OS thread that ran this goroutine has swapcontext'd BACK to
    // its own native (scheduler) stack, i.e. it is no longer executing on
    // `stack` at all. state==DONE alone is NOT enough to reap: the goroutine
    // sets DONE while still running on `stack`, immediately before its own
    // swapcontext() call back to the scheduler — that call itself still
    // needs `stack` to complete. Freeing it before stack_vacated is set is a
    // use-after-free of the currently-executing stack (reproduces reliably
    // under rapid spawn/join churn, where the freed range is immediately
    // reused for the next goroutine's stack). Set by worker_thread right
    // after its swapcontext() into the goroutine returns.
    int            stack_vacated;
    // --- Track 5a.2b: scheduler<->event-loop block/wake handshake ---
    // Which worker this goroutine was running on when it blocked (so wake_cb,
    // running on the poller's native stack, knows which run queue to requeue
    // it onto). Set right before the blocking swapcontext().
    int            home_worker;
    // woken/parked: the two halves of the block/wake handshake, both only
    // ever touched under g_block_lock (see scheduler.c). `parked` is set by
    // the worker's BLOCKED arm AFTER swapcontext() has returned there (i.e.
    // the goroutine's context is fully saved and off its stack). `woken` is
    // set by wake_cb (event-loop callback) when the timer/fd fires. Whichever
    // of the two happens second observes the other's flag already set (under
    // the same lock) and performs the single rq_push — see the race-invariant
    // trace in scheduler.c above worker_thread's BLOCKED arm.
    int            woken;
    int            parked;
    // Reserved for Track 5a.2c (detached goroutines + reaper). Unused here.
    int            detached;
} NyxGoroutine;

// Per-worker run queue (simple FIFO for now)
typedef struct NyxRunQueue {
    NyxGoroutine*  head;
    NyxGoroutine*  tail;
    int            count;
    os_mutex_t     lock;
} NyxRunQueue;

// Worker thread descriptor
typedef struct NyxWorker {
    int            id;
    os_thread_t    thread;
    NyxRunQueue    queue;
    NyxGoroutine*  current;    // currently running goroutine
    os_ctx_t       scheduler_ctx; // context to return to scheduler
    int            active;
    // W3 paso 0b: extremo frío del stack NATIVO de este worker, tal como lo
    // conoce Boehm (`GC_get_my_stackbottom`). Se lee UNA vez al arrancar el
    // worker, mientras corre sobre su propio stack. Lo usa el corrector de
    // stack pointer (ver `nyx_gc_sp_corrector` en scheduler.c) para anular el
    // escaneo del thread cuando el worker fue suspendido corriendo SOBRE el
    // stack de una goroutine.
    // EN: W3 step 0b: cold end of this worker's NATIVE stack as Boehm knows it
    // (`GC_get_my_stackbottom`), read ONCE at worker startup while running on
    // its own stack. Used by the stack pointer corrector (see
    // `nyx_gc_sp_corrector` in scheduler.c) to void the thread scan when the
    // worker was suspended while running ON a goroutine stack.
    char*          gc_stack_end;
} NyxWorker;

// Global scheduler state
typedef struct NyxScheduler {
    NyxWorker      workers[NYX_NUM_WORKERS];
    int            num_workers;
    int            running;
    os_mutex_t     global_lock;
    int            goroutine_count; // total goroutines ever created
} NyxScheduler;

// Public API
void nyx_scheduler_init(int num_workers);
void nyx_scheduler_start(void);
void nyx_scheduler_stop(void);
int64_t nyx_goroutine_spawn(int64_t (*fn)(void*), void* arg);
void nyx_goroutine_yield(void);
int64_t nyx_goroutine_join(int64_t gid);

// Track 5a.2c: fire-and-forget goroutines. A `spawn`ed goroutine that is
// never `join`ed stays in the registry forever (struct + stack + GC root
// leak) -- these two entry points close that leak for callers that
// intentionally don't want the result.
//
// nyx_goroutine_detach: mark an already-spawned (joinable) goroutine `gid`
// as detached. If it has already finished (DONE + stack_vacated) by the
// time this is called, it is reaped synchronously, right here. Otherwise
// the worker's DONE arm will reap it once it finishes. Safe to call
// concurrently with a join on the same gid (see scheduler.c for the
// claimed-arbiter race analysis) -- whichever of {detach, join, the
// worker's own DONE-arm reaper} sets `claimed` first under g_reg_lock owns
// the single reap; the others observe claimed==1 and no-op. Unknown/already
// reaped gid: no-op.
void nyx_goroutine_detach(int64_t gid);

// nyx_goroutine_spawn_detached: spawn a goroutine that is fire-and-forget
// from the start -- equivalent to nyx_goroutine_spawn immediately followed
// by nyx_goroutine_detach(gid), but race-free: `detached` is set before the
// goroutine is queued (i.e. before it can possibly run/finish), so an
// instant-completing goroutine can never race the detach against its own
// completion.
int64_t nyx_goroutine_spawn_detached(int64_t (*fn)(void*), void* arg);

// Track 5a.2b: block the calling goroutine until a timer/fd fires, then
// resume. Must be called from a goroutine (i.e. from inside a function
// running on the scheduler); if called off-goroutine (no current worker),
// nyx_goroutine_sleep falls back to a real sleep and nyx_goroutine_block_on_fd
// is not meaningful (documented fallback — see scheduler.c).
void nyx_goroutine_sleep(int64_t ms);
int  nyx_goroutine_block_on_fd(int fd, int events);

// Test/debug hook: number of goroutines currently live in the join registry
// (spawned but not yet joined/reaped). Used by tests/runtime-unit to assert
// no leaks after a batch of spawn/join cycles.
int nyx_scheduler_debug_live_count(void);

#ifdef NYX_RUNTIME_TESTING
// W3 paso 0b — test seam: aplica el corrector de stack pointer (el que evita
// que Boehm escanee desde el stack de una goroutine hasta el extremo frío del
// stack nativo del worker) a un sp dado, y devuelve el resultado. Gateado por
// -DNYX_RUNTIME_TESTING: no existe en binarios de producción.
// EN: W3 step 0b test seam -- applies the stack pointer corrector to a given sp
// and returns the result. Gated by -DNYX_RUNTIME_TESTING; absent from
// production binaries.
void* nyx_scheduler_debug_correct_sp(void* sp);

// M5 (review del paso 0b) test seam: stack_end nativo (`gc_stack_end`) de un
// worker ya arrancado, para construir un sp determinista "dentro de la
// ventana nativa esperada" del corrector. NULL si el índice es inválido o el
// worker aún no corrió. Gateado por -DNYX_RUNTIME_TESTING.
// EN: M5 (paso 0b review) test seam: a started worker's native stack_end
// (`gc_stack_end`), to deterministically build an sp "inside the corrector's
// expected native window". NULL if the index is invalid or the worker
// hasn't run yet. Gated by -DNYX_RUNTIME_TESTING.
void* nyx_scheduler_debug_worker_stack_end(int idx);
#endif

#endif // NYX_SCHEDULER_H
