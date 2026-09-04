// ============================================================
// NYX SCHEDULER — M:N Green Thread Scheduler (v2.0.0)
// ============================================================
// Work-stealing scheduler using os_ctx_t (capa nyx_os_*) for context switching.
// Provides goroutine-style concurrency on top of OS threads (capa nyx_os_*).
// ============================================================

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
// unistd.h MURIÓ de este archivo (W3 Task 4 — la limpieza que el ratchet ya
// anticipaba): write(2) → os_fd_write (en posix es write() crudo, sigue
// async-signal-safe), _exit → _Exit (C99, precedente de runtime.c),
// sysconf(_SC_PAGESIZE) → la capa es la autoridad (os_ctx_make redondea a la
// página REAL adentro; acá queda el redondeo nominal de 4 KB).
// EN: unistd.h DIED from this file (W3 Task 4 — the cleanup the ratchet
// anticipated): write(2) → os_fd_write (raw write() on posix, still
// async-signal-safe), _exit → _Exit (C99, runtime.c precedent),
// sysconf(_SC_PAGESIZE) → the layer owns the real page size (os_ctx_make
// re-rounds internally; the nominal 4 KB rounding stays here).
#include <assert.h>
#include "os/nyx_os.h"
// Los workers se crean con os_thread_create (runtime/os/os_posix.c), que es el
// único lugar que define GC_THREADS y por lo tanto redirige pthread_create a
// GC_pthread_create: el thread queda registrado en Boehm y su stack se escanea
// en el stop-the-world. Acá NO se define GC_THREADS ni se llama a
// GC_register_my_thread (sería un doble registro, GC_DUPLICATE).
// EN: workers are created via os_thread_create (runtime/os/os_posix.c), the only
// place that defines GC_THREADS and therefore redirects pthread_create to
// GC_pthread_create — registering the worker with Boehm so its stack is scanned
// during stop-the-world. No GC_THREADS and no GC_register_my_thread here (that
// would double-register, GC_DUPLICATE).
#include <gc.h>
#include <stdint.h>
#include "scheduler.h"
#include "event_loop.h"

// Global scheduler instance
static NyxScheduler g_scheduler;
static int g_scheduler_initialized = 0;

// ============================================================
// Track 5c inc.1 — stacks con GUARD PAGE (spec 2026-08-11)
// ============================================================
// Antes: malloc(64KB) fijo, sin NINGUNA detección de overflow — una
// recursión que pasaba el límite pisaba el heap vecino EN SILENCIO
// (corrupción, no crash; y cuando crasheaba era un SIGSEGV mudo).
// Ahora: mmap RW del stack + una guard multi-página PROT_NONE al fondo (el
// stack crece hacia abajo). Tocarla dispara SIGSEGV, que el handler de abajo
// reconoce y reporta como overflow con exit 1. La guard queda FUERA del rango
// registrado con GC_add_roots: Boehm nunca la toca.
//
// W3 (ctx v2): ese mapeo ya NO lo hace este archivo — lo hace `os_ctx_make`
// adentro de la capa, porque una Fiber win32 no puede adoptar un stack ajeno
// (ver el bloque ctx de nyx_os.h). Acá quedan la POLÍTICA (cuánto stack, con
// qué env var) y los consumidores de los rangos: el registro de guards para
// el diagnóstico de overflow y el GC_add_roots del área útil.
// EN: W3 (ctx v2): this file no longer maps stacks — os_ctx_make does, inside
// the layer, because a win32 Fiber cannot adopt a foreign stack. What stays
// here is POLICY (how much stack, which env var) plus the consumers of the
// ranges: the guard registry for overflow diagnostics and GC_add_roots.
//
// NO es growable on-demand: registrar roots de páginas comiteadas bajo
// demanda choca con el escaneo conservador de Boehm (ver "crux" en la spec)
// — eso es el incremento 2, gated por spike.

static size_t g_stack_size = 0;   // tamaño útil (sin la guard)
static const size_t g_nominal_page = 4096;  // NOMINAL para redondeo/mensajes; la página REAL la aplica os_ctx_make (Task 4: sysconf murió de este TU)

// F4 (review S4): se resuelve UNA vez desde nyx_scheduler_init, donde el
// proceso todavía es single-thread. Antes era cache lazy en el primer
// spawn: data race entre workers y —peor— el handler de señal podía caer
// en el camino frío (getenv/strtol NO son async-signal-safe; Task 4: sysconf ya ni se llama en este TU).
size_t nyx_goroutine_stack_size(void) {
    if (g_stack_size) return g_stack_size;
    // El redondeo de acá es NOMINAL (4 KB, ambos triples soportados): la capa
    // vuelve a redondear con la página REAL adentro de os_ctx_make, que es la
    // única que la conoce. Se fue sysconf (unistd) — ver el bloque de includes.
    // EN: this rounding is NOMINAL (4 KB); os_ctx_make re-rounds with the REAL
    // page size inside the layer, the only place that knows it.
    size_t kb = NYX_STACK_SIZE / 1024;
    const char* env = getenv("NYX_GOROUTINE_STACK_KB");
    if (env && *env) {
        char* endp = NULL;
        long v = strtol(env, &endp, 10);
        // F5: CLAMPEA (antes ignoraba en silencio: =16384 daba 256KB y el
        // usuario no tenía forma de saber por qué seguía desbordando).
        if (endp == env || (endp && *endp != '\0')) {
            fprintf(stderr, "[nyx] NYX_GOROUTINE_STACK_KB='%s' no es un número — uso %zu KB\n", env, kb);
        } else {
            if (v < NYX_STACK_MIN_KB) {
                fprintf(stderr, "[nyx] NYX_GOROUTINE_STACK_KB=%ld < %d — clampeado a %d KB\n", v, NYX_STACK_MIN_KB, NYX_STACK_MIN_KB);
                v = NYX_STACK_MIN_KB;
            } else if (v > NYX_STACK_MAX_KB) {
                fprintf(stderr, "[nyx] NYX_GOROUTINE_STACK_KB=%ld > %d — clampeado a %d KB\n", v, NYX_STACK_MAX_KB, NYX_STACK_MAX_KB);
                v = NYX_STACK_MAX_KB;
            }
            kb = (size_t)v;
        }
    }
    size_t sz = kb * 1024;
    // redondear a múltiplo de página
    sz = ((sz + g_nominal_page - 1) / g_nominal_page) * g_nominal_page;
    g_stack_size = sz;
    return g_stack_size;
}

// Registro de guard pages. F2/F3 (review S4): la versión sin locks PERDÍA
// registros bajo spawn concurrente (dos registros eligiendo el mismo slot;
// un unregister pisando un register: quedaba lo=válido/hi=NULL, guard viva
// pero INVISIBLE al handler) y en aarch64 no tenía barreras. Efecto real:
// el overflow volvía al SIGSEGV mudo de forma NO DETERMINISTA, justo bajo
// carga. Ahora: los ESCRITORES se serializan con mutex (no es camino
// caliente — dos syscalls de mmap ya dominan) y la publicación es atómica
// release/acquire, así el handler (que NO puede tomar locks) ve siempre un
// par (lo,hi) coherente. Orden ÚNICO en ambos caminos: `hi` primero, `lo`
// (el publicador) último; al desregistrar, `lo=NULL` primero.
typedef struct { char* lo; char* hi; } NyxGuard;
static NyxGuard g_guards[NYX_MAX_GOROUTINES];
static volatile int g_guard_count = 0;
static os_mutex_t g_guard_lock = OS_MUTEX_STATIC_INIT;
static int g_stack_handler_installed = 0;

static void guard_register(char* lo, char* hi) {
    os_mutex_lock(&g_guard_lock);
    int n = g_guard_count;
    int idx = -1;
    for (int i = 0; i < n; i++) {
        if (__atomic_load_n(&g_guards[i].lo, __ATOMIC_RELAXED) == NULL) { idx = i; break; }
    }
    if (idx < 0) {
        if (n >= NYX_MAX_GOROUTINES) {
            // F6: agotado (>4096 goroutines VIVAS) — decirlo, no degradar mudo.
            static int warned = 0;
            if (!warned) {
                warned = 1;
                fprintf(stderr, "[nyx] registro de guard pages lleno (%d): los overflows de las goroutines nuevas no se diagnostican\n", NYX_MAX_GOROUTINES);
            }
            os_mutex_unlock(&g_guard_lock);
            return;
        }
        idx = n;
        g_guard_count = n + 1;
    }
    g_guards[idx].hi = hi;
    __atomic_store_n(&g_guards[idx].lo, lo, __ATOMIC_RELEASE);   // publica
    os_mutex_unlock(&g_guard_lock);
}

// POOL de stacks (F12 / gate de perf de la spec). Medición A/B: el mmap +
// mprotect + munmap por goroutine costaba 1.8× en spawn+join (58ms → 103ms
// por 4000 spawns), y el A/B con NYX_GOROUTINE_STACK_KB=64 y =1024 mostró
// que el costo es ENTERAMENTE de los syscalls, no del tamaño. Reciclando el
// mapeo (la guard sigue PROT_NONE — mprotect persiste) el spawn vuelve
// al costo de antes SIN perder la protección. Cap: 64 stacks (VA acotada;
// el RSS es el de las páginas ya tocadas, que es justo lo que se reusa).
//
// W3 (ctx v2): lo que se poolea ya no es un puntero de stack crudo sino el
// `os_ctx_t` ENTERO — el stack es propiedad del ctx, y `os_ctx_remake` lo
// reusa para una entry nueva (en posix: un `makecontext` sobre el mismo
// mapeo, sin un solo syscall, así que la medición A/B de arriba se preserva).
// Se poolea POR PUNTERO: con el ctx embebido en NyxGoroutine, cada spawn+join
// habría copiado el blob opaco dos veces (4800B por copia en aarch64), y eso
// SÍ se mide — 20 000 spawn+join: 362ms por puntero contra 385ms copiando
// (+6.3%). Ver el campo `context` en scheduler.h.
// EN: W3 (ctx v2): what gets pooled is no longer a raw stack pointer but the
// WHOLE os_ctx_t — the stack belongs to the ctx and os_ctx_remake reuses it for
// a new entry (on posix a makecontext over the same mapping, zero syscalls, so
// the A/B measurement above still holds). Pooled BY POINTER: with the ctx
// embedded in NyxGoroutine each spawn+join would copy the opaque blob twice
// (4800B per copy on aarch64), and that IS measurable — 20 000 spawn+join:
// 362ms by pointer vs 385ms copying (+6.3%). See scheduler.h's `context`.
#define NYX_STACK_POOL_MAX 64
// Array ESTÁTICO a propósito: es dato estático, o sea GC root, y por eso
// mantiene vivos los `os_ctx_t` (GC_MALLOC'd) mientras están reciclados —
// entre el reap de una goroutine y el spawn de la siguiente no hay ninguna
// otra referencia a ellos.
// EN: STATIC array on purpose: static data is a GC root, which is what keeps
// the (GC_MALLOC'd) os_ctx_t objects alive while recycled — between one
// goroutine's reap and the next spawn nothing else references them.
static os_ctx_t* g_ctx_pool[NYX_STACK_POOL_MAX];
static int g_stack_pool_count = 0;   // bajo g_guard_lock

// Un ctx reciclado (con su stack y su guard intactos), o NULL si el pool está vacío.
//
// El slot NO se cerea al sacarlo, a propósito: la entrada por encima de
// `g_stack_pool_count` queda como referencia RANCIA pero viva al mismo objeto
// que acaba de entregarse. Es defensa en profundidad para el GC — el
// array estático es root, así que mientras el ctx viaja del pool a `g->context`
// hay siempre al menos una raíz que lo alcanza, sin depender de en qué
// instante el colector observe cuál de las dos. Cerear el slot solo abriría
// una ventana sin ninguna ganancia (el objeto se re-alcanza por `g`).
// EN: the slot is deliberately NOT cleared on get: the entry above
// g_stack_pool_count stays a stale-but-live reference to the object just
// handed out. That is defence in depth for the GC — the static array is a
// root, so while the ctx travels from the pool to g->context there is always
// at least one root reaching it, regardless of when the collector looks.
// Clearing the slot would only open a window, for no gain.
static os_ctx_t* ctx_pool_get(void) {
    os_ctx_t* c = NULL;
    os_mutex_lock(&g_guard_lock);
    if (g_stack_pool_count > 0) c = g_ctx_pool[--g_stack_pool_count];
    os_mutex_unlock(&g_guard_lock);
    return c;
}

// Retención falsa ACOTADA y aceptada: el blob que vuelve al pool conserva la
// imagen de registros de la goroutine que acaba de morir (el ucontext guardado
// en su último swap), y el colector escanea ese objeto GC de forma
// conservadora — o sea que hasta que el ctx se reuse (su `os_ctx_remake` lo
// pisa entero con getcontext) puede mantener vivo, de más, lo que esos
// registros apuntaran. El techo es duro: NYX_STACK_POOL_MAX (64) blobs. Se
// acepta a cambio de no pagar un memset de 4.8KB por reap en el camino
// caliente — que es justo el costo que este pool por puntero vino a sacar.
// EN: BOUNDED, accepted false retention: a blob returning to the pool still
// holds the dead goroutine's register image (the ucontext saved on its last
// swap), and the collector scans that GC object conservatively — so until the
// ctx is reused (os_ctx_remake overwrites it wholesale via getcontext) it can
// over-retain whatever those registers pointed at. Hard ceiling:
// NYX_STACK_POOL_MAX (64) blobs. Accepted in exchange for not paying a 4.8KB
// memset per reap on the hot path — the very cost this pointer pool removed.
static int ctx_pool_put(os_ctx_t* c) {
    int ok = 0;
    os_mutex_lock(&g_guard_lock);
    if (g_stack_pool_count < NYX_STACK_POOL_MAX) {
        g_ctx_pool[g_stack_pool_count++] = c;
        ok = 1;
    }
    os_mutex_unlock(&g_guard_lock);
    return ok;
}

static void guard_unregister(char* lo) {
    os_mutex_lock(&g_guard_lock);
    int n = g_guard_count;
    for (int i = 0; i < n; i++) {
        if (__atomic_load_n(&g_guards[i].lo, __ATOMIC_RELAXED) == lo) {
            __atomic_store_n(&g_guards[i].lo, (char*)NULL, __ATOMIC_RELEASE);  // despublica
            g_guards[i].hi = NULL;
            break;
        }
    }
    os_mutex_unlock(&g_guard_lock);
}

// Callback de os_fault_guard_install (runtime/os/nyx_os.h): corre EN
// CONTEXTO DE SEÑAL sobre la pila alterna de este worker
// (nyx_stack_guard_thread_init/os_fault_guard_thread_init) -- solo
// async-signal-safe. El mensaje de overflow es BYTE-EXACTO a propósito
// (formateo manual sin snprintf, que no es async-signal-safe) — se mudó acá
// TEXTUAL desde el viejo nyx_stack_fault_handler, sin tocar una coma.
// Contrato de la capa: devuelve 1 si el addr cae en una guard page propia
// (ya hizo _Exit, no retorna en la práctica); 0 si no es nuestra — la capa
// ENCADENA al dueño que la señal tenía antes de este guard (en Linux, el
// write-fault handler de Boehm cuando el GC incremental está activo), y solo
// si no había dueño previo restaura SIG_DFL y re-raisea. Un SEGV/BUS genuino
// sigue siendo eso: el encadenado nunca enmascara, solo evita robarle la señal
// a quien la necesita (W3 paso 0).
// EN: os_fault_guard_install callback (runtime/os/nyx_os.h): runs IN SIGNAL
// CONTEXT on this worker's alternate stack -- async-signal-safe only. The
// overflow message is BYTE-EXACT on purpose (manual formatting, no snprintf
// which isn't async-signal-safe) -- moved here VERBATIM from the old
// nyx_stack_fault_handler, untouched. Layer contract: returns 1 if addr
// falls inside one of our guard pages (already called _exit, doesn't return
// in practice); 0 if it's not ours -- the layer CHAINS to whatever owned the
// signal before this guard (on Linux, Boehm's write-fault handler when
// incremental GC is on), and only with no previous owner does it restore
// SIG_DFL and re-raise. A genuine SEGV/BUS stays exactly that: chaining never
// masks anything, it just stops us from stealing the signal from whoever needs
// it (W3 step 0).
static int nyx_stack_fault_on_fault(void* addr_v) {
    char* addr = (char*)addr_v;
    if (addr) {
        int n = g_guard_count;
        for (int i = 0; i < n; i++) {
            char* lo = __atomic_load_n(&g_guards[i].lo, __ATOMIC_ACQUIRE);
            char* hi = g_guards[i].hi;
            if (lo && hi && addr >= lo && addr < hi) {
                static const char m1[] = "[nyx] goroutine stack overflow — subí NYX_GOROUTINE_STACK_KB (actual: ";
                // os_fd_write: en posix es write() crudo (async-signal-safe,
                // misma syscall que antes); en win32, _write del CRT.
                // EN: raw write() on posix (same syscall as before); CRT
                // _write on win32.
                int64_t w = os_fd_write(2, m1, (int64_t)(sizeof(m1) - 1));
                char buf[24];
                size_t kb = nyx_goroutine_stack_size() / 1024;
                int p = 0;
                if (kb == 0) { buf[p++] = '0'; }
                else {
                    char tmp[24]; int t = 0;
                    while (kb > 0 && t < 20) { tmp[t++] = (char)('0' + (kb % 10)); kb /= 10; }
                    while (t > 0) buf[p++] = tmp[--t];
                }
                buf[p++] = 'K'; buf[p++] = 'B'; buf[p++] = ')'; buf[p++] = '\n';
                w = os_fd_write(2, buf, (int64_t)p);
                (void)w;
                // _Exit (C99) en vez de _exit (POSIX/unistd): mismo efecto,
                // precedente de runtime.c (W2 fase A). / same effect, C99.
                _Exit(1);
            }
        }
    }
    // NO es una guard page nuestra: la capa (os_fault_guard_install) lo
    // encadena al dueño previo de la señal, y si no había ninguno restaura la
    // disposición default y re-raisea (nunca enmascarar bugs reales).
    // EN: NOT one of our guard pages: the layer (os_fault_guard_install) chains
    // it to the signal's previous owner, and with no previous owner restores the
    // default disposition and re-raises (never mask real bugs).
    return 0;
}

// sigaltstack por worker: el fault ocurre con el stack AGOTADO, así que el
// handler necesita su propia pila o faultea él mismo. Mecánica en la capa
// (os_fault_guard_thread_init); este wrapper es el nombre histórico que los
// call sites de abajo siguen usando.
static void nyx_stack_guard_thread_init(void) {
    os_fault_guard_thread_init();
}

static void nyx_stack_guard_install(void) {
    if (g_stack_handler_installed) return;
    os_fault_guard_install(nyx_stack_fault_on_fault);
    g_stack_handler_installed = 1;   // F7: marcar DESPUÉS de instalar
}

// Thread-local: which worker is running on this OS thread
static OS_THREAD_LOCAL NyxWorker* g_current_worker = NULL;

// ============================================================
// Scheduler <-> Event Loop bridge (Track 5a.2b)
// ------------------------------------------------------------
// One event loop shared by the whole scheduler. There is no dedicated
// poller thread: whichever worker finds its own queue AND every other
// worker's queue empty opportunistically becomes the "designated poller"
// for one tick (see the idle branch in worker_thread), guarded by
// g_poller_lock so at most one worker polls at a time (nyx_event_loop_run_once
// is not designed for concurrent callers). g_block_lock is the leaf lock
// that linearizes the block/wake handshake (see nyx_goroutine_sleep /
// wake_cb / the BLOCKED arm below) — it is NEVER nested with
// g_join_lock/g_reg_lock, and NEVER held across a swapcontext() call.
// ============================================================
static NyxEventLoop* g_loop = NULL;
static os_mutex_t g_poller_lock = OS_MUTEX_STATIC_INIT;
static os_mutex_t g_block_lock = OS_MUTEX_STATIC_INIT;
#define NYX_POLLER_TICK_MS 10

// ============================================================
// Goroutine Registry (Track 5a.1)
// ------------------------------------------------------------
// Hash-chained-by-id registry of live (spawned, not yet reaped) goroutines.
// Backs real `nyx_goroutine_join`: a joiner looks the goroutine up here to
// find out whether it's DONE, claims its result exactly once, and reaps it.
// The array itself is a GC root (static data) but goroutines are only kept
// alive by being reachable *through* it — reg_remove makes a GC_MALLOC'd
// NyxGoroutine collectible again.
// ============================================================

#define NYX_REG_BUCKETS 8192

static NyxGoroutine* g_reg[NYX_REG_BUCKETS];
static os_mutex_t g_reg_lock = OS_MUTEX_STATIC_INIT;
static int g_reg_live = 0;

// Join synchronization: one global lock/condvar pair, never destroyed (so no
// UAF risk on the condvar itself). Lock order is ALWAYS g_join_lock ->
// g_reg_lock (never the reverse) to avoid a lock-order-inversion deadlock
// between goroutine_entry (join lock only) and try_claim_locked (both).
// g_join_cv solo se espera con os_cond_wait (nunca timedwait): el init estático a
// ceros alcanza. Un timedwait exigiría os_cond_init (reloj monotónico).
// EN: g_join_cv is only ever os_cond_wait'ed (never timedwait), so the all-zero
// static init is enough. A timedwait would require os_cond_init (monotonic clock).
static os_mutex_t g_join_lock = OS_MUTEX_STATIC_INIT;
static os_cond_t  g_join_cv   = OS_COND_STATIC_INIT;

static inline int reg_bucket(int64_t gid) {
    return (int)(((uint64_t)gid) % NYX_REG_BUCKETS);
}

// Caller must hold g_reg_lock.
static void reg_insert_locked(NyxGoroutine* g) {
    int b = reg_bucket(g->id);
    g->reg_next = g_reg[b];
    g_reg[b] = g;
    g_reg_live++;
}

// Caller must hold g_reg_lock.
static NyxGoroutine* reg_lookup_locked(int64_t gid) {
    int b = reg_bucket(gid);
    for (NyxGoroutine* g = g_reg[b]; g; g = g->reg_next) {
        if (g->id == (int)gid) return g;
    }
    return NULL;
}

// Caller must hold g_reg_lock. `g` must currently be in the registry.
static void reg_remove_locked(NyxGoroutine* g) {
    int b = reg_bucket(g->id);
    NyxGoroutine** pp = &g_reg[b];
    while (*pp) {
        if (*pp == g) {
            *pp = g->reg_next;
            g->reg_next = NULL;
            g_reg_live--;
            return;
        }
        pp = &(*pp)->reg_next;
    }
}

static void reg_insert(NyxGoroutine* g) {
    os_mutex_lock(&g_reg_lock);
    reg_insert_locked(g);
    os_mutex_unlock(&g_reg_lock);
}

int nyx_scheduler_debug_live_count(void) {
    os_mutex_lock(&g_reg_lock);
    int n = g_reg_live;
    os_mutex_unlock(&g_reg_lock);
    return n;
}

// Publica el stack de `g`: cachea el rango que la capa reporta, registra la
// guard para el diagnóstico de overflow y da de alta el área útil como GC
// root. IDEMPOTENTE (`g->stack != NULL` es el flag de "ya publicado").
// Devuelve 1 si quedó publicado, 0 si el ctx TODAVÍA no conoce su rango.
//
// El caso "todavía no lo conoce" es la SEMÁNTICA DIFERIDA del contrato (ver
// os_ctx_stack en nyx_os.h): en win32 el stack lo aloca CreateFiberEx y el
// rango recién se puede leer desde ADENTRO de la fiber, en su primera
// entrada. En POSIX no pasa nunca — os_ctx_make mapea el stack y conoce el
// rango antes de volver, así que la publicación siempre ocurre en
// spawn_internal, ANTES de que la goroutine pueda correr. El camino diferido
// (W3 Task 3, ruling P2) publica desde goroutine_entry — DENTRO de la fiber,
// primera acción, cuando el tramp de la capa ya midió el rango — para que ni
// la primera corrida ejecute sin root; el re-chequeo de worker_thread tras el
// primer swap queda como cinturón (idempotencia mediante).
// EN: publishes g's stack: caches the range the layer reports, registers the
// guard for overflow diagnostics and adds the usable area as a GC root.
// IDEMPOTENT (g->stack != NULL is the "already published" flag). Returns 0 when
// the ctx does not know its range YET — the contract's DEFERRED SEMANTICS
// (win32: CreateFiberEx owns the stack and the range is only readable from
// INSIDE the fiber, on first entry). On POSIX it never happens, so publication
// always occurs in spawn_internal before the goroutine can run; the deferred
// path (W3 Task 3, P2 ruling) publishes from goroutine_entry — INSIDE the
// fiber, first thing, once the layer's tramp has measured the range — so not
// even the first run executes rootless; worker_thread's post-swap re-check
// stays as a belt (idempotency makes it free).
static int goroutine_stack_publish(NyxGoroutine* g) {
    if (g->stack) return 1;                    // ya publicado
    if (!g->context) return 0;                 // ya reciclado / nunca creado
    void* lo = NULL; size_t sz = 0;
    os_ctx_stack(g->context, &lo, &sz);
    if (!lo || sz == 0) return 0;              // ctx aún-no-entrado (win32)

    // El registro de guards es SOLO diagnóstico de overflow: `size == 0`
    // significa "esta plataforma no tiene guard region observable" (win32,
    // commit==reserve: el overflow cae fuera de la reserva y lo caza el
    // fault-guard igual). No registrar nada NO es un error.
    // EN: the guard registry is overflow diagnostics only; size == 0 means the
    // platform has no observable guard region (win32) — registering nothing is
    // not an error.
    void* glo = NULL; size_t gsz = 0;
    os_ctx_guard(g->context, &glo, &gsz);
    if (glo && gsz > 0) guard_register((char*)glo, (char*)glo + gsz);

    // Orden de publicación: PRIMERO el tamaño, DESPUÉS el puntero (release).
    // `nyx_gc_sp_corrector` lee el par con el mundo parado y decide por rango:
    // ver `stack != NULL` implica ver `stack_size` ya escrito, así que nunca
    // arma un rango a medio publicar. (En POSIX esto es teórico —la
    // publicación pasa antes de que la goroutine sea encolada—; importa en el
    // camino diferido de win32, donde publica un worker mientras otros corren.)
    // EN: publication order: size FIRST, pointer SECOND (release), so the sp
    // corrector — which reads the pair with the world stopped and decides by
    // range — can never see a half-published range. Theoretical on POSIX (this
    // runs before the goroutine is ever queued); it matters on win32's deferred
    // path, where a worker publishes while other workers run.
    g->stack_size = sz;
    __atomic_store_n(&g->stack, (char*)lo, __ATOMIC_RELEASE);

    // Register the stack as a GC root BEFORE this goroutine can possibly run
    // (i.e. before it's queued): a suspended goroutine's only reference to a
    // GC object may live in a stack local, invisible to the collector
    // otherwise. Paired with GC_remove_roots in reap(), using the exact same
    // range, in the opposite order (remove-before-recycle there).
    GC_add_roots(g->stack, g->stack + g->stack_size);
    return 1;
}

// Releases the goroutine's stack root + recycles its context. Must only be
// called once per goroutine, after it has been reg_removed and claimed (join
// owns this invariant). GC_remove_roots MUST happen before the ctx goes back
// to the pool (or is freed): otherwise a concurrent GC scan could read
// already-recycled memory through the stale root. The NyxGoroutine struct
// itself is GC_MALLOC'd and is NEVER freed here — once unreachable (post
// reg_remove) the collector reclaims it on its own.
static void reap(NyxGoroutine* g) {
    if (g->stack) {
        GC_remove_roots(g->stack, g->stack + g->stack_size);
        void* glo = NULL; size_t gsz = 0;
        os_ctx_guard(g->context, &glo, &gsz);
        if (glo && gsz > 0) guard_unregister((char*)glo);
        g->stack = NULL;
        g->stack_size = 0;
    }
    // ctx v2: reciclar el CONTEXTO entero (que es dueño del mapeo, con su
    // guard intacta) en vez de devolverlo al kernel; si el pool está lleno,
    // os_ctx_free (munmap) como siempre. Seguro acá y solo acá: el llamador
    // garantiza DONE + stack_vacated, o sea que ningún OS thread sigue
    // corriendo sobre este stack.
    // EN: ctx v2: recycle the WHOLE context (which owns the mapping, guard
    // included) instead of handing it back to the kernel; if the pool is full,
    // os_ctx_free (munmap) as before. Safe here and only here: the caller
    // guarantees DONE + stack_vacated, i.e. no OS thread still runs on it.
    // `g->context = NULL` es el guard de reciclado doble: meter el MISMO
    // mapeo dos veces en el pool pondría a dos goroutines a correr sobre un
    // solo stack (corrupción silenciosa). Al soltar el puntero, un ctx que
    // desborda el pool queda sin referencias y el colector lo recupera —
    // os_ctx_free solo devuelve el MAPEO al kernel, no el objeto GC.
    // EN: `g->context = NULL` is the double-recycle guard: putting the SAME
    // mapping in the pool twice would run two goroutines on one stack. Dropping
    // the pointer also makes an overflowing ctx unreachable so the collector
    // reclaims it — os_ctx_free only returns the MAPPING to the kernel.
    if (g->context) {
        if (!ctx_pool_put(g->context)) os_ctx_free(g->context);
        g->context = NULL;
    }
}

// Attempts to claim gid's result. Caller must hold g_join_lock (lock order:
// join -> reg). Returns:
//   1  -> claimed; *out = result (goroutine has been reaped)
//   0  -> exists but not DONE yet (caller should wait/yield and retry)
//  -1  -> unknown id or already claimed by another joiner (double-join)
static int try_claim_locked(int64_t gid, int64_t* out) {
    os_mutex_lock(&g_reg_lock);
    NyxGoroutine* g = reg_lookup_locked(gid);
    if (!g || g->claimed) {
        os_mutex_unlock(&g_reg_lock);
        return -1;
    }
    // Require BOTH: logically finished (DONE) AND the worker's own
    // swapcontext() back to its scheduler has actually returned
    // (stack_vacated) — i.e. no OS thread is still executing on g->stack.
    // See the stack_vacated field comment in scheduler.h for why DONE alone
    // is not sufficient (freeing the stack earlier is a use-after-free of
    // the still-active context).
    if (g->state != NYX_GOROUTINE_DONE || !g->stack_vacated) {
        os_mutex_unlock(&g_reg_lock);
        return 0;
    }
    g->claimed = 1;
    *out = g->result;        // copy result BEFORE reap
    reg_remove_locked(g);     // so no other joiner can attach to it
    os_mutex_unlock(&g_reg_lock);
    reap(g);
    return 1;
}

// Track 5a.2c: attempts to claim+remove a DONE, vacated, detached goroutine
// for reaping. Caller must hold g_join_lock (lock order: join -> reg, same
// as try_claim_locked). Returns 1 if `g` was just claimed+reg_removed -- the
// CALLER is responsible for calling reap(g) itself, AFTER releasing
// g_join_lock and from a context that is not `g`'s own stack (this function
// only arbitrates + unlinks; it deliberately does not call reap() so callers
// can release g_join_lock first -- reap() does file/GC work that need not
// happen under that lock). Returns 0 if `g` is not (yet, or ever, from this
// call's point of view) reapable-as-detached: not detached, already claimed
// by someone else (join or a previous detach/reaper), or not both DONE and
// stack_vacated yet.
static int try_reap_detached_locked(NyxGoroutine* g) {
    os_mutex_lock(&g_reg_lock);
    if (!g->detached || g->claimed ||
        g->state != NYX_GOROUTINE_DONE || !g->stack_vacated) {
        os_mutex_unlock(&g_reg_lock);
        return 0;
    }
    g->claimed = 1;
    reg_remove_locked(g);
    os_mutex_unlock(&g_reg_lock);
    return 1;
}

// ============================================================
// Run Queue Operations
// ============================================================

static void rq_init(NyxRunQueue* q) {
    q->head = NULL;
    q->tail = NULL;
    q->count = 0;
    os_mutex_init(&q->lock);
}

static void rq_push(NyxRunQueue* q, NyxGoroutine* g) {
    os_mutex_lock(&q->lock);
    g->next = NULL;
    if (q->tail) {
        q->tail->next = g;
    } else {
        q->head = g;
    }
    q->tail = g;
    q->count++;
    os_mutex_unlock(&q->lock);
}

static NyxGoroutine* rq_pop(NyxRunQueue* q) {
    os_mutex_lock(&q->lock);
    NyxGoroutine* g = q->head;
    if (g) {
        q->head = g->next;
        if (!q->head) q->tail = NULL;
        q->count--;
        g->next = NULL;
    }
    os_mutex_unlock(&q->lock);
    return g;
}

// Steal a goroutine from another worker's queue
static NyxGoroutine* rq_steal(NyxRunQueue* q) {
    return rq_pop(q);  // simple: steal from front (same as pop)
}

// ============================================================
// Block/Wake handshake callback (Track 5a.2b)
// ------------------------------------------------------------
// Invoked by nyx_event_loop_run_once, on the designated poller's native OS
// thread/stack (NOT on `g`'s own stack — `g` is parked, not running). `fd`
// is -1 for a timer firing (see event_loop.c's DispatchEntry convention),
// or the real fd for an I/O readiness wake.
// ============================================================
static void wake_cb(int fd, int events, void* ud) {
    (void)events;
    NyxGoroutine* g = (NyxGoroutine*)ud;
    // Timers are already one-shot/self-deactivating in the event loop; a
    // real fd registration must be explicitly torn down so it isn't
    // dispatched again on a future readiness edge before the goroutine has
    // re-registered (e.g. after a partial read).
    if (fd >= 0) nyx_event_loop_remove(g_loop, fd);

    os_mutex_lock(&g_block_lock);
    g->woken = 1;
    int push_now = g->parked;
    if (push_now) g->state = NYX_GOROUTINE_READY;
    os_mutex_unlock(&g_block_lock);
    // See the extended race-invariant trace in worker_thread's BLOCKED arm:
    // push_now is true only if the worker's arm already observed the
    // swapcontext() return (parked==1) BEFORE we took the lock here, which
    // means g->context is fully saved and safe to resume from another
    // thread's rq_push.
    if (push_now) {
        rq_push(&g_scheduler.workers[g->home_worker].queue, g);
    }
    // else: the worker's BLOCKED arm will requeue once it sets parked=1 and
    // observes woken==1 under the same lock.
}

// ============================================================
// Goroutine Entry Point
// ============================================================

static void goroutine_entry(void* arg) {
    NyxGoroutine* g = (NyxGoroutine*)arg;

    // ctx v2 — RULING P2 (W3 Task 3): cierre de la ventana del camino
    // diferido. En win32 el rango del stack recién existe cuando el tramp de
    // la fiber lo mide, ANTES de saltar acá — pero el re-chequeo de
    // worker_thread corre recién DESPUÉS del primer swap de vuelta: toda la
    // PRIMERA corrida de la goroutine (que puede alocar y ceder) pasaría con
    // frames vivos y SIN root. El corrector de sp win32 (por exclusión) NO
    // cubre eso: su trabajo es justamente ANULAR el escaneo per-thread de la
    // fiber — la protección de los frames es de este root y de nadie más.
    // Publicar ACÁ, como primera acción y antes de tocar nada del GC, cierra
    // la ventana entera: antes de este punto el stack no tiene ningún local
    // con puntero GC (solo los frames del tramp), y todo lo vivo (`g`, `w`)
    // es alcanzable por los globals g_reg/g_scheduler. En POSIX es un no-op
    // (publicado desde spawn_internal; la función es idempotente). El
    // re-chequeo de worker_thread queda como cinturón.
    // EN: ctx v2 — P2 RULING: closes the deferred-path window. On win32 the
    // stack range only exists once the fiber tramp measures it, right before
    // jumping here — but worker_thread's re-check runs only AFTER the first
    // swap back: the goroutine's whole FIRST run would execute with live
    // frames and NO root. The win32 sp corrector (by exclusion) does not
    // cover that — its job is precisely to VOID the per-thread fiber scan;
    // protecting the frames is this root's job alone. Publishing HERE, first
    // thing and before touching the GC, closes the window entirely: before
    // this point the stack holds no GC-pointer locals (tramp frames only),
    // and everything live (g, w) is reachable via the g_reg/g_scheduler
    // globals. On POSIX this is an idempotent no-op (published from
    // spawn_internal). worker_thread's re-check stays as a belt.
    goroutine_stack_publish(g);

    // Call the goroutine function
    g->result = g->fn(g->arg);

    // Publish DONE. NOTE: this does NOT mean it's safe to reap yet — this
    // goroutine is still executing ON `stack` (the swapcontext() call just
    // below still needs it). The final "safe to free the stack" signal
    // (stack_vacated) is set by worker_thread, from ITS OWN native stack,
    // once that swapcontext() call has actually returned control there. See
    // the stack_vacated comment in scheduler.h. No broadcast here — the
    // authoritative wakeup happens alongside stack_vacated below, avoiding a
    // premature wakeup that would let a joiner free `stack` out from under
    // this still-running context (reproduces reliably under rapid
    // spawn/join churn: the freed range gets reused for the next stack).
    os_mutex_lock(&g_join_lock);
    g->state = NYX_GOROUTINE_DONE;
    os_mutex_unlock(&g_join_lock);

    // Return to scheduler context
    NyxWorker* w = g_current_worker;
    if (w) {
        os_ctx_swap(g->context, &w->scheduler_ctx);
    }
}

// ============================================================
// Worker Thread
// ============================================================

static void* worker_thread(void* arg) {
    NyxWorker* w = (NyxWorker*)arg;
    g_current_worker = w;
    // W3 paso 0b: fotografía del extremo frío del stack NATIVO tal como lo
    // registró Boehm al crear este thread. Se toma ACÁ, corriendo sobre ese
    // stack y antes del primer switch a una goroutine, así el corrector nunca
    // lo lee sin valor. Publicado con release: el corrector lo lee desde otro
    // thread (con el mundo parado, pero el store tiene que ser visible).
    // EN: snapshot of the NATIVE stack's cold end as Boehm registered it for
    // this thread. Taken HERE, on that stack and before the first switch to a
    // goroutine, so the corrector never reads it unset.
    // Sin chequear el retorno a propósito: `GC_get_my_stackbottom` devuelve el
    // handle del thread, y para un thread REGISTRADO nunca es NULL (para uno no
    // registrado directamente segfaultea adentro, no devuelve NULL). Los workers
    // se crean con os_thread_create -> GC_pthread_create, así que están
    // registrados por construcción. Un `if (... != NULL)` acá sería una guarda
    // que no cubre nada y sugeriría un modo de fallo que la API no tiene.
    // EN: return deliberately unchecked: GC_get_my_stackbottom returns the
    // thread handle, never NULL for a REGISTERED thread (for an unregistered one
    // it faults inside rather than returning NULL). Workers are created through
    // os_thread_create -> GC_pthread_create, so they are registered by
    // construction; an if-guard here would cover nothing and imply a failure
    // mode the API doesn't have.
    {
        struct GC_stack_base sb;
        (void)GC_get_my_stackbottom(&sb);
        __atomic_store_n(&w->gc_stack_end, (char*)sb.mem_base, __ATOMIC_RELEASE);
    }
    // ctx v2 (W3): habilitar el cambio de contexto en ESTE OS thread, una vez
    // y antes del primer swap. posix: no-op. win32: ConvertThreadToFiber, sin
    // el cual SwitchToFiber sobre un thread no-fiber es UB. Va DESPUÉS de la
    // foto de arriba a propósito: esa foto tiene que tomarse sobre el stack
    // nativo tal como Boehm lo registró, y antes de cualquier switch.
    // EN: ctx v2 (W3): enable context switching on THIS OS thread, once and
    // before the first swap. posix: no-op. win32: ConvertThreadToFiber, without
    // which SwitchToFiber on a non-fiber thread is UB. Deliberately after the
    // snapshot above: that snapshot must be taken on the native stack as Boehm
    // registered it, before any switch.
    os_ctx_thread_init();
    // Track 5c inc.1: pila alterna para el handler de overflow — el fault
    // ocurre con el stack de la goroutine AGOTADO, así que sin sigaltstack
    // el propio handler faultearía (y el proceso moriría mudo otra vez).
    nyx_stack_guard_thread_init();

    while (w->active) {
        // Try to get a goroutine from own queue
        NyxGoroutine* g = rq_pop(&w->queue);

        // Work-stealing: try other workers' queues
        if (!g) {
            for (int i = 0; i < g_scheduler.num_workers && !g; i++) {
                if (i != w->id) {
                    g = rq_steal(&g_scheduler.workers[i].queue);
                }
            }
        }

        if (g) {
            // Run the goroutine
            w->current = g;
            g->state = NYX_GOROUTINE_RUNNING;
            os_ctx_swap(&w->scheduler_ctx, g->context);
            // Control only reaches here once the goroutine has swapcontext'd
            // BACK to us (either by finishing or by yielding) — at this
            // exact point it is no longer executing on `g->stack` at all;
            // we (the worker) are back on our own native pthread stack.
            w->current = NULL;

            // ctx v2 — CINTURÓN del root diferido (W3 Task 3, ruling P2): la
            // publicación real del camino win32 ocurre en goroutine_entry,
            // DENTRO de la fiber y antes del primer bytecode de la goroutine
            // (ver el ruling ahí — sin eso la primera corrida ejecutaba con
            // frames vivos y sin root). Este re-chequeo queda por si una
            // plataforma futura difiere aún más, o si entry murió antes de
            // publicar: idempotente y gratis cuando ya publicó. Se saltea si
            // ya terminó (publicar y desregistrar en el mismo suspiro sería
            // trabajo puro). En POSIX `g->stack` ya está seteado desde
            // spawn_internal y esto no llama a nada. NOTA para el invariante
            // de abajo: el helper no introduce ningún local que apunte a un
            // objeto GC — solo direcciones de stack (no-GC) y `g`, que vive
            // en el registro global.
            // EN: ctx v2 — deferred-root BELT (W3 Task 3, P2 ruling): the real
            // win32 publication happens in goroutine_entry, INSIDE the fiber
            // and before the goroutine's first bytecode (see the ruling there).
            // This re-check stays for hypothetical platforms that defer even
            // further; idempotent and free once published. Skipped when the
            // goroutine already finished. On POSIX g->stack is already set
            // from spawn_internal.
            if (!g->stack && g->state != NYX_GOROUTINE_DONE) {
                goroutine_stack_publish(g);
            }

            if (g->state == NYX_GOROUTINE_DONE) {
                // Only now is it safe for a joiner to free g->stack. Signal
                // that under g_join_lock and wake any waiters (this is the
                // authoritative "done AND reapable" wakeup — see the
                // comment in goroutine_entry for why the DONE transition
                // itself does not broadcast).
                os_mutex_lock(&g_join_lock);
                g->stack_vacated = 1;
                // Track 5a.2c: if this goroutine was (already) marked
                // detached, nobody is ever going to join() it -- claim+
                // unlink it right here so it doesn't leak forever. This is
                // done while still holding g_join_lock (matching the lock
                // order join->reg used everywhere else), but the actual
                // reap() call happens AFTER releasing both locks, below —
                // we are on the WORKER's own native stack at this point
                // (g's swapcontext() back to us has already returned), so
                // it is safe to free g's stack from here, unlike from
                // inside g's own DONE path in goroutine_entry.
                int reap_me = try_reap_detached_locked(g);
                os_cond_broadcast(&g_join_cv);
                os_mutex_unlock(&g_join_lock);
                if (reap_me) reap(g);
            } else if (g->state == NYX_GOROUTINE_READY) {
                // Not done: re-queue it.
                rq_push(&w->queue, g);
            } else if (g->state == NYX_GOROUTINE_BLOCKED) {
                // Race-invariant trace (early-wake / lost-wake / double-requeue):
                //
                // At this exact line, `g` is fully OFF g->stack — the
                // swapcontext() a few lines above has already returned
                // control to us, on our own native worker stack. This is
                // the earliest point at which it is safe to let a wake_cb
                // (running concurrently on the designated poller's native
                // stack, possibly a DIFFERENT OS thread) touch `g` again.
                // That is why `parked` is set HERE and not before the
                // swapcontext() call — setting it earlier would let wake_cb
                // observe parked==1 and rq_push `g` onto a run queue while
                // g's ucontext is still mid-save, a use-after-resume race
                // (the generalized form of the stack_vacated lesson from
                // T5a.1: never let another thread act on a context before
                // the switch away from it has actually completed).
                //
                // g_block_lock linearizes this arm against wake_cb: whichever
                // of the two runs first sets its own flag (parked here,
                // woken there) and reads the other's under the SAME lock.
                //   - If wake_cb already ran (woken==1 when we take the
                //     lock): we see wake_now=1 here and immediately requeue.
                //     wake_cb, having found parked==0 at the time, did NOT
                //     requeue (push_now was false) -- so exactly one requeue
                //     happens, from this arm (no early-wake was possible,
                //     since wake_cb's push_now check reads parked which we
                //     had not yet set).
                //   - If wake_cb has not fired yet: we set parked=1, see
                //     wake_now=0, and do nothing further -- wake_cb, when it
                //     eventually fires and takes the lock, will see
                //     parked==1 and do the single rq_push itself.
                // Either way exactly one of {this arm, wake_cb} performs the
                // rq_push -- never both, never neither (lost-wake is
                // impossible because both sides check under the same lock
                // before deciding whether to skip the push; double-requeue
                // is impossible because only the side that observes the
                // other's flag already set pushes, and only one side can be
                // "the one that observes it already set" for a given pair of
                // lock acquisitions since the lock serializes them).
                os_mutex_lock(&g_block_lock);
                g->parked = 1;
                int wake_now = g->woken;
                os_mutex_unlock(&g_block_lock);
                if (wake_now) {
                    g->state = NYX_GOROUTINE_READY;
                    rq_push(&w->queue, g);
                }
                // else: wake_cb will requeue once it observes parked==1.
            }
        } else {
            // No work available. Rather than a fixed os_yield() every
            // time, try to become the designated poller for this tick: at
            // most one worker holds g_poller_lock and drives the shared
            // event loop, which both makes progress on any pending
            // timers/fds AND (via wake_cb) requeues any goroutine whose
            // wait just became ready. If another worker already holds the
            // poller role, fall back to a plain yield so we don't busy-spin.
            if (g_loop && os_mutex_trylock(&g_poller_lock) == 0) {
                nyx_event_loop_run_once(g_loop, NYX_POLLER_TICK_MS);
                os_mutex_unlock(&g_poller_lock);
            } else {
                os_yield();
            }
        }
    }

    return NULL;
}

// ============================================================
// W3 paso 0b — el colector escaneando el stack EQUIVOCADO
// ============================================================
// Boehm escanea el stack de cada thread suspendido como el rango
// [sp_capturado, thread->stack_end), donde `stack_end` es el extremo frío del
// stack NATIVO del pthread, fijado cuando el thread se registró. Un worker que
// fue suspendido mientras corría una goroutine tiene su sp DENTRO del stack de
// la goroutine (otro mapeo, en otra parte del espacio virtual): el rango
// resultante no es un stack — son decenas de MB de VA arbitraria entre ambos
// mapeos, con guard pages `PROT_NONE` (nuestras y las de glibc) en el medio.
// El colector faultea al leerlas. Ese era el "bug 2" del paso 0: ~50% de
// muertes en cualquier programa con goroutines bajo carga.
//
// El escaneo por-thread es además REDUNDANTE para una goroutine: su stack útil
// entero ya está registrado con GC_add_roots (goroutine_stack_publish, llamado
// desde spawn_internal; el camino DIFERIDO de win32 publica desde
// goroutine_entry, ADENTRO de la fiber y antes del primer bytecode — ruling
// P2; el re-chequeo de worker_thread es cinturón), y el volcado de registros que hace el
// handler de suspensión de Boehm cae por debajo del sp, o sea DENTRO de ese
// mismo root. Anular el escaneo del thread cuando el sp cae en un stack de
// goroutine no pierde ni una raíz.
// ⚠️ El corrector decide con el par (`g->stack`, `g->stack_size`) — el CACHE
// del rango que `os_ctx_stack` reporta, publicado en ese orden (tamaño
// primero, puntero con release después) justamente para que este código, que
// corre con el mundo parado y no puede llamar a la capa, nunca vea un rango a
// medio publicar. Si alguien cambia dónde o cómo se publica, esto se rompe en
// silencio (colección prematura), no con un crash.
// EN: the corrector decides on the (g->stack, g->stack_size) pair — the CACHE
// of the range os_ctx_stack reports, published size-first/pointer-release-second
// precisely so this code (world stopped, cannot call into the layer) never sees
// a half-published range. Changing where or how it is published breaks this
// silently (premature collection), not with a crash.
//
// ⚠️ INVARIANTE QUE ESTO APOYA — leer antes de tocar `worker_thread`:
// anular el escaneo también deja SIN escanear, ese ciclo, los frames NATIVOS
// del worker (los de `worker_thread`, los de la libgc que lo llamó y los de
// cualquier función que `worker_thread` llame en ese tramo — hoy
// `goroutine_stack_publish` en el camino diferido). Es seguro por una razón
// concreta y frágil: en el punto de swap ahí viven únicamente `w`
// —alcanzable desde el global `g_scheduler`— y `g` —alcanzable desde el
// registro global `g_reg` mientras la goroutine no fue reaped—; los locals del
// publish son direcciones de stack y tamaños, no objetos GC. Todo lo vivo es
// alcanzable por otro camino, así que no importa que ese stack no se escanee.
// Cualquiera que agregue a `worker_thread` (o a lo que llame desde ahí) un
// local que apunte a un objeto GC SIN otra raíz que lo sostenga rompe esto, y
// el síntoma sería una colección prematura silenciosa, no un crash. Si hace
// falta ese local, hay que anclarlo (global, o campo de `NyxWorker`, que ya es
// parte de `g_scheduler`).
// EN: WARNING -- invariant this rests on, read before touching worker_thread:
// voiding the scan also leaves the worker's NATIVE frames unscanned for that
// cycle. Safe only because at the swap point they hold just `w` (reachable via
// the global g_scheduler) and `g` (via the global g_reg registry until reaped).
// Adding a local in worker_thread that points to a GC object with no other root
// breaks this, and the symptom is a silent premature collection, not a crash.
//
// `GC_set_sp_corrector` es el gancho que Boehm expone exactamente para esto
// ("crude integration with certain coroutine implementations"): se invoca al
// empujar los stacks, con el GC lock tomado y el mundo parado, y puede corregir
// el sp capturado. Corregirlo a `stack_end` deja el rango vacío.
//
// Se decide POR DIRECCIÓN, no por bandera: si el sp cae dentro del stack de la
// goroutine que ese worker tiene en `current`, el thread suspendido es ese
// worker y está sobre ese stack. Por eso NO hay ventana de carrera — a
// diferencia de mover `stack_end` alrededor de cada `os_ctx_swap`, donde entre
// el cambio y el switch (o al revés) el par (sp, stack_end) queda cruzado y el
// colector puede suspender justo ahí. Además cuesta CERO en el camino caliente:
// el corrector corre una vez por thread por colección, no una vez por switch.
//
// Alcance conocido: el corrector ajusta el sp y NADA más — en particular ignora
// `traced_stack_sect`, la lista de secciones que Boehm arma con GC_do_blocking /
// GC_call_with_gc_active. Hoy Nyx no crea ninguna desde una goroutine, así que
// la lista está vacía en este camino. Con una libgc release el desajuste sería
// inofensivo; con GC_ASSERTIONS habilitadas, un sp corregido "más frío" que una
// sección viva dispararía el assert de GC_push_all_stack_sections. Si algún día
// el runtime usa esas APIs dentro de goroutines, esto hay que revisarlo.
// EN: known scope: the corrector adjusts the sp and nothing else -- notably it
// ignores `traced_stack_sect` (sections built by GC_do_blocking /
// GC_call_with_gc_active). Nyx creates none from a goroutine today, so that list
// is empty on this path; harmless on a release libgc, but with GC_ASSERTIONS on,
// a corrected sp colder than a live section would trip the assert in
// GC_push_all_stack_sections. Revisit if those APIs ever run inside goroutines.
//
// EN: Boehm scans each suspended thread's stack as [captured_sp,
// thread->stack_end), where stack_end is the cold end of the pthread's NATIVE
// stack. A worker suspended while running a goroutine has its sp INSIDE the
// goroutine's stack (a different mapping): the resulting range isn't a stack at
// all -- it's tens of MB of arbitrary VA spanning PROT_NONE guard pages (ours
// and glibc's), and the collector faults reading them. The per-thread scan is
// also redundant for a goroutine: its whole usable stack is already a GC root
// (goroutine_stack_publish, called from spawn_internal -- win32's DEFERRED
// path publishes from goroutine_entry, INSIDE the fiber, before the first
// bytecode (P2 ruling); worker_thread's re-check is a belt)
// and Boehm's suspend handler spills registers
// below the sp, i.e. inside that same root. GC_set_sp_corrector is Boehm's hook
// for exactly this case; correcting the sp to stack_end voids the range. The
// decision is BY ADDRESS, not by flag, so there is no race window (unlike
// moving stack_end around each os_ctx_swap), and it costs nothing per switch.
#if defined(GC_VERSION_MAJOR) \
    && (GC_VERSION_MAJOR > 8 \
        || (GC_VERSION_MAJOR == 8 && GC_VERSION_MINOR >= 2))
#  define NYX_HAVE_GC_SP_CORRECTOR 1
#endif

#ifdef NYX_HAVE_GC_SP_CORRECTOR
// gc.h gatea GC_set_sp_corrector detrás de GC_THREADS, y definir GC_THREADS
// acá arrastraría <pthread.h> (vía gc_pthread_redirects.h) justo al archivo que
// el ratchet de W1 mantiene limpio de headers de plataforma — ver el bloque de
// includes arriba. La API es pública, estable desde libgc 8.2 y exportada
// (`nm -D libgc.so.1`), así que se declara acá con su firma exacta en vez de
// romper esa frontera. Si alguien define GC_THREADS antes de este archivo, se
// usa el typedef que ya trajo gc.h.
// EN: gc.h gates GC_set_sp_corrector behind GC_THREADS, and defining
// GC_THREADS here would drag <pthread.h> (via gc_pthread_redirects.h) into the
// very file W1's ratchet keeps free of platform headers. The API is public,
// stable since libgc 8.2 and exported, so we declare it here rather than break
// that boundary.
#  ifdef GC_THREADS
typedef GC_sp_corrector_proc nyx_gc_sp_corrector_proc;
#  else
typedef void (GC_CALLBACK * nyx_gc_sp_corrector_proc)(void** /* sp_ptr */,
                                                      void*  /* pthread_id */);
GC_API void GC_CALL GC_set_sp_corrector(nyx_gc_sp_corrector_proc);
GC_API nyx_gc_sp_corrector_proc GC_CALL GC_get_sp_corrector(void);
#  endif

#  ifdef _WIN32
// W3 Task 3 (P3) — el núcleo del corrector win32 vive en os_win32.c (es el
// único que conoce el registro tid→rango nativo, poblado por
// os_ctx_thread_init). Declaración local con tipos neutrales, mismo
// precedente que las declaraciones de GC_set_sp_corrector de arriba: esto es
// política de GC (la excepción permitida del ratchet), no una API win32
// filtrándose al scheduler. Con el bdwgc de vcpkg SIN parchear el corrector
// jamás se invoca (el call site de win32_threads.c está gateado a pthreads) —
// el parche de 2 hunks vive en docs/design/spikes/ y el degradado es el
// aviso RUIDOSO de nyx_gc_sp_corrector_install, que en ese caso dispara
// porque GC_get_sp_corrector devuelve NULL.
// EN: W3 Task 3 (P3) — the win32 corrector core lives in os_win32.c (sole
// owner of the tid→native-range registry populated by os_ctx_thread_init).
// Local declaration with neutral types, same precedent as the local
// GC_set_sp_corrector declarations above: this is GC policy (the ratchet's
// allowed exception), not a win32 API leaking into the scheduler. Against
// unpatched vcpkg bdwgc the corrector is never invoked (the win32_threads.c
// call site is gated to pthreads) — the 2-hunk patch lives in
// docs/design/spikes/ and the degradation is the LOUD warning in
// nyx_gc_sp_corrector_install (GC_get_sp_corrector returns NULL there).
// (Fix round 1 M4: la declaración vive en el header interno compartido, una
// sola fuente para scheduler y test. / single shared declaration.)
#include "os/nyx_os_win32.h"
#  endif

#if defined(NYX_RUNTIME_TESTING) && !defined(_WIN32)
// (El !defined(_WIN32) es de W3 Task 3: la red pertenece a la rama de
// INCLUSIÓN posix del corrector — la rama por exclusión de win32 tiene su
// propia detección y no la llama. Nota Task 4: el cuerpo ya usa os_fd_write,
// que SÍ existe en win32 — el guard se sostiene solo por la primera razón.
// / The !_WIN32 guard is W3 Task 3's: the net belongs to the corrector's
// posix INCLUSION branch — win32's exclusion branch has its own detection
// and never calls this. Task 4 note: the body now uses os_fd_write, which
// DOES exist on win32 — the guard stands on the first reason alone.)
// M5 (hallazgo del review del paso 0b, ficha TASKS.md "red de seguridad para
// un sp sin match en el corrector"): red de seguridad SOLO-TESTING, costo
// CERO en producción (todo el bloque muere con el `#ifdef`). El corrector de
// arriba, si el sp no cae en el stack de NINGUNA goroutine, hoy deja el sp
// intacto y listo — es el camino correcto para un worker corriendo sobre su
// propio stack nativo. Pero es EXACTAMENTE el mismo camino mudo que un futuro
// bug tomaría si algo corriera sobre un stack no-nativo sin haber seteado
// `w->current` (el invariante del que depende todo el corrector): el
// fallback silencioso ES el bug (medido 8/10 SEGV en la ablación del paso
// 0b). Esta red no cambia el comportamiento — nunca toca el sp — solo avisa
// si el sp no matchea NADA conocido: ni el stack de una goroutine (loop de
// arriba) ni la ventana nativa esperada de ningún worker registrado
// (`[gc_stack_end - 16MB, gc_stack_end]`, generosa: cubre cualquier stack
// nativo real, sea cual sea su tamaño configurado por el sistema).
// EN: M5 (paso 0b review finding, TASKS.md ficha "safety net for an
// unmatched sp in the corrector"): TESTING-ONLY safety net, ZERO cost in
// production (the whole block dies with the `#ifdef`). The corrector above,
// when the sp matches no goroutine stack, leaves it alone today -- correct
// for a worker running on its own native stack. But it is the EXACT same
// silent path a future bug would take if something ran on a non-native
// stack without setting `w->current` (the invariant the whole corrector
// rests on): the silent fallback IS the bug (measured 8/10 SEGV in the paso
// 0b ablation). This net changes nothing -- never touches the sp -- it only
// warns when the sp matches nothing known: neither a goroutine stack (loop
// above) nor any registered worker's expected native window
// (`[gc_stack_end - 16MB, gc_stack_end]`, generous enough to cover any real
// native stack regardless of its configured size).
//
// Falso positivo CONOCIDO Y ACEPTADO: `GC_set_sp_corrector` corre para TODO
// thread suspendido del proceso, no solo los workers del scheduler — un
// thread ajeno (el main del programa, o cualquier otro thread OS crudo que
// no sea worker) nunca va a matchear el stack de una goroutine NI la ventana
// de ningún worker, así que esta red también avisa por él, aunque no haya
// ninguna regresión real. Distinguir "es uno de nuestros workers" pediría
// comparar `pthread_id` (el 2º argumento del callback, hoy ignorado a
// propósito) contra `w->thread`, y eso exige exponer una comparación
// portable de identidad de thread desde la capa (`os_thread_equal`, que no
// existe) — la misma limitación que el concern #3 del review del paso 0b ya
// dejó fichada como fuera de alcance. Aceptable acá porque el costo es CERO
// en producción y el mensaje ya dice "posible", nunca "confirmada".
// EN: KNOWN AND ACCEPTED false positive: `GC_set_sp_corrector` runs for
// EVERY suspended thread in the process, not just scheduler workers — a
// foreign thread (the program's main thread, or any other raw OS thread that
// isn't a worker) will never match a goroutine's stack nor any worker's
// window either, so this net also warns for it even though nothing
// regressed. Telling "this is one of our workers" apart would mean comparing
// `pthread_id` (the callback's 2nd argument, ignored on purpose today)
// against `w->thread`, which needs a portable thread-identity comparison
// exposed from the layer (`os_thread_equal`, which doesn't exist) — the same
// limitation already flagged as concern #3 of the paso 0b review, out of
// scope here. Acceptable because the cost is ZERO in production and the
// message already says "possible", never "confirmed".
//
// Corre en el MISMO contexto que el corrector: mundo parado, GC lock tomado.
// Nada de malloc ni stdio bufferizado -- os_fd_write (write crudo en posix, _write en win32) y formateo manual,
// mismo patrón que `nyx_stack_fault_on_fault` arriba en este archivo.
// EN: Runs in the SAME context as the corrector: world stopped, GC lock
// held. No malloc, no buffered stdio -- raw write(2) and manual formatting,
// same pattern as `nyx_stack_fault_on_fault` above in this file.
#define NYX_SP_CORRECTOR_NET_WINDOW ((ptrdiff_t)16 * 1024 * 1024)
static void nyx_gc_sp_corrector_testing_net(char* sp) {
    for (int i = 0; i < g_scheduler.num_workers; i++) {
        NyxWorker* w = &g_scheduler.workers[i];
        char* end = __atomic_load_n(&w->gc_stack_end, __ATOMIC_ACQUIRE);
        if (!end) continue;
        if (sp <= end && sp >= end - NYX_SP_CORRECTOR_NET_WINDOW) {
            return;   // dentro de la ventana nativa esperada de ALGÚN worker: normal
        }
    }
    static const char m1[] = "[nyx] sp_corrector: sp 0x";
    int64_t w0 = os_fd_write(2, m1, (int64_t)(sizeof(m1) - 1));
    char buf[24];
    uintptr_t v = (uintptr_t)sp;
    int p = 0;
    if (v == 0) { buf[p++] = '0'; }
    else {
        char tmp[16]; int t = 0;
        while (v > 0 && t < 16) {
            int d = (int)(v & 0xF);
            tmp[t++] = (char)(d < 10 ? ('0' + d) : ('a' + d - 10));
            v >>= 4;
        }
        while (t > 0) buf[p++] = tmp[--t];
    }
    w0 = os_fd_write(2, buf, (int64_t)p);
    static const char m2[] = " fuera de todo stack conocido — posible regresión del invariante current\n";
    w0 = os_fd_write(2, m2, (int64_t)(sizeof(m2) - 1));
    (void)w0;
}
#endif

// Corre CON EL MUNDO PARADO y el GC lock tomado: nada de locks, nada de
// allocación. Solo lecturas de estado que el thread dueño no puede estar
// mutando (está suspendido), más comparaciones de dirección.
// EN: Runs WITH THE WORLD STOPPED and the GC lock held: no locks, no
// allocation -- only reads of state its owner thread cannot be mutating (it is
// suspended) plus address comparisons.
static void GC_CALLBACK nyx_gc_sp_corrector(void** sp_ptr, void* pthread_id) {
#ifdef _WIN32
    // W3 Task 3 — RULING P3 (decisión del coordinador): en win32 se decide
    // POR EXCLUSIÓN, no por inclusión. El loop de inclusión de abajo (sp ∈
    // stack de la goroutine `current`) dejaría sin match el sp de una fiber
    // en la ventana pre-publicación (g->stack todavía NULL durante la primera
    // entrada) — y un sp-en-fiber sin corregir reactiva EXACTAMENTE el
    // mecanismo que el spike midió: may_be_in_stack sondea la fiber y
    // GC_push_stack_for empuja [sp_fiber, stack_base_nativo) — gigabytes de
    // VA arbitraria — al bucle de carga de GC_mark_from (muertes rc=97,
    // sabores A y B, simbolizados a mark.c:716/726). La exclusión (sp fuera
    // del rango NATIVO cacheado de ese thread ⇒ corregir a su stack_base)
    // cubre fibers conocidas, desconocidas y esa ventana, y produce el
    // comportamiento que la ablación X4 validó con 0/120 muertes: WARN
    // preservado + escaneo clampeado del stack nativo solo. El 2º argumento
    // acá ES la identidad (thread->id con el parche): la decisión por
    // dirección pura no alcanza en este modelo — hace falta saber QUÉ thread
    // para comparar contra SU rango nativo.
    // EN: P3 RULING — win32 decides BY EXCLUSION. The inclusion loop below
    // would leave a fiber sp unmatched during the pre-publish window
    // (g->stack still NULL on first entry), re-enabling exactly the measured
    // death mechanism (GC_mark_from consuming [sp_fiber, native_base)).
    // Exclusion (sp outside the thread's cached NATIVE range ⇒ correct to its
    // native stack_base) covers known fibers, unknown ones and that window —
    // the behaviour ablation X4 validated (0/120 deaths, WARN preserved,
    // clamped native-only scan). The 2nd argument IS the identity here
    // (thread->id with the patch): pure by-address does not suffice in this
    // model — the thread must be known to compare against ITS native range.
    nyx_os_win32_sp_correct(sp_ptr, (uint32_t)(uintptr_t)pthread_id);
#else
    (void)pthread_id;   // la identificación por dirección es exacta y portable
    char* sp = (char*)*sp_ptr;
    if (!sp) return;
    for (int i = 0; i < g_scheduler.num_workers; i++) {
        NyxWorker* w = &g_scheduler.workers[i];
        // RELAXED alcanza y no hace falta más: el valor NO se usa para decidir
        // nada por sí solo — se usa para OBTENER un rango que después se
        // verifica contra el sp. Un `current` rancio (viejo o nuevo) da un rango
        // que simplemente no contiene al sp, y el chequeo de abajo lo descarta.
        // Lo que sí importa es que la lectura no se rompa ni se reordene a mano:
        // por eso atómica y no un acceso pelado.
        // EN: RELAXED is enough: the value never decides anything on its own --
        // it yields a range that is then checked against the sp. A stale
        // `current` (old or new) yields a range that simply doesn't contain the
        // sp, and the check below discards it.
        NyxGoroutine* g = __atomic_load_n(&w->current, __ATOMIC_RELAXED);
        char* end = __atomic_load_n(&w->gc_stack_end, __ATOMIC_ACQUIRE);
        if (!g || !g->stack || !end) continue;
        // `<=` en el extremo alto a propósito: un sp exactamente en el tope
        // (stack recién armado, sin frames) también está EN este stack, y
        // dejarlo pasar devolvería el rango peligroso [gtop, stack_end_nativo).
        // No hay ambigüedad con el mapeo vecino: el área útil del siguiente
        // stack empieza una guard más arriba, nunca en este mismo byte.
        // EN: `<=` at the high end on purpose: an sp exactly at the top (freshly
        // built stack, no frames yet) is still ON this stack, and letting it
        // through would hand back the dangerous [gtop, native_stack_end) range.
        // No ambiguity with the neighbouring mapping: the next stack's usable
        // area starts a guard further up, never at this very byte.
        if (sp >= g->stack && sp <= g->stack + g->stack_size) {
            // El sp está en el stack de una goroutine: ese stack ya es root
            // entero. Rango vacío -> Boehm no escanea nada por este thread.
            *sp_ptr = end;
            return;
        }
    }
#ifdef NYX_RUNTIME_TESTING
    // M5: ningún match arriba -- red SOLO-testing, ver comentario de
    // nyx_gc_sp_corrector_testing_net. No cambia nada del camino real.
    nyx_gc_sp_corrector_testing_net(sp);
#endif
#endif /* _WIN32 (exclusión) / !_WIN32 (inclusión) */
}
#endif

#ifdef NYX_RUNTIME_TESTING
// Test seam (solo bajo -DNYX_RUNTIME_TESTING, nunca en binarios de producción):
// aplica el corrector a un sp dado y devuelve el valor resultante. Sin esto el
// único modo de testear la corrección es esperar a que el layout de mmap ponga
// una guard page dentro del rango — probabilístico, y un test que a veces no
// prueba nada es un test que no sirve de gate.
// EN: test seam (only under -DNYX_RUNTIME_TESTING, never in production
// binaries): applies the corrector to a given sp and returns the result.
// Without it the only way to test the correction is to wait for mmap's layout
// to drop a guard page inside the range -- probabilistic, and a test that
// sometimes proves nothing is not a gate.
void* nyx_scheduler_debug_correct_sp(void* sp) {
#ifdef NYX_HAVE_GC_SP_CORRECTOR
    void* out = sp;
    nyx_gc_sp_corrector(&out, NULL);
    return out;
#else
    return sp;
#endif
}

// Test seam M5: expone el stack_end nativo (`gc_stack_end`) de un worker ya
// arrancado, para que un test pueda construir un sp "dentro de la ventana
// nativa esperada" (la red de arriba) de forma determinista, sin depender de
// suspender ese worker en el momento justo. NULL si el índice es inválido o
// el worker todavía no corrió (gc_stack_end se puebla al arrancar el
// thread — ver worker_thread).
// EN: M5 test seam: exposes a started worker's native stack_end
// (`gc_stack_end`) so a test can deterministically build an sp "inside the
// expected native window" (the net above) without racing a real suspend.
// NULL if the index is invalid or the worker hasn't run yet (gc_stack_end is
// populated at thread startup -- see worker_thread).
void* nyx_scheduler_debug_worker_stack_end(int idx) {
    if (idx < 0 || idx >= g_scheduler.num_workers) return NULL;
    return __atomic_load_n(&g_scheduler.workers[idx].gc_stack_end, __ATOMIC_ACQUIRE);
}
#endif

// Instala el corrector una sola vez. Si la libgc de turno no lo soporta
// (targets sin STACKPTR_CORRECTOR_AVAILABLE), el getter devuelve NULL y lo
// decimos en voz alta: degradar mudo acá es volver al SEGV del 50%.
// EN: install once; if the runtime libgc doesn't support it the getter returns
// NULL and we say so out loud -- degrading silently here means going back to
// the 50% SEGV.
static void nyx_gc_sp_corrector_install(void) {
#ifdef NYX_HAVE_GC_SP_CORRECTOR
    GC_set_sp_corrector(nyx_gc_sp_corrector);
    if (GC_get_sp_corrector() != nyx_gc_sp_corrector) {
        fprintf(stderr, "[nyx] esta libgc no soporta GC_set_sp_corrector: "
                        "el colector puede faultear escaneando stacks de goroutine\n");
    }
#else
    fprintf(stderr, "[nyx] libgc < 8.2 sin GC_set_sp_corrector: "
                    "el colector puede faultear escaneando stacks de goroutine\n");
#endif
}

// ============================================================
// Public API
// ============================================================

void nyx_scheduler_init(int num_workers) {
    // F4 (review S4): resolver tamaño de stack + page size ACÁ, donde el
    // proceso es single-thread — así el handler de señal nunca cae en el
    // camino frío (getenv/strtol/sysconf no son async-signal-safe).
    nyx_goroutine_stack_size();
    if (g_scheduler_initialized) return;

    if (num_workers <= 0) num_workers = NYX_NUM_WORKERS;
    if (num_workers > NYX_NUM_WORKERS) num_workers = NYX_NUM_WORKERS;

    memset(&g_scheduler, 0, sizeof(g_scheduler));
    g_scheduler.num_workers = num_workers;
    g_scheduler.running = 0;
    os_mutex_init(&g_scheduler.global_lock);

    for (int i = 0; i < num_workers; i++) {
        g_scheduler.workers[i].id = i;
        g_scheduler.workers[i].active = 0;
        g_scheduler.workers[i].current = NULL;
        rq_init(&g_scheduler.workers[i].queue);
    }

    // W3 paso 0b: antes de que exista el primer worker (y por lo tanto antes
    // de que ningún sp pueda caer en un stack de goroutine).
    nyx_gc_sp_corrector_install();

    g_scheduler_initialized = 1;
}

void nyx_scheduler_start(void) {
    if (!g_scheduler_initialized) nyx_scheduler_init(NYX_NUM_WORKERS);

    // Create the shared event loop before any worker can go idle and try to
    // become the designated poller (g_loop must be non-NULL by then).
    if (!g_loop) g_loop = nyx_event_loop_create();

    g_scheduler.running = 1;
    for (int i = 0; i < g_scheduler.num_workers; i++) {
        g_scheduler.workers[i].active = 1;
        os_thread_create(&g_scheduler.workers[i].thread,
                         worker_thread, &g_scheduler.workers[i]);
    }
}

void nyx_scheduler_stop(void) {
    g_scheduler.running = 0;
    for (int i = 0; i < g_scheduler.num_workers; i++) {
        g_scheduler.workers[i].active = 0;
        os_thread_join(&g_scheduler.workers[i].thread);
    }
    if (g_loop) {
        nyx_event_loop_destroy(g_loop);
        g_loop = NULL;
    }
}

// Shared body of nyx_goroutine_spawn / nyx_goroutine_spawn_detached. `detached`
// is stamped onto the goroutine BEFORE it is queued (reg_insert + rq_push),
// i.e. before any worker can possibly run it -- so an instant-completing
// goroutine can never observe detached==0 in the worker's DONE arm and skip
// the self-reap (see the DONE arm in worker_thread and try_reap_detached_locked).
static int64_t spawn_internal(int64_t (*fn)(void*), void* arg, int detached) {
    if (!g_scheduler_initialized) nyx_scheduler_init(NYX_NUM_WORKERS);
    if (!g_scheduler.running) nyx_scheduler_start();

    // Allocate goroutine. GC_MALLOC (not malloc): the struct can hold
    // GC-traceable pointers (closure env in `arg`, a GC object in `result`)
    // and must be scanned; it is NEVER free()'d — once reg_remove'd by join
    // it becomes unreachable and the collector reclaims it on its own.
    NyxGoroutine* g = (NyxGoroutine*)GC_MALLOC(sizeof(NyxGoroutine));
    if (!g) return -1;
    // GC_MALLOC already zeroes memory, but be explicit/defensive.
    memset(g, 0, sizeof(NyxGoroutine));

    os_mutex_lock(&g_scheduler.global_lock);
    g->id = ++g_scheduler.goroutine_count;
    os_mutex_unlock(&g_scheduler.global_lock);

    g->state = NYX_GOROUTINE_READY;
    g->fn = fn;
    g->arg = arg;
    g->result = 0;
    g->detached = detached;

    // ctx v2 (W3): el contexto se crea CON su stack adentro (mapeo RW + guard
    // multi-página al fondo — el stack crece hacia abajo, así que la guard va
    // en las páginas MÁS BAJAS; el handler de SIGSEGV la reconoce y reporta
    // overflow en vez del SEGV mudo de antes). Pool primero: un ctx reciclado
    // ya tiene su mapeo Y su guard puestos, así que `os_ctx_remake` le pone
    // una entry nueva sin un solo syscall. `g` no necesita free en los caminos
    // de error: es GC_MALLOC'd y aún no es alcanzable.
    // EN: ctx v2 (W3): the context is created WITH its stack inside (RW mapping
    // + multi-page guard at the bottom). Pool first: a recycled ctx already has
    // its mapping AND guard, so os_ctx_remake gives it a fresh entry with zero
    // syscalls.
    size_t stack_sz = nyx_goroutine_stack_size();
    os_ctx_t* ctx = ctx_pool_get();
    if (ctx) {
        if (os_ctx_remake(ctx, goroutine_entry, g) != 0) {
            // Un remake que falla deja el ctx con su mapeo pero sin entry
            // válida: no vuelve al pool (nadie podría usarlo), se libera.
            os_ctx_free(ctx);
            return -1;
        }
    } else {
        // GC_MALLOC (no malloc): el objeto tiene que ser alcanzable por el
        // colector y lo mantienen vivo `g` o el array del pool. La alineación
        // de 16 que os_ctx_t exige es la MISMA que ya se le pedía a
        // GC_MALLOC(sizeof(NyxGoroutine)) cuando el ctx iba embebido — no hay
        // supuesto nuevo (Boehm aloca en gránulos de 2 palabras).
        // EN: GC_MALLOC (not malloc): the object must be collector-reachable and
        // is kept alive by `g` or the pool array. The 16-byte alignment os_ctx_t
        // requires is the SAME one GC_MALLOC(sizeof(NyxGoroutine)) already had to
        // provide when the ctx was embedded — no new assumption.
        ctx = (os_ctx_t*)GC_MALLOC(sizeof(os_ctx_t));
        if (!ctx) return -1;
        if (os_ctx_make(ctx, stack_sz, goroutine_entry, g) != 0) return -1;
    }
    g->context = ctx;
    nyx_stack_guard_install();

    // Publica el rango: guard al registro de diagnóstico + área útil como GC
    // root, ANTES de que la goroutine pueda correr (todavía no está encolada).
    // En POSIX esto siempre publica; el retorno 0 (plataforma que no conoce el
    // rango hasta la primera entrada — win32) lo cubre el camino diferido de
    // worker_thread. Ver goroutine_stack_publish.
    // EN: publishes the range (guard registry + GC root) BEFORE the goroutine
    // can run. On POSIX it always publishes; a 0 return (platform that only
    // learns the range on first entry — win32) is covered by worker_thread's
    // deferred path.
    goroutine_stack_publish(g);

    // Publish to the join registry before it can be observed running/done.
    reg_insert(g);

    // Queue to worker with least work (simple round-robin)
    int min_worker = 0;
    int min_count = g_scheduler.workers[0].queue.count;
    for (int i = 1; i < g_scheduler.num_workers; i++) {
        if (g_scheduler.workers[i].queue.count < min_count) {
            min_count = g_scheduler.workers[i].queue.count;
            min_worker = i;
        }
    }
    rq_push(&g_scheduler.workers[min_worker].queue, g);

    return (int64_t)g->id;
}

int64_t nyx_goroutine_spawn(int64_t (*fn)(void*), void* arg) {
    return spawn_internal(fn, arg, /*detached=*/0);
}

// Track 5a.2c: see the header comment for the full contract.
int64_t nyx_goroutine_spawn_detached(int64_t (*fn)(void*), void* arg) {
    return spawn_internal(fn, arg, /*detached=*/1);
}

// Track 5a.2c: mark an already-spawned goroutine as fire-and-forget. See the
// header comment for the full contract and scheduler.c's module comment /
// try_reap_detached_locked for the double-free avoidance argument: `claimed`
// (set exactly once, under g_reg_lock) is the single arbiter shared by join,
// the worker's own DONE-arm reaper, and this function.
void nyx_goroutine_detach(int64_t gid) {
    // Lock order join -> reg, same as try_claim_locked / try_reap_detached_locked.
    os_mutex_lock(&g_join_lock);
    os_mutex_lock(&g_reg_lock);
    NyxGoroutine* g = reg_lookup_locked(gid);
    if (!g || g->claimed) {
        // Unknown id, or already claimed (already joined, or already reaped
        // by a previous detach/the worker's DONE-arm reaper): no-op. This is
        // the case where the worker's DONE arm ran BEFORE this detach() call
        // could set `detached` -- with detached==0 at that time it correctly
        // did not self-reap, but if a joiner got there first `claimed` is
        // already set and there is nothing left for us to do.
        os_mutex_unlock(&g_reg_lock);
        os_mutex_unlock(&g_join_lock);
        return;
    }
    g->detached = 1;
    // If it already finished AND vacated its stack, nobody else is ever
    // going to reap it (a join is not coming -- the caller just chose to
    // detach instead), so claim it ourselves, right here. This is safe:
    // stack_vacated implies the worker's own swapcontext() back to its
    // scheduler has already returned, i.e. no OS thread is executing on
    // g->stack anymore -- the same precondition try_claim_locked/join relies
    // on. If it's NOT done yet, we just leave detached=1 set and let the
    // worker's DONE arm (try_reap_detached_locked) claim+reap it later.
    int can_reap = (g->state == NYX_GOROUTINE_DONE && g->stack_vacated);
    if (can_reap) {
        g->claimed = 1;
        reg_remove_locked(g);
    }
    os_mutex_unlock(&g_reg_lock);
    os_mutex_unlock(&g_join_lock);
    // reap() runs off g's own stack unconditionally here: if can_reap is
    // true, g finished and vacated its stack already (we are on the calling
    // thread's own stack, never g's), so it's always safe.
    if (can_reap) reap(g);
}

void nyx_goroutine_yield(void) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) return;

    NyxGoroutine* g = w->current;
    g->state = NYX_GOROUTINE_READY;
    os_ctx_swap(g->context, &w->scheduler_ctx);
}

int64_t nyx_goroutine_join(int64_t gid) {
    int64_t result = 0;

    // Two dispatch paths, chosen by who's calling:
    //   - a worker running a goroutine that itself calls join() must NOT
    //     block the OS thread (that would starve the scheduler) — it yields
    //     back to the scheduler and retries, like a cooperative spin.
    //   - anything else (typically main()) blocks on the condvar, woken by
    //     goroutine_entry's broadcast when ANY goroutine completes.
    if (g_current_worker && g_current_worker->current) {
        for (;;) {
            os_mutex_lock(&g_join_lock);
            int rc = try_claim_locked(gid, &result);
            // Never hold g_join_lock across nyx_goroutine_yield (it
            // swapcontext()s back to the scheduler) — release first.
            os_mutex_unlock(&g_join_lock);
            if (rc == 1) return result;
            if (rc == -1) return 0; // unknown id / already joined elsewhere
            nyx_goroutine_yield();
        }
    } else {
        os_mutex_lock(&g_join_lock);
        for (;;) {
            int rc = try_claim_locked(gid, &result);
            if (rc == 1) { os_mutex_unlock(&g_join_lock); return result; }
            if (rc == -1) { os_mutex_unlock(&g_join_lock); return 0; }
            // Mesa-monitor semantics: re-check the predicate (try_claim)
            // after every wakeup, since cond_wait can have spurious wakeups
            // or wake for a different goroutine's completion.
            os_cond_wait(&g_join_cv, &g_join_lock);
        }
    }
}

// ============================================================
// Block/wake entry points (Track 5a.2b)
// ============================================================

// Suspend the calling goroutine for ~ms milliseconds, then resume. Backed by
// a one-shot event-loop timer + the block/wake handshake (see wake_cb and
// the BLOCKED arm in worker_thread) -- the OS thread is NOT tied up sleeping;
// it goes back to running other goroutines/polling until the timer fires.
void nyx_goroutine_sleep(int64_t ms) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) {
        // Not running on a goroutine (e.g. called from main / a plain OS
        // thread outside the scheduler): there is no context to suspend, so
        // fall back to a real sleep. Documented fallback per the design.
        os_sleep_ms(ms);
        return;
    }

    NyxGoroutine* g = w->current;
    g->state = NYX_GOROUTINE_BLOCKED;
    g->woken = 0;
    g->parked = 0;
    g->home_worker = w->id;
    // Registered BEFORE the swapcontext(): if the timer were somehow to fire
    // before we suspend, wake_cb would just see parked==0 and defer the
    // requeue to the BLOCKED arm (no early-wake risk -- see its comment).
    nyx_event_loop_add_timer(g_loop, (int)ms, wake_cb, g);
    // NO lock held here -- g_block_lock is only ever taken inside the
    // worker's BLOCKED arm (after this returns to the scheduler) and inside
    // wake_cb, never across this call.
    os_ctx_swap(g->context, &w->scheduler_ctx);
    // Resumed here once the worker's BLOCKED arm (or a subsequent pop from
    // the run queue) has scheduled us again -- i.e. after the timer fired
    // and the handshake completed.
}

// Suspend the calling goroutine until `fd` becomes ready for `events`
// (NYX_EV_READ/NYX_EV_WRITE), then resume. Returns 0 once woken (the caller
// is expected to retry its syscall -- e.g. read()/write() -- since readiness
// doesn't guarantee the full requested transfer completed).
int nyx_goroutine_block_on_fd(int fd, int events) {
    NyxWorker* w = g_current_worker;
    if (!w || !w->current) {
        // Off-goroutine caller: there is no scheduler context to suspend.
        // Documented fallback -- callers outside a goroutine must use a
        // blocking (or their own polling) I/O path instead.
        return -1;
    }

    NyxGoroutine* g = w->current;
    // fd must be non-blocking so a spurious/edge-triggered wakeup or a
    // partial-readiness race never wedges the goroutine in a blocking
    // syscall on the shared OS thread pool.
    // W3 Task 4: via la capa (en posix es EXACTAMENTE el mismo baile
    // F_GETFL/F_SETFL|O_NONBLOCK que había acá inline; en win32 hoy es el
    // stub de sockets — este camino entero es de I/O de red y llega con W4).
    // Retorno ignorado igual que antes: el fallo era silencioso también con
    // el fcntl inline. / via the layer (identical fcntl dance on posix; the
    // whole path is W4 network I/O on win32). Return ignored as before.
    (void)os_sock_set_nonblocking((int64_t)fd, 1);

    g->state = NYX_GOROUTINE_BLOCKED;
    g->woken = 0;
    g->parked = 0;
    g->home_worker = w->id;
    nyx_event_loop_add(g_loop, fd, events, wake_cb, g);
    os_ctx_swap(g->context, &w->scheduler_ctx);
    return 0;
}

// ============================================================
// Nyx runtime bindings
// ============================================================

// Called from Nyx code: goroutine_spawn(closure_pair) -> gid
int64_t nyx_goroutine_spawn_closure(void* closure_pair) {
    // closure_pair is {fn_ptr: i8*, env_ptr: i8*}
    // We need to call fn_ptr(env_ptr) from the goroutine
    typedef int64_t (*fn_t)(void*);
    void** pair = (void**)closure_pair;
    fn_t fn = (fn_t)pair[0];
    void* env = pair[1];
    return nyx_goroutine_spawn(fn, env);
}

// Called from Nyx code (T5b.2): spawn { } desugars to __go_spawn(closure_pair)
// -> a DETACHED, self-reaping goroutine (fire-and-forget, no leak). Unlike
// nyx_goroutine_spawn_closure (used by await), the caller never joins this
// one — nyx_goroutine_spawn_detached reaps it internally on completion.
int64_t nyx_goroutine_spawn_closure_detached(void* closure_pair) {
    typedef int64_t (*fn_t)(void*);
    void** pair = (void**)closure_pair;
    fn_t fn = (fn_t)pair[0];
    void* env = pair[1];
    return nyx_goroutine_spawn_detached(fn, env);
}

// goroutine_yield() — called from Nyx
void nyx_yield(void) {
    nyx_goroutine_yield();
}
