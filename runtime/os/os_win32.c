// runtime/os/os_win32.c — impl WIN32 de nyx_os.h (arco W2 fase B, spec
// docs/superpowers/specs/2026-08-19-windows-nativo-design.md §4-W2).
//
// ES: primera implementación Windows REAL de la capa. Cubre lo que el subset
// de regresión ejecuta (threads/sync/tiempo/vm/dl/proc/sig/fault/fs/term/fd)
// más el dominio ctx v2 sobre Fibers (W3 Task 3), y deja en -ENOSYS lo que
// todavía no tiene caller en Windows (sockets y os_ev → W4). Junto con este
// archivo MUERE runtime/os/win_w0_hello.c (el stub temporal del hello-world
// de W0): la regla dormida del ratchet
// (scripts/testing/run_os_layer_ratchet.sh) falla si ambos coexisten.
//
// EN: the first REAL Windows implementation of the layer. Covers what the
// regression subset executes (threads/sync/time/vm/dl/proc/sig/fault/fs/term/
// fd) plus the ctx v2 domain over Fibers (W3 Task 3), and returns -ENOSYS for
// what has no Windows caller yet (sockets and os_ev → W4). runtime/os/
// win_w0_hello.c (W0's temporary hello-world stub) dies together with this
// file — the ratchet's dormant rule fails if both coexist.
//
// ---------------------------------------------------------------------------
// LLP64 (auditoría W0 §9): en Windows x64/ARM64 `long` son 32 BITS. Este
// archivo NUNCA declara un `long` propio: la aritmética usa int64_t/size_t/
// uintptr_t. Los tipos LONG/DWORD/ULONG_PTR que aparecen son tipos del ABI
// Win32 (Interlocked*, GetLastError, FILETIME) y se usan exactamente donde la
// API los exige — esa es la forma correcta, no una excepción a la regla.
// EN: LLP64 — `long` is 32 BITS on Windows x64/ARM64. This file never declares
// a `long` of its own; LONG/DWORD/ULONG_PTR appear only where the Win32 ABI
// demands them.
//
// ANSI vs wide (W6+): todos los paths y nombres de librería van por las
// variantes ...A (LoadLibraryA, GetFileAttributesExA, FindFirstFileA). El
// contrato de nyx_os.h documenta que los paths son UTF-8 y que el cutover a
// wide (UTF-16) es W6+ — hoy la conversión la hace la CP ANSI del proceso.
// EN: every path/library name goes through the ...A variants; the UTF-8 →
// wide (UTF-16) cutover is a W6+ item, documented in nyx_os.h.
// ---------------------------------------------------------------------------

// _WIN32_WINNT pineado a Windows 10: SRWLOCK/CONDITION_VARIABLE/
// InitOnceExecuteOnce piden Vista+ (0x0600) y GetSystemTimePreciseAsFileTime
// pide Windows 8 (0x0602). Se fija explícito para no depender del default del
// SDK (que varía entre versiones del Windows Kit).
// EN: pinned to Windows 10 — SRWLOCK/CONDITION_VARIABLE/InitOnceExecuteOnce
// need Vista+, GetSystemTimePreciseAsFileTime needs Win8. Explicit so we do
// not depend on the SDK's shifting default.
#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x0A00
#endif
#define WIN32_LEAN_AND_MEAN
#include <windows.h>

#include "nyx_os.h"
#include "nyx_os_win32.h"  // declaración compartida del corrector (fix round 1 M4)
#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <io.h>       // _isatty/_pipe/_read/_write/_close/_commit (CRT)
#include <fcntl.h>    // _O_BINARY/_O_NOINHERIT para _pipe
#include <process.h>  // _beginthreadex (redirigido a GC_beginthreadex por gc.h)

// GC_THREADS ANTES de gc.h: en Windows expande a GC_WIN32_THREADS
// (gc_config_macros.h:118-124) y habilita el bloque de declaraciones de
// threads win32 de gc.h (GC_CreateThread / GC_beginthreadex).
// EN: GC_THREADS before gc.h: on Windows it expands to GC_WIN32_THREADS and
// enables gc.h's win32 thread declarations.
#define GC_THREADS
#include <gc.h>

// ===========================================================================
// GetLastError -> errno. El CRT trae `_dosmaperr`, pero NO es API pública
// documentada (no está declarada en ningún header del UCRT), así que el mapeo
// va explícito acá: sabemos exactamente qué devuelve cada camino y el review
// puede auditarlo. Los códigos que el contrato de nyx_os.h nombra por su
// nombre (ENOENT/EACCES/ENOTDIR para fs, EEXIST para mkdir, ETIMEDOUT para
// cond/join) están todos cubiertos.
// EN: GetLastError -> errno. The CRT's `_dosmaperr` is not public/declared
// API, so the mapping is explicit here — every code nyx_os.h names by hand
// (ENOENT/EACCES/ENOTDIR/EEXIST/ETIMEDOUT) is covered.
// ===========================================================================
static int win_errno(DWORD e) {
    switch (e) {
        case ERROR_SUCCESS:               return 0;
        case ERROR_FILE_NOT_FOUND:
        case ERROR_PATH_NOT_FOUND:
        case ERROR_INVALID_NAME:
        case ERROR_BAD_NETPATH:
        case ERROR_BAD_NET_NAME:
        case ERROR_MOD_NOT_FOUND:
        case ERROR_PROC_NOT_FOUND:        return ENOENT;
        case ERROR_ACCESS_DENIED:
        case ERROR_SHARING_VIOLATION:
        case ERROR_LOCK_VIOLATION:
        case ERROR_NETWORK_ACCESS_DENIED:
        case ERROR_WRITE_PROTECT:         return EACCES;
        case ERROR_DIRECTORY:             return ENOTDIR;
        case ERROR_ALREADY_EXISTS:
        case ERROR_FILE_EXISTS:           return EEXIST;
        case ERROR_DIR_NOT_EMPTY:         return ENOTEMPTY;
        case ERROR_NOT_ENOUGH_MEMORY:
        case ERROR_OUTOFMEMORY:           return ENOMEM;
        case ERROR_INVALID_HANDLE:        return EBADF;
        case ERROR_INVALID_PARAMETER:
        case ERROR_NEGATIVE_SEEK:         return EINVAL;
        case ERROR_TOO_MANY_OPEN_FILES:   return EMFILE;
        case ERROR_DISK_FULL:             return ENOSPC;
        case ERROR_BROKEN_PIPE:
        case ERROR_NO_DATA:               return EPIPE;
        case ERROR_BUSY:
        case ERROR_BUSY_DRIVE:            return EBUSY;
        case ERROR_SEM_TIMEOUT:
        case WAIT_TIMEOUT:                return ETIMEDOUT;
        case ERROR_FILENAME_EXCED_RANGE:  return ENAMETOOLONG;
        case ERROR_NOT_SUPPORTED:
        case ERROR_CALL_NOT_IMPLEMENTED:  return ENOSYS;
        default:                          return EIO;
    }
}
// -errno de la última llamada Win32 fallida (nunca 0: un fallo siempre debe
// producir un código distinto de "éxito").
// EN: -errno of the last failed Win32 call (never 0 — a failure must never
// look like success).
static int win_last_errno(void) {
    int e = win_errno(GetLastError());
    return -(e ? e : EIO);
}
// -errno de una llamada del CRT que dejó errno (nunca 0, mismo motivo).
static int crt_last_errno(void) {
    int e = errno;
    return -(e ? e : EIO);
}

// ===========================================================================
// Tipos opacos: asserts de tamaño Y alineación propios de esta plataforma.
// Los _Static_assert de os_posix.c NO aplican acá (pthread_* no existe en
// win32) — lección del inc 2: un storage sub-alineado es UB formal aunque
// hoy no crashee.
// EN: platform-specific size AND alignment asserts (os_posix.c's do not apply
// here — no pthread_* types on win32).
//
// ELECCIÓN DE PRIMITIVA (divergencia deliberada del brief, que sugería
// CRITICAL_SECTION): os_mutex_t se implementa sobre SRWLOCK, NO sobre
// CRITICAL_SECTION, por DOS razones del contrato de nyx_os.h:
//   1. `OS_MUTEX_STATIC_INIT {{0}}` — el header exige que un mutex TODO CEROS
//      sea válido sin init (y nombra SRWLOCK_INIT como el equivalente win32).
//      Hay 5 callers reales con esa forma (scheduler.c:112/264/265/282/293).
//      Una CRITICAL_SECTION en ceros NO es una CS inicializada: su LockCount
//      queda en 0 (una CS libre tiene -1) y OwningThread en 0 — el primer
//      EnterCriticalSection sobre ella es UB silencioso, exactamente la clase
//      de bug mudo que este proyecto no acepta.
//   2. El contrato dice "Mutex (no recursivo)". CRITICAL_SECTION ES recursiva;
//      SRWLOCK exclusiva no lo es (se auto-deadlockea, igual que un
//      pthread_mutex default) — la semántica de SRWLOCK es la que el contrato
//      describe, la de CRITICAL_SECTION no.
// Ninguna de las dos necesita destroy (SRWLOCK no tiene DeleteSRWLock).
// EN: DELIBERATE divergence from the brief (which suggested CRITICAL_SECTION):
// os_mutex_t is an SRWLOCK because (1) the header mandates that an all-zero
// mutex is valid (5 real callers use OS_MUTEX_STATIC_INIT) and a zeroed
// CRITICAL_SECTION is NOT an initialized one (LockCount 0 vs -1 for a free CS)
// — silent UB; and (2) the contract says "non-recursive", which is SRWLOCK's
// semantics, not CRITICAL_SECTION's.
// ===========================================================================
_Static_assert(sizeof(SRWLOCK)            <= sizeof(os_mutex_t),   "os_mutex_t storage < SRWLOCK");
_Static_assert(_Alignof(os_mutex_t)       >= _Alignof(SRWLOCK),    "os_mutex_t sub-alineado para SRWLOCK");
_Static_assert(sizeof(CONDITION_VARIABLE) <= sizeof(os_cond_t),    "os_cond_t storage < CONDITION_VARIABLE");
_Static_assert(_Alignof(os_cond_t)        >= _Alignof(CONDITION_VARIABLE), "os_cond_t sub-alineado para CONDITION_VARIABLE");
_Static_assert(sizeof(INIT_ONCE)          <= sizeof(os_once_t),    "os_once_t storage < INIT_ONCE");
_Static_assert(_Alignof(os_once_t)        >= _Alignof(INIT_ONCE),  "os_once_t sub-alineado para INIT_ONCE");
_Static_assert(sizeof(HANDLE)             <= sizeof(os_thread_t),  "os_thread_t storage < HANDLE");
_Static_assert(sizeof(DWORD)              <= sizeof(os_tls_key_t), "os_tls_key_t storage < DWORD (TLS index)");

#define MX(m) ((SRWLOCK*)(m)->storage)
#define CV(c) ((CONDITION_VARIABLE*)(c)->storage)
#define ON(o) ((PINIT_ONCE)(o)->storage)
#define TH(t) ((HANDLE)(uintptr_t)(t)->storage[0])

// ===========================================================================
// Threads.
//
// REDIRECT DE BOEHM EN WIN32 — la decisión (evidencia: /usr/include/gc/gc.h
// líneas 1918-1978, bloque `#ifdef GC_WIN32_THREADS`):
//   "All threads must be created using GC_CreateThread or GC_beginthreadex,
//    or must explicitly call GC_register_my_thread"
// Las DOS registran el thread en la tabla de Boehm. Se elige
// **GC_beginthreadex** (no GC_CreateThread) porque:
//   - El cuerpo de CUALQUIER thread Nyx corre runtime C completo (printf,
//     malloc, errno, strtod...). `_beginthreadex` es la única forma soportada
//     de crear un thread que usa la CRT: inicializa el bloque per-thread de la
//     CRT y lo libera al terminar. Un thread creado con CreateThread crudo que
//     toca la CRT filtra ese bloque (y en CRTs viejas puede corromperlo).
//     GC_beginthreadex delega en _beginthreadex tras registrar en el GC, así
//     que da AMBAS cosas; GC_CreateThread solo da la del GC.
//   - gc.h además redirige por macro `_beginthreadex -> GC_beginthreadex`
//     (línea 1975) cuando GC_NO_THREAD_REDIRECTS no está definido: llamar a
//     GC_beginthreadex EXPLÍCITO deja el redirect a la vista en el código en
//     vez de esconderlo detrás de un nombre que parece de la CRT.
// EN: BOEHM WIN32 REDIRECT — gc.h:1918-1978 states threads must be created via
// GC_CreateThread or GC_beginthreadex. We pick GC_beginthreadex: every Nyx
// thread body runs full C runtime code, and _beginthreadex is the only
// supported way to create a CRT-using thread (it sets up and tears down the
// CRT's per-thread block). GC_beginthreadex gives BOTH the GC registration and
// the CRT init; GC_CreateThread only the former. We call it by its explicit
// name rather than relying on gc.h's `_beginthreadex` macro redirect.
//
// El trampolín adapta el contrato de la capa (void*(*)(void*)) a la firma que
// _beginthreadex exige (unsigned __stdcall (*)(void*)).
// EN: the trampoline adapts the layer's void*(*)(void*) to _beginthreadex's
// unsigned __stdcall (*)(void*).
// ===========================================================================
typedef struct { os_thread_fn fn; void* arg; } OsWin32ThreadStart;

static unsigned __stdcall os_win32_thread_tramp(void* p) {
    OsWin32ThreadStart* s = (OsWin32ThreadStart*)p;
    os_thread_fn fn = s->fn;
    void* arg = s->arg;
    // Liberado ANTES de correr fn: a partir de acá `arg` vive en el stack de
    // este thread, que Boehm SÍ escanea (el thread está registrado).
    // EN: freed before running fn: from here on `arg` lives on this thread's
    // stack, which Boehm does scan (the thread is registered).
    GC_FREE(s);
    fn(arg);
    return 0;
}

int os_thread_create(os_thread_t* t, os_thread_fn fn, void* arg) {
    if (!t || !fn) return -EINVAL;
    // GC_MALLOC_UNCOLLECTABLE (no malloc): entre este create y el arranque
    // real del thread, el holder es el ÚNICO dueño de `arg`. Memoria malloc
    // cruda es INVISIBLE para Boehm — un `arg` GC-alocado podría recolectarse
    // en esa ventana (use-after-free silencioso). Uncollectable es memoria
    // escaneada y nunca recolectada: el `arg` queda alcanzable hasta el
    // GC_FREE del trampolín.
    // EN: GC_MALLOC_UNCOLLECTABLE (not malloc): between create and the
    // thread's actual start, the holder is the only owner of `arg`. Raw malloc
    // is INVISIBLE to Boehm — a GC-allocated `arg` could be collected in that
    // window. Uncollectable memory is scanned and never collected.
    OsWin32ThreadStart* s = (OsWin32ThreadStart*)GC_MALLOC_UNCOLLECTABLE(sizeof(*s));
    if (!s) return -ENOMEM;
    s->fn = fn;
    s->arg = arg;
    unsigned tid = 0;
    // M5 (review ronda 1): errno se limpia ANTES de la llamada. _beginthreadex
    // documenta que setea errno al fallar (EAGAIN/EINVAL/EACCES), pero errno es
    // pegajoso: si por lo que fuera NO lo tocara, `crt_last_errno()` devolvería
    // un errno VIEJO de cualquier otra llamada anterior de este thread — un
    // -errno inventado que no describe este fallo. Con el clear previo, un
    // errno en 0 significa "no dijo por qué" y se reporta -EAGAIN, el código
    // canónico de "no se pudo crear el thread" (mismo que pthread_create).
    // EN: M5 — errno is cleared BEFORE the call. _beginthreadex documents that
    // it sets errno on failure, but errno is sticky: if it did not, we would
    // report a STALE errno from some earlier call on this thread — a fabricated
    // -errno. With the clear, errno == 0 means "it did not say why" and we
    // report -EAGAIN, the canonical "could not create thread" code (same as
    // pthread_create).
    errno = 0;
    GC_uintptr_t h = GC_beginthreadex(NULL, 0, os_win32_thread_tramp, s, 0, &tid);
    if (h == 0) {
        int rc = errno ? -errno : -EAGAIN;
        GC_FREE(s);
        return rc;
    }
    t->storage[0] = (uint64_t)(uintptr_t)h;
    return 0;
}

int os_thread_join(os_thread_t* t) {
    if (!t) return -EINVAL;
    HANDLE h = TH(t);
    if (!h) return -EINVAL;
    DWORD r = WaitForSingleObject(h, INFINITE);
    if (r != WAIT_OBJECT_0) return win_last_errno();
    // CloseHandle == el "reap" de pthread_join: sin esto el objeto thread del
    // kernel queda vivo aunque el thread haya muerto (handle leak).
    // EN: CloseHandle is pthread_join's reap; without it the kernel thread
    // object leaks even after the thread died.
    CloseHandle(h);
    t->storage[0] = 0;
    return 0;
}

int os_thread_timedjoin(os_thread_t* t, int64_t ms) {
    if (!t) return -EINVAL;
    HANDLE h = TH(t);
    if (!h) return -EINVAL;
    DWORD wait = (ms <= 0) ? 0
               : (ms >= (int64_t)(INFINITE - 1)) ? (INFINITE - 1)
               : (DWORD)ms;
    DWORD r = WaitForSingleObject(h, wait);
    // -ETIMEDOUT NO cierra el handle: el caller (thread.c:91-93) reintenta el
    // timedjoin en un loop y necesita el handle vivo.
    // EN: a timeout must NOT close the handle — thread.c retries the
    // timedjoin in a loop and needs the handle alive.
    if (r == WAIT_TIMEOUT) return -ETIMEDOUT;
    if (r != WAIT_OBJECT_0) return win_last_errno();
    CloseHandle(h);
    t->storage[0] = 0;
    return 0;
}

int os_thread_detach(os_thread_t* t) {
    if (!t) return -EINVAL;
    HANDLE h = TH(t);
    if (!h) return 0;   // ya cerrado por un join previo: no-op, no es error
    // En win32 no existe "detach": un thread ya corre independiente del handle.
    // Cerrar el handle ES el equivalente exacto (libera el objeto del kernel
    // cuando el thread termine, sin que nadie tenga que joinear).
    // EN: win32 has no detach — a thread already runs independently of its
    // handle. Closing the handle IS the exact equivalent.
    BOOL ok = CloseHandle(h);
    t->storage[0] = 0;
    return ok ? 0 : win_last_errno();
}

int os_thread_cancel(os_thread_t* t) {
    if (!t) return -EINVAL;
    HANDLE h = TH(t);
    if (!h) return -EINVAL;
    // ⚠️ TerminateThread es la ÚNICA cancelación asíncrona de win32 y es MÁS
    // brutal que pthread_cancel: mata en un punto arbitrario, sin cleanup
    // handlers, sin liberar el bloque per-thread de la CRT, y sin que Boehm
    // llegue a des-registrar el thread (GC_endthreadex nunca corre). Se
    // implementa igual porque el contrato de nyx_os.h ya declara esta
    // primitiva "best-effort" y "nunca usar sobre threads que tengan locks del
    // runtime" — pero en win32 el riesgo extra (tabla de threads de Boehm con
    // una entrada muerta) es REAL. Follow-up W3: reemplazar el thread_kill
    // Nyx-facing por una cancelación cooperativa con flag.
    // EN: TerminateThread is win32's only async cancellation and is harsher
    // than pthread_cancel: arbitrary kill point, no cleanup, no CRT per-thread
    // teardown, and Boehm never unregisters the thread. Implemented because
    // the contract already declares this primitive best-effort and unsafe on
    // lock-holding threads — but the extra win32 hazard (a dead entry in
    // Boehm's thread table) is REAL. W3 follow-up: cooperative flag instead.
    return TerminateThread(h, 0) ? 0 : win_last_errno();
}

// SwitchToThread cede el resto del quantum a otro thread LISTO del mismo
// procesador; devuelve FALSE si no había ninguno (no es un error, igual que
// sched_yield sin candidatos).
// EN: SwitchToThread yields to another ready thread on the same processor;
// FALSE means there was none — not an error, same as sched_yield.
void os_yield(void) { (void)SwitchToThread(); }

// ===========================================================================
// Mutex / condvar / rwlock / once / TLS.
// ===========================================================================
int  os_mutex_init(os_mutex_t* m)   { InitializeSRWLock(MX(m)); return 0; }
void os_mutex_lock(os_mutex_t* m)   { AcquireSRWLockExclusive(MX(m)); }
int  os_mutex_trylock(os_mutex_t* m){ return TryAcquireSRWLockExclusive(MX(m)) ? 0 : -EBUSY; }
void os_mutex_unlock(os_mutex_t* m) { ReleaseSRWLockExclusive(MX(m)); }
// SRWLOCK no tiene destructor (no aloca nada): no-op, igual que
// pthread_mutex_destroy sobre un mutex sin atributos.
void os_mutex_destroy(os_mutex_t* m){ (void)m; }

// CONDITION_VARIABLE mide el timeout en MILISEGUNDOS RELATIVOS contra el reloj
// interrumpido del sistema — que es monotónico (no salta con NTP). El contrato
// pide un deadline ABSOLUTO en os_monotonic_ns(): se convierte a delta acá.
// Por eso os_cond_init no necesita el equivalente del
// pthread_condattr_setclock(CLOCK_MONOTONIC) de posix: win32 nunca usa el
// reloj de pared para esto.
// EN: CONDITION_VARIABLE takes a RELATIVE millisecond timeout measured on the
// system's interrupt-time clock (monotonic, NTP-immune). The contract hands an
// ABSOLUTE os_monotonic_ns() deadline, converted to a delta here — which is
// why os_cond_init needs no equivalent of posix's
// pthread_condattr_setclock(CLOCK_MONOTONIC).
int  os_cond_init(os_cond_t* c) { InitializeConditionVariable(CV(c)); return 0; }
void os_cond_wait(os_cond_t* c, os_mutex_t* m) {
    SleepConditionVariableSRW(CV(c), MX(m), INFINITE, 0);
}
int  os_cond_timedwait(os_cond_t* c, os_mutex_t* m, int64_t deadline_ns) {
    int64_t delta_ns = deadline_ns - os_monotonic_ns();
    DWORD ms;
    if (delta_ns <= 0) {
        ms = 0;   // deadline ya vencido: un poll, no una espera infinita
    } else {
        int64_t delta_ms = delta_ns / 1000000LL;
        // Redondeo hacia ARRIBA del resto sub-milisegundo: dormir de menos
        // haría que el caller despierte ANTES del deadline y reporte
        // -ETIMEDOUT prematuro.
        // EN: round the sub-millisecond remainder UP — sleeping short would
        // wake the caller before its deadline and report a premature timeout.
        if (delta_ns % 1000000LL) delta_ms++;
        ms = (delta_ms >= (int64_t)(INFINITE - 1)) ? (INFINITE - 1) : (DWORD)delta_ms;
    }
    if (SleepConditionVariableSRW(CV(c), MX(m), ms, 0)) return 0;
    DWORD e = GetLastError();
    if (e == ERROR_TIMEOUT) return -ETIMEDOUT;
    int mapped = win_errno(e);
    return -(mapped ? mapped : EIO);
}
void os_cond_signal(os_cond_t* c)    { WakeConditionVariable(CV(c)); }
void os_cond_broadcast(os_cond_t* c) { WakeAllConditionVariable(CV(c)); }
void os_cond_destroy(os_cond_t* c)   { (void)c; }   // CONDITION_VARIABLE no aloca

// SRWLOCK distingue el release compartido del exclusivo (ReleaseSRWLockShared
// vs ...Exclusive) pero el contrato de la capa tiene UN solo os_rwlock_unlock
// (como pthread_rwlock_unlock). Se resuelve guardando el TID del escritor
// dentro del propio storage: en unlock, un
// InterlockedCompareExchange(owner, 0, mi_tid) atómicamente (a) dice si YO soy
// el escritor y (b) limpia el campo antes de soltar. Es correcto porque
// mientras hay un escritor no puede haber lectores (exclusión mutua), y el
// campo queda en 0 antes del Release — así ningún lector ve un TID viejo.
// EN: SRWLOCK needs separate shared/exclusive releases but the layer exposes a
// single os_rwlock_unlock. Solved by stashing the writer's TID in the storage:
// unlock does an InterlockedCompareExchange(owner, 0, my_tid) which atomically
// tells us whether we are the writer AND clears the field before releasing.
// Sound because writers exclude readers, and the field is cleared before the
// release, so no reader can ever observe a stale TID.
typedef struct { SRWLOCK lock; volatile LONG owner; } OsWin32Rwlock;
_Static_assert(sizeof(OsWin32Rwlock)  <= sizeof(os_rwlock_t), "os_rwlock_t storage < OsWin32Rwlock");
_Static_assert(_Alignof(os_rwlock_t)  >= _Alignof(OsWin32Rwlock), "os_rwlock_t sub-alineado");
#define RW(r) ((OsWin32Rwlock*)(r)->storage)

int  os_rwlock_init(os_rwlock_t* r) {
    memset(r, 0, sizeof(*r));
    InitializeSRWLock(&RW(r)->lock);
    RW(r)->owner = 0;
    return 0;
}
static void os_win32_rw_claim(os_rwlock_t* r) {
    InterlockedExchange(&RW(r)->owner, (LONG)GetCurrentThreadId());
}
void os_rwlock_rdlock(os_rwlock_t* r)   { AcquireSRWLockShared(&RW(r)->lock); }
int  os_rwlock_tryrdlock(os_rwlock_t* r){ return TryAcquireSRWLockShared(&RW(r)->lock) ? 0 : -EBUSY; }
void os_rwlock_wrlock(os_rwlock_t* r)   { AcquireSRWLockExclusive(&RW(r)->lock); os_win32_rw_claim(r); }
int  os_rwlock_trywrlock(os_rwlock_t* r){
    if (!TryAcquireSRWLockExclusive(&RW(r)->lock)) return -EBUSY;
    os_win32_rw_claim(r);
    return 0;
}
void os_rwlock_unlock(os_rwlock_t* r) {
    LONG me = (LONG)GetCurrentThreadId();
    if (InterlockedCompareExchange(&RW(r)->owner, 0, me) == me) {
        ReleaseSRWLockExclusive(&RW(r)->lock);
    } else {
        ReleaseSRWLockShared(&RW(r)->lock);
    }
}
void os_rwlock_destroy(os_rwlock_t* r) { (void)r; }   // SRWLOCK no aloca

static BOOL CALLBACK os_win32_once_tramp(PINIT_ONCE once, PVOID param, PVOID* ctx) {
    (void)once; (void)ctx;
    void (*fn)(void) = (void (*)(void))param;
    if (fn) fn();
    return TRUE;
}
// INIT_ONCE en ceros == INIT_ONCE_STATIC_INIT (contrato de OS_ONCE_STATIC_INIT
// en nyx_os.h; caller real: tls.c:784).
// EN: an all-zero INIT_ONCE is INIT_ONCE_STATIC_INIT (real caller: tls.c:784).
void os_once(os_once_t* o, void (*fn)(void)) {
    InitOnceExecuteOnce(ON(o), os_win32_once_tramp, (PVOID)(uintptr_t)fn, NULL);
}

// ⚠️ Slots TLS de Win32 (TlsAlloc) NO son escaneados por Boehm como raíces:
// un puntero a memoria GC guardado SOLO ahí puede recolectarse. Igual que en
// posix (pthread_setspecific tampoco es raíz), así que no es un delta de
// plataforma — se anota porque en win32 no hay caller todavía y el día que lo
// haya conviene tenerlo presente.
// EN: Win32 TLS slots are not GC roots (neither is pthread_setspecific) — no
// platform delta, noted because win32 has no caller yet.
int   os_tls_key_create(os_tls_key_t* k) {
    if (!k) return -EINVAL;
    DWORD idx = TlsAlloc();
    if (idx == TLS_OUT_OF_INDEXES) return -ENOMEM;
    k->storage[0] = (uint64_t)idx;
    return 0;
}
void* os_tls_get(os_tls_key_t* k) { return TlsGetValue((DWORD)k->storage[0]); }
void  os_tls_set(os_tls_key_t* k, void* v) { (void)TlsSetValue((DWORD)k->storage[0], v); }

// ===========================================================================
// Tiempo.
// ===========================================================================
int64_t os_monotonic_ns(void) {
    // La frecuencia del QPC es FIJA desde el boot (documentado por MSFT), así
    // que se cachea. La carrera del init lazy es benigna: dos threads escriben
    // EL MISMO valor.
    // EN: the QPC frequency is fixed at boot, so it is cached; the lazy-init
    // race is benign (both threads write the same value).
    static LARGE_INTEGER freq;
    if (freq.QuadPart == 0) QueryPerformanceFrequency(&freq);
    int64_t f = (int64_t)freq.QuadPart;
    if (f <= 0) return 0;
    LARGE_INTEGER c;
    QueryPerformanceCounter(&c);
    int64_t ticks = (int64_t)c.QuadPart;
    // sec/resto por separado: `ticks * 1e9` desbordaría int64 con un uptime de
    // horas a 10 MHz.
    // EN: split into sec/remainder — `ticks * 1e9` overflows int64 after hours
    // of uptime at 10 MHz.
    return (ticks / f) * 1000000000LL + ((ticks % f) * 1000000000LL) / f;
}

int64_t os_realtime_ns(void) {
    FILETIME ft;
    GetSystemTimePreciseAsFileTime(&ft);   // ~sub-microsegundo (Win8+)
    ULARGE_INTEGER u;
    u.LowPart  = ft.dwLowDateTime;
    u.HighPart = ft.dwHighDateTime;
    // FILETIME cuenta intervalos de 100ns desde 1601-01-01; el delta a la
    // época unix (1970-01-01) son 116444736000000000 de esos intervalos.
    // EN: FILETIME counts 100ns intervals since 1601-01-01; the offset to the
    // unix epoch is 116444736000000000 of them.
    int64_t unix_100ns = (int64_t)u.QuadPart - 116444736000000000LL;
    return unix_100ns * 100LL;
}

void os_sleep_ms(int64_t ms) {
    if (ms <= 0) { Sleep(0); return; }
    // INFINITE (0xFFFFFFFF) se evita a propósito: un ms gigantesco debe dormir
    // mucho, no para siempre.
    Sleep(ms >= (int64_t)(INFINITE - 1) ? (INFINITE - 1) : (DWORD)ms);
}

// La CRT de MSVC NO tiene strptime NI equivalente (hay strftime, pero el
// camino inverso no existe: ni _strptime, ni una variante _s). Escribir un
// parser de formatos strptime a mano es un proyecto propio, NO el residuo de
// link que esta fase cierra — así que este dominio queda honestamente
// -ENOSYS. El ÚNICO caller (nyx_datetime_parse, time.c) ya tiene un camino de
// error definido y probado: devuelve -1, exactamente lo mismo que devuelve en
// Linux cuando la fecha no matchea el formato. datetime_parse en Windows
// entonces "siempre falla", nunca corrompe ni miente con una fecha inventada.
// Ficha: el port real del parseo de fechas es trabajo de W5/W6.
// EN: the MSVC CRT has NO strptime and no equivalent (strftime exists; the
// inverse does not — no _strptime, no _s variant). Hand-writing a strptime
// format parser is its own project, not the link residue this phase closes,
// so this domain is honestly -ENOSYS. The SOLE caller (time.c's
// nyx_datetime_parse) already has a defined, tested error path: it returns
// -1 — exactly what it returns on Linux when the date does not match the
// format. So datetime_parse on Windows "always fails" rather than
// fabricating a date. Filed: real date parsing is W5/W6 work.
int os_time_parse(const char* date, const char* fmt, struct tm* out) {
    (void)date; (void)fmt; (void)out;
    return -ENOSYS;
}

// _putenv_s es la forma MSVC de setenv-con-overwrite. Devuelve 0 o un errno_t
// (NO setea errno), así que el error se reporta con el valor que devuelve.
// DIVERGENCIA documentada en nyx_os.h: value="" BORRA la variable en win32,
// mientras que posix la deja existiendo y vacía.
// EN: _putenv_s is MSVC's setenv-with-overwrite. It returns 0 or an errno_t
// (it does NOT set errno), so the error is reported from the return value.
// Divergence documented in nyx_os.h: value="" DELETES the variable on win32,
// whereas posix keeps it as an existing empty one.
int os_env_set(const char* name, const char* value) {
    if (!name || !value) return -EINVAL;
    errno_t rc = _putenv_s(name, value);
    return rc == 0 ? 0 : -(int)rc;
}

// ===========================================================================
// Memoria virtual (los stacks de goroutine del scheduler; W3 lo hereda).
// ===========================================================================
void* os_vm_map(size_t size) {
    return VirtualAlloc(NULL, size, MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE);
}
int os_vm_protect_none(void* base, size_t size) {
    DWORD old = 0;   // VirtualProtect EXIGE lpflOldProtect != NULL (falla con
                     // ERROR_NOACCESS si se le pasa NULL) / it is mandatory
    return VirtualProtect(base, size, PAGE_NOACCESS, &old) ? 0 : win_last_errno();
}
int os_vm_release(void* base, size_t size) {
    // ⚠️ MEM_RELEASE EXIGE dwSize == 0 y que `base` sea la base EXACTA de la
    // reserva devuelta por VirtualAlloc (libera la reserva entera). No hay
    // equivalente de un munmap parcial: si algún día un caller lo necesita,
    // habrá que separar decommit (MEM_DECOMMIT, que sí toma tamaño) de
    // release. Los callers de hoy (stacks completos del scheduler) liberan
    // siempre la reserva entera.
    // EN: MEM_RELEASE REQUIRES dwSize == 0 and the exact VirtualAlloc base
    // (frees the whole reservation). No partial-munmap equivalent; today's
    // callers always release whole stacks.
    (void)size;
    return VirtualFree(base, 0, MEM_RELEASE) ? 0 : win_last_errno();
}

// ===========================================================================
// Contexto cooperativo — W3 Task 3 (ctx v2 sobre Fibers). Autoridades: el
// contrato ctx v2 de nyx_os.h (incl. inicialización en cero y SEMÁNTICA
// DIFERIDA de os_ctx_stack), el diseño GC-Windows rev2/rev3 y el spike
// validado (docs/superpowers/spikes/2026-08-29-w3-spike-local-x64.md).
//
// ES: decisiones que NO son obvias desde el código:
//  - CreateFiberEx con dwStackCommitSize == dwStackReserveSize (rev2 §5.2):
//    NO garantiza "todo comiteado" (el kernel clampea para su guard page) —
//    es un pedido de MÁXIMO: con el commit al tope, el extremo comiteado ya
//    no puede bajar, así que el rango MEDIDO en la primera entrada cubre
//    todo lo que la fiber podrá usar jamás. Eso hace válido el root
//    permanente por-goroutina sin re-registro.
//  - El rango del stack se MIDE con un walk de VirtualQuery desde adentro de
//    la fiber (mismo algoritmo que GC_get_stack_min de libgc).
//    GetCurrentThreadStackLimits está PROHIBIDA para este rango: devuelve la
//    RESERVA (DeallocationStack..StackBase) y registrar eso como GC root
//    cuelga el proceso para siempre (rev2 §1 — el marcador de bdwgc atrapa
//    el AV con SEH y reintenta contra la misma página ilegible, con el mundo
//    parado). Solo su extremo ALTO (StackBase) es utilizable, como tope del
//    walk. Por construcción el rango medido es íntegramente PAGE_READWRITE
//    comiteado — la guardia de rev2 §5.3 ("ningún GC_add_roots sin
//    verificar") queda satisfecha estructuralmente.
//  - SEMÁNTICA DIFERIDA: os_ctx_stack sobre una fiber aún-no-entrada devuelve
//    NULL/0. El TRAMP mide y publica el rango como PRIMERA acción, antes de
//    saltar a entry — sound porque una fiber sin entrar no tiene frames, y
//    hasta que entry corre no hay locals con punteros GC en este stack (todo
//    lo vivo es alcanzable por otro camino: el registry global del
//    scheduler). El caller cierra la ventana publicando el root desde
//    ADENTRO de entry (goroutine_entry) — ver scheduler.c.
// EN: non-obvious decisions: commit==reserve is a MAXIMUM request (the
// kernel clamps for its guard page; rev2 §5.2) — it pins the committed floor
// so the range measured on first entry covers everything the fiber can ever
// use. The range is MEASURED with a VirtualQuery walk from inside the fiber
// (libgc's own GC_get_stack_min algorithm); GetCurrentThreadStackLimits is
// FORBIDDEN for it (returns the RESERVE — registering that as a GC root
// hangs the process forever, rev2 §1); only its HIGH end (StackBase) is used,
// as the walk's ceiling. Deferred semantics: os_ctx_stack on a not-yet-entered
// fiber returns NULL/0; the tramp measures and publishes as its FIRST action,
// before entry — sound because an unentered fiber has no frames.
// ===========================================================================

// Página de 4 KB en ambos triples de Nyx (x86_64/aarch64 pc-windows-msvc) —
// mismo supuesto documentado que el spike. / 4 KB pages on both Nyx triples,
// same documented assumption as the spike.
#define OS_CTX_WIN32_PAGE 4096

typedef struct {
    LPVOID fiber;            // CreateFiberEx handle (NULL == ctx en cero/liberado)
    void (*entry)(void*);
    void*  arg;
    char*  stack_lo;         // rango COMITEADO medido — publicado por el tramp;
    size_t stack_size;       //   NULL/0 hasta la primera entrada (semántica diferida)
    size_t req_size;         // stack_size pedido en make (lo reusa remake)
} os_ctx_win32_t;

_Static_assert(sizeof(os_ctx_win32_t) <= sizeof(((os_ctx_t*)0)->storage),
               "os_ctx_t storage < os_ctx_win32_t (ctx v2 win32)");
_Static_assert(_Alignof(os_ctx_t) >= _Alignof(os_ctx_win32_t),
               "os_ctx_t sub-alineado para os_ctx_win32_t");
#define WCTX(c)  ((os_ctx_win32_t*)(c)->storage)
#define WCTXC(c) ((const os_ctx_win32_t*)(c)->storage)

// ---------------------------------------------------------------------------
// Registro tid -> rango del stack NATIVO (consumido por el corrector de sp
// POR EXCLUSIÓN — decisión del coordinador, brief Task 3 P3). Poblado por
// os_ctx_thread_init ANTES de ConvertThreadToFiber (para el stack NATIVO,
// GetCurrentThreadStackLimits SÍ es correcta — lo prohibido por rev2 es
// usarla para el rango de una FIBER).
//
// ES: publicación sin locks — el corrector corre CON EL MUNDO PARADO y el GC
// lock tomado (no puede tomar ninguno): slot claimeado con
// InterlockedIncrement, campos escritos ANTES, tid publicado AL FINAL con
// InterlockedExchange (barrera completa) — un lector jamás ve un slot a
// medio armar; tid==0 = slot vacío. Sin reuso de slots (los workers viven lo
// que vive el scheduler). Limitación documentada: si un thread registrado
// muere y el SO recicla su tid para un thread nuevo NO registrado, el slot
// viejo respondería por él — hoy no pasa (los workers no mueren) y el techo
// de 64 cubre cualquier NYX_NUM_WORKERS real; si el modelo de threads
// cambia, esto necesita generación o baja explícita.
// EN: lock-free publication — the corrector runs WORLD-STOPPED holding the GC
// lock (cannot lock anything): slot claimed via InterlockedIncrement, fields
// written FIRST, tid published LAST with InterlockedExchange (full barrier);
// tid==0 means empty. No slot reuse (workers live as long as the scheduler).
// Documented limitation: OS tid reuse after a registered thread dies would
// alias — does not happen today (workers never die); revisit if that changes.
// ---------------------------------------------------------------------------
#define OS_CTX_WIN32_MAX_THREADS 64
static struct {
    volatile LONG tid;       // 0 = vacío; publicado al final
    char* native_lo;         // reserva completa del stack nativo (solo para el
    char* native_hi;         //   test de pertenencia — nunca se registra como root)
} g_native_stacks[OS_CTX_WIN32_MAX_THREADS];
static volatile LONG g_native_stacks_n = 0;

static void os_win32_native_stack_register(void) {
    ULONG_PTR lo = 0, hi = 0;
    DWORD tid = GetCurrentThreadId();
    LONG i;
    // Idempotencia de os_ctx_thread_init: si este tid ya está registrado,
    // NO actualizar (fix round 1 I3). Re-cachear sería un arma cargada: una
    // llamada idempotente hecha desde ADENTRO de una fiber grabaría el rango
    // de la FIBER como "nativo", y el corrector pasaría a corregir sps
    // nativos HACIA la fiber — reintroduce el mecanismo de muerte exacto que
    // este registro existe para matar. El primer registro (pre-conversión,
    // sobre el stack nativo real) es el único que vale.
    // EN: idempotent thread_init — if this tid is registered, do NOT update
    // (fix round 1 I3). Re-caching would be a loaded gun: an idempotent call
    // made from INSIDE a fiber would record the FIBER's range as "native",
    // flipping the corrector into correcting native sps TOWARDS the fiber —
    // reintroducing the exact death mechanism this registry exists to kill.
    // Only the first registration (pre-conversion, on the real native stack)
    // counts.
    for (i = 0; i < OS_CTX_WIN32_MAX_THREADS; i++) {
        if ((DWORD)g_native_stacks[i].tid == tid) return;
    }
    GetCurrentThreadStackLimits(&lo, &hi);
    i = InterlockedIncrement(&g_native_stacks_n) - 1;
    if (i >= OS_CTX_WIN32_MAX_THREADS) {
        // Registro lleno = ese worker queda SIN corrector => el bug de vuelta
        // para sus fibers (fix round 1 M2: esto NO es un degradado benigno —
        // avisar RUIDOSO; si alguna config real supera 64 threads con fibers,
        // el techo hay que subirlo, no silenciarlo).
        // EN: full registry = that worker runs WITHOUT the corrector => the
        // bug is back for its fibers. LOUD warning, not a benign fallback.
        fprintf(stderr,
                "[nyx] os_ctx win32: registro de stacks nativos LLENO (%d) — "
                "el thread %lu queda sin corrector de sp; sus fibers pueden "
                "reactivar el escaneo envenenado (subir OS_CTX_WIN32_MAX_THREADS)\n",
                OS_CTX_WIN32_MAX_THREADS, (unsigned long)tid);
        return;
    }
    // Orden de publicación (fix round 1 M1): campos PRIMERO, tid AL FINAL con
    // barrera — y el corrector recorre los 64 slots sin depender del contador
    // (el slot claimeado con tid==0 todavía es invisible para él).
    // EN: publication order: fields FIRST, tid LAST with a full barrier — and
    // the corrector scans all slots without trusting the counter.
    g_native_stacks[i].native_lo = (char*)lo;
    g_native_stacks[i].native_hi = (char*)hi;
    InterlockedExchange(&g_native_stacks[i].tid, (LONG)tid);
}

// Corrector de sp POR EXCLUSIÓN (rev3 §3 + brief Task 3 P3): si el sp del
// thread NO cae dentro de su rango nativo cacheado, el thread está corriendo
// sobre una fiber (conocida, desconocida o en la ventana pre-publicación) y
// el sp se corrige a su stack_base nativo. Con eso libgc toma la rama del
// WARN + clamp real (GC_get_stack_min) y escanea SOLO el stack nativo — el
// comportamiento exacto que la ablación X4 del spike validó (0/120 muertes).
// Sin corrección, may_be_in_stack sondearía el sp de la fiber y empujaría
// [sp_fiber, stack_base_nativo) — gigabytes de VA arbitraria — directo al
// bucle de carga de GC_mark_from (los DOS sabores de muerte del spike,
// simbolizados a mark.c:716/726).
// Firma neutral (sin tipos win32): scheduler.c la declara extern en su bloque
// de política GC (mismo precedente que su declaración local de
// GC_set_sp_corrector) y la instala vía GC_set_sp_corrector — contra un
// bdwgc sin parchear el setter es no-op y el aviso ruidoso del scheduler lo
// dice en voz alta.
// Contexto de ejecución: mundo parado, GC lock tomado — solo lecturas y
// comparaciones de dirección, nada de locks ni allocación.
// EN: BY-EXCLUSION sp corrector: if the thread's sp is NOT inside its cached
// native range, it is running on a fiber (known, unknown, or in the
// pre-publish window) and sp is corrected to its native stack_base — libgc
// then takes the WARN + real-clamp branch and scans ONLY the native stack
// (the exact behaviour ablation X4 validated). Neutral signature so
// scheduler.c can declare it extern in its GC-policy block. Runs
// world-stopped under the GC lock: address comparisons only.
void nyx_os_win32_sp_correct(void** sp_ptr, uint32_t tid) {
    char* sp = (char*)*sp_ptr;
    LONG i;
    // tid==0 no existe (GetCurrentThreadId nunca lo devuelve) y es el valor
    // "slot vacío" del registro — rechazarlo cierra cualquier match espurio
    // contra un slot a medio publicar (fix round 1 M1).
    // EN: tid==0 never occurs (GetCurrentThreadId) and is the registry's
    // "empty slot" marker — rejecting it closes any spurious match.
    if (!sp || tid == 0) return;
    for (i = 0; i < OS_CTX_WIN32_MAX_THREADS; i++) {
        if ((DWORD)g_native_stacks[i].tid != tid) continue;
        if (sp >= g_native_stacks[i].native_lo && sp < g_native_stacks[i].native_hi) {
            return;   // sp en su stack nativo: el camino normal de libgc es correcto
        }
        // sp fuera del nativo => está sobre una fiber: sp := stack_base
        // NATIVO. OJO (fix round 1 I2): en win32 esto NO deja un rango vacío
        // — produce el WARN "out of range" y el escaneo COMPLETO del stack
        // nativo clampeado por GC_get_stack_min (rev3 §3 paso 9': más
        // conservador que Linux, no menos — los frames nativos del worker SÍ
        // se escanean).
        // EN: sp outside native => on a fiber: sp := NATIVE stack_base. NOTE
        // (I2): on win32 this does NOT yield an empty range — it produces the
        // WARN + a FULL clamped scan of the native stack (rev3 §3 step 9':
        // more conservative than Linux, not less).
        *sp_ptr = g_native_stacks[i].native_hi;
        return;
    }
    // tid sin registrar (main, threads ajenos): jamás corre sobre una fiber
    // del scheduler — no tocar. / unregistered tid never runs on our fibers.
}

int os_ctx_thread_init(void) {
    // Cachear el rango NATIVO antes de convertir (el brief lo pide ANTES; en
    // la práctica ConvertThreadToFiber no cambia de stack, pero el orden deja
    // el supuesto a la vista). / cache the NATIVE range before converting.
    os_win32_native_stack_register();
    if (IsThreadAFiber()) return 0;   // idempotente
    if (!ConvertThreadToFiber(NULL)) return win_last_errno();
    return 0;
}

// Walk de VirtualQuery hacia ABAJO desde una dirección viva del stack actual
// mientras la página sea MEM_COMMIT | PAGE_READWRITE sin PAGE_GUARD — el
// MISMO algoritmo que GC_get_stack_min (win32_threads.c) y que el spike
// validó. Tope = StackBase de GetCurrentThreadStackLimits (su único extremo
// confiable); su extremo bajo (la reserva) SOLO acota el loop.
// EN: VirtualQuery walk DOWN from a live stack address while pages are
// committed RW non-guard — libgc's GC_get_stack_min algorithm, validated by
// the spike. Ceiling = StackBase (its only trustworthy end); the low end
// (the reserve) only bounds the loop.
static void os_win32_measure_committed_stack(char** out_lo, size_t* out_size) {
    ULONG_PTR nominal_lo = 0, nominal_hi = 0;
    MEMORY_BASIC_INFORMATION mbi;
    unsigned char* lowest;
    GetCurrentThreadStackLimits(&nominal_lo, &nominal_hi);
    lowest = (unsigned char*)&mbi;   // dirección viva dentro del stack actual
    for (;;) {
        unsigned char* probe = lowest - 1;
        if ((ULONG_PTR)probe < nominal_lo) break;
        if (VirtualQuery(probe, &mbi, sizeof(mbi)) == 0) break;
        if (mbi.State != MEM_COMMIT) break;
        if (mbi.Protect & PAGE_GUARD) break;
        if (mbi.Protect != PAGE_READWRITE) break;
        lowest = (unsigned char*)mbi.BaseAddress;
    }
    *out_lo = (char*)lowest;
    *out_size = (size_t)((char*)nominal_hi - (char*)lowest);
}

// Reverificación página-por-página de TODO el rango antes de que el caller lo
// registre como GC root (fix round 1 I5 — restaura la gc_add_roots_checked
// del spike, rev2 §5.3). El walk de arriba solo sondea hacia ABAJO desde una
// dirección viva: el tramo [dirección_viva, nominal_hi) quedaba sin sondear —
// el argumento "estructuralmente verificado" era asimétrico. En Windows un
// root con una página ilegible NO crashea: cuelga el proceso entero para
// siempre, sin diagnóstico (rev2 §1.1) — un VirtualQuery por región, una vez
// por fiber, es barato contra esa clase de fallo.
// EN: page-by-page re-verification of the WHOLE range before the caller
// registers it as a GC root (restores the spike's gc_add_roots_checked, rev2
// §5.3). The walk above only probes DOWN from a live address; the
// [live_address, nominal_hi) span went unprobed. On Windows an unreadable
// page in a root does not crash — it hangs the whole process forever with no
// diagnostic; one VirtualQuery per region, once per fiber, is cheap insurance.
static int os_win32_range_fully_committed_rw(const char* lo, const char* hi) {
    const unsigned char* p = (const unsigned char*)lo;
    MEMORY_BASIC_INFORMATION mbi;
    if (p >= (const unsigned char*)hi) return 0;
    while (p < (const unsigned char*)hi) {
        if (VirtualQuery(p, &mbi, sizeof(mbi)) == 0) return 0;
        if (mbi.State != MEM_COMMIT) return 0;
        if (mbi.Protect & PAGE_GUARD) return 0;
        if (mbi.Protect != PAGE_READWRITE) return 0;
        p = (const unsigned char*)mbi.BaseAddress + mbi.RegionSize;
    }
    return 1;
}

// Trampolín de fiber. PRIMERA acción (antes de entry, antes de cualquier
// alloc GC): medir el rango comiteado real y publicarlo en el storage — ahí
// nace la semántica diferida del contrato. El gate del commit es el del
// spike (ruling del autor del diseño): si el kernel NO honró
// commit==reserve, la fiber podría crecer más allá del rango medido y un
// GC_MALLOC posterior quedaría sin protección — abortar RUIDOSAMENTE acá es
// estrictamente mejor que la colección prematura silenciosa que taparía.
// EN: fiber trampoline. FIRST action (before entry, before any GC alloc):
// measure the real committed range and publish it into the storage. The
// commit gate is the spike's: if the kernel did not honour commit==reserve
// the fiber could grow past the measured range — aborting LOUDLY here beats
// the silent premature collection it would otherwise hide.
static VOID WINAPI os_win32_ctx_tramp(LPVOID param) {
    os_ctx_win32_t* p = (os_ctx_win32_t*)param;
    char* lo = NULL;
    size_t sz = 0;
    os_win32_measure_committed_stack(&lo, &sz);
    if (sz + 2 * OS_CTX_WIN32_PAGE < p->req_size) {
        fprintf(stderr,
                "[nyx] os_ctx win32: el kernel NO honro dwStackCommitSize "
                "(medido=%zu, pedido=%zu) — la fiber podria crecer fuera del "
                "root medido. ABORT.\n", sz, p->req_size);
        abort();
    }
    // I5: rango COMPLETO verificado página-por-página antes de publicarlo (el
    // caller lo registra como GC root sin poder verificarlo — VirtualQuery no
    // existe del otro lado del contrato). Abortar acá es estrictamente mejor
    // que el cuelgue sin diagnóstico que taparía (rev2 §1.1).
    // EN: I5 — the WHOLE range verified page-by-page before publication (the
    // caller registers it as a GC root and cannot verify it itself). Aborting
    // here strictly beats the diagnostic-free hang it would otherwise hide.
    if (!os_win32_range_fully_committed_rw(lo, lo + sz)) {
        fprintf(stderr,
                "[nyx] os_ctx win32: el rango medido [%p,%p) NO es integramente "
                "PAGE_READWRITE comiteado — registrarlo colgaria la proxima "
                "coleccion (rev2 §1.1). ABORT.\n", (void*)lo, (void*)(lo + sz));
        abort();
    }
    // Publicación en el storage: tamaño primero, puntero después — espejo del
    // orden release de goroutine_stack_publish (el lector del par publicado
    // es el propio worker tras un swap, pero el orden documentado se respeta
    // en las dos puntas). / size first, pointer second — mirrors the caller's
    // documented publication order.
    p->stack_size = sz;
    p->stack_lo = lo;
    p->entry(p->arg);
    // entry retornó: contrato roto. goroutine_entry termina SIEMPRE con un
    // os_ctx_swap de vuelta al scheduler — si el control llega acá, retornar
    // del fiber-proc haría ExitThread del WORKER entero (así terminan las
    // fibers en win32): corrupción muda del scheduler. Abortar en voz alta
    // (misma filosofía I4 que los stubs que este bloque reemplaza).
    // EN: entry returned: broken contract. Returning from a fiber proc would
    // ExitThread the whole WORKER — abort loudly instead (I4 philosophy).
    fprintf(stderr, "[nyx] os_ctx win32: entry retorno sin os_ctx_swap final — ABORT\n");
    abort();
}

int os_ctx_make(os_ctx_t* c, size_t stack_size, void (*entry)(void*), void* arg) {
    if (!c || !entry || stack_size == 0) return -EINVAL;
    os_ctx_win32_t* p = WCTX(c);
    p->entry = entry;
    p->arg = arg;
    p->req_size = stack_size;
    p->stack_lo = NULL;      // semántica diferida: el tramp publica en la 1ª entrada
    p->stack_size = 0;
    // FIBER_FLAG_FLOAT_SWITCH: sin él, x87/XMM no se conmutan entre fibers en
    // x86 de 32 bits; en x64/ARM64 es benigno y documenta la intención (los
    // goroutines de Nyx usan float). / without it, FP state is not switched on
    // 32-bit x86; benign on x64/ARM64 and documents intent.
    p->fiber = CreateFiberEx(stack_size, stack_size, FIBER_FLAG_FLOAT_SWITCH,
                             os_win32_ctx_tramp, p);
    if (!p->fiber) {
        int rc = win_last_errno();
        memset(p, 0, sizeof(*p));
        return (rc == 0) ? -ENOMEM : rc;
    }
    return 0;
}

int os_ctx_remake(os_ctx_t* c, void (*entry)(void*), void* arg) {
    if (!c || !entry) return -EINVAL;
    os_ctx_win32_t* p = WCTX(c);
    // Sobre un ctx en cero no hay nada que reusar (contrato: remake exige un
    // ctx ya HECHO). / nothing to reuse over a zeroed ctx (contract).
    if (!p->fiber || p->req_size == 0) return -EINVAL;
    // Sin reuso real de la fiber: Delete + CreateFiberEx (trade-off fichado —
    // pooling real de fibers es ficha futura). El stack nuevo vuelve a la
    // semántica diferida: el rango medido viejo NO vale para la fiber nueva.
    // ⚠️ Mismo contrato que os_ctx_free (fix round 1 M6): DeleteFiber de la
    // fiber ACTUAL termina el thread (API documentada) — el caller garantiza
    // que nadie está corriendo sobre este ctx (el pool solo recicla ctxs
    // DONE + vacated).
    // EN: no real fiber reuse — Delete + CreateFiberEx (future ticket). The
    // new stack goes back to deferred semantics: the old measured range does
    // not hold for the new fiber. Same contract as os_ctx_free (M6):
    // DeleteFiber of the CURRENT fiber kills the thread — the caller
    // guarantees nothing runs on this ctx.
    DeleteFiber(p->fiber);
    p->fiber = NULL;
    p->entry = entry;
    p->arg = arg;
    p->stack_lo = NULL;
    p->stack_size = 0;
    p->fiber = CreateFiberEx(p->req_size, p->req_size, FIBER_FLAG_FLOAT_SWITCH,
                             os_win32_ctx_tramp, p);
    if (!p->fiber) {
        // El fallo deja el ctx en CERO (ya no posee nada): el caller lo trata
        // como remake fallido y libera/descarta — mismo camino que os_posix.
        // EN: failure leaves the ctx ZEROED (it owns nothing anymore).
        int rc = win_last_errno();
        memset(p, 0, sizeof(*p));
        return (rc == 0) ? -ENOMEM : rc;
    }
    return 0;
}

void os_ctx_stack(const os_ctx_t* c, void** lo, size_t* size) {
    // NULL/0 hasta la primera entrada de la fiber (semántica diferida del
    // contrato — el caller difiere GC_add_roots hasta que esto publique).
    // EN: NULL/0 until the fiber's first entry (deferred semantics).
    if (lo)   *lo   = c ? (void*)WCTXC(c)->stack_lo : NULL;
    if (size) *size = c ? WCTXC(c)->stack_size : 0;
}

void os_ctx_guard(const os_ctx_t* c, void** lo, size_t* size) {
    // win32: commit==reserve no deja PAGE_GUARD observable en los stacks de
    // fiber; el overflow cae fuera de la reserva → AV → fault-guard (ruidoso).
    // size=0 significa "sin guard region observable" — no es un error.
    // EN: no observable guard region on win32 fiber stacks; size=0 by contract.
    (void)c;
    if (lo)   *lo   = NULL;
    if (size) *size = 0;
}

void os_ctx_swap(os_ctx_t* save, os_ctx_t* run) {
    os_ctx_win32_t* rp;
    // `save` puede venir SIN inicializar (contrato): se llena al suspender —
    // con Fibers eso es capturar el handle de la fiber ACTUAL, para que el
    // swap simétrico de vuelta sepa a dónde volver (el scheduler_ctx del
    // worker se llena así en su primer swap; GetCurrentFiber es válido porque
    // os_ctx_thread_init ya convirtió el thread — contrato "1 vez por worker
    // ANTES del primer swap").
    // EN: `save` may be uninitialized (contract) — filled on suspend by
    // capturing the CURRENT fiber handle so the symmetric swap back knows
    // where to return; valid because os_ctx_thread_init already converted
    // this thread (contract: once per worker BEFORE the first swap).
    WCTX(save)->fiber = GetCurrentFiber();
    rp = WCTX(run);
    if (!rp->fiber) {
        // Mismo argumento I4 que los stubs viejos: un swap que "no hace nada"
        // es corrupción muda del scheduler, no un error recuperable.
        // EN: same I4 argument — a do-nothing swap is silent corruption.
        fprintf(stderr, "[nyx] os_ctx_swap win32: run sin fiber (ctx en cero?) — ABORT\n");
        abort();
    }
    SwitchToFiber(rp->fiber);
}

void os_ctx_free(os_ctx_t* c) {
    if (!c) return;
    os_ctx_win32_t* p = WCTX(c);
    // DeleteFiber de la fiber ACTUAL termina el thread (documentado por la
    // API): el caller garantiza que nadie corre sobre este ctx (reap solo
    // libera tras DONE + stack_vacated). Cero explícito después: un free
    // repetido queda no-op y el ctx puede volver a hacerse sin memset
    // (contrato de inicialización).
    // EN: DeleteFiber of the CURRENT fiber kills the thread (documented API
    // behaviour); the caller guarantees nothing runs on this ctx. Explicit
    // zeroing so repeated free is a no-op and the ctx can be made again.
    if (p->fiber) DeleteFiber(p->fiber);
    memset(p, 0, sizeof(*p));
}

// ===========================================================================
// Sockets + resolución — W4 (Winsock: WSAStartup lazy, closesocket,
// ioctlsocket(FIONBIO), WSAPoll, WSASend, WSAGetLastError → errno-space; ver
// el mapa en nyx_os.h). Hasta entonces, -ENOSYS LIMPIO: la familia try_ de E5
// lo ve como un error normal, nunca como basura muda.
// EN: W4 (Winsock). Until then, a CLEAN -ENOSYS — E5's try_ family sees a
// normal error, never silent garbage.
// ===========================================================================
int os_addr_resolve4(const char* host, int port, os_addr_t* out, int max, const char** err_str) {
    (void)host; (void)port; (void)out; (void)max;
    if (err_str) *err_str = "sockets no implementados en Windows todavia (W4)";
    return OS_RES_OTHER;
}
int os_addr_resolve_any(const char* host, int port, os_addr_t* out, int max, const char** err_str) {
    (void)host; (void)port; (void)out; (void)max;
    if (err_str) *err_str = "sockets no implementados en Windows todavia (W4)";
    return OS_RES_OTHER;
}
int os_addr_from_ip4(os_addr_t* a, const char* ip, int port) { (void)a; (void)ip; (void)port; return -ENOSYS; }
int os_addr_is_ip(const char* s) { (void)s; return 0; }   // predicado: "no sé" == "no es IP"
int os_addr_ip(const os_addr_t* a, char* buf, int buflen) { (void)a; (void)buf; (void)buflen; return -ENOSYS; }
int os_addr_port(const os_addr_t* a) { (void)a; return -ENOSYS; }
int os_addr_hostname(const os_addr_t* a, char* buf, int buflen, int require_name) {
    (void)a; (void)buf; (void)buflen; (void)require_name;
    return OS_RES_OTHER;
}

int64_t os_sock_tcp4(void) { return -ENOSYS; }
int64_t os_sock_udp4(void) { return -ENOSYS; }
int64_t os_sock_stream_for(const os_addr_t* a) { (void)a; return -ENOSYS; }
int os_sock_connect(int64_t fd, const os_addr_t* a) { (void)fd; (void)a; return -ENOSYS; }
int os_sock_bind(int64_t fd, const os_addr_t* a) { (void)fd; (void)a; return -ENOSYS; }
int os_sock_listen(int64_t fd, int backlog) { (void)fd; (void)backlog; return -ENOSYS; }
int64_t os_sock_accept(int64_t fd) { (void)fd; return -ENOSYS; }
int64_t os_sock_send(int64_t fd, const void* buf, size_t len) { (void)fd; (void)buf; (void)len; return -ENOSYS; }
int64_t os_sock_sendv(int64_t fd, const os_iovec_t* iov, int n) { (void)fd; (void)iov; (void)n; return -ENOSYS; }
int64_t os_sock_recv(int64_t fd, void* buf, size_t len) { (void)fd; (void)buf; (void)len; return -ENOSYS; }
int64_t os_sock_sendto(int64_t fd, const void* buf, size_t len, const os_addr_t* a) {
    (void)fd; (void)buf; (void)len; (void)a; return -ENOSYS;
}
int64_t os_sock_recvfrom(int64_t fd, void* buf, size_t len, os_addr_t* from) {
    (void)fd; (void)buf; (void)len; (void)from; return -ENOSYS;
}
int os_sock_close(int64_t fd) { (void)fd; return -ENOSYS; }
int os_sock_shutdown(int64_t fd, int64_t how) { (void)fd; (void)how; return -ENOSYS; }
int os_sock_peer(int64_t fd, os_addr_t* out) { (void)fd; (void)out; return -ENOSYS; }
int os_sock_set_reuseaddr(int64_t fd) { (void)fd; return -ENOSYS; }
int os_sock_set_nodelay(int64_t fd) { (void)fd; return -ENOSYS; }
int os_sock_set_timeout(int64_t fd, int64_t seconds) { (void)fd; (void)seconds; return -ENOSYS; }
int os_sock_set_nonblocking(int64_t fd, int on) { (void)fd; (void)on; return -ENOSYS; }
int os_sock_error(int64_t fd) { (void)fd; return -ENOSYS; }
// ⚠️ runtime.c lo llama en nyx_read_byte_timeout (poll de stdin). En Windows
// ese camino devolverá -ENOSYS limpio en vez de esperar por el fd: aceptable
// para W2 — el subset de regresión no usa terminal interactiva. W4 lo cubre
// (para stdin, con WaitForSingleObject sobre el handle de consola, que WSAPoll
// NO acepta).
// EN: runtime.c calls this in nyx_read_byte_timeout (stdin poll). On Windows
// that path returns a clean -ENOSYS instead of waiting — acceptable for W2
// (the regression subset uses no interactive terminal). W4 covers it.
int os_sock_poll1(int64_t fd, int events, int timeout_ms) {
    (void)fd; (void)events; (void)timeout_ms; return -ENOSYS;
}
int64_t os_net_ifaces4(void (*cb)(const char* name, const char* ip, const char* mask, void* ud), void* ud) {
    (void)cb; (void)ud; return -ENOSYS;   // W4: GetAdaptersAddresses
}
int os_inet_ntop6(const unsigned char* bytes16, char* buf, int buflen) {
    (void)bytes16; (void)buf; (void)buflen; return -ENOSYS;   // W4: ws2tcpip InetNtopA
}

// ===========================================================================
// os_ev — W4 (IOCP nativo: CreateIoCompletionPort/GetQueuedCompletionStatus,
// completion de verdad en vez de la emulación sobre readiness de epoll).
// EN: W4 (native IOCP — real completion instead of epoll's readiness
// emulation).
// ===========================================================================
os_ev_loop_t* os_ev_loop_new(void) { return NULL; }
void os_ev_loop_free(os_ev_loop_t* l) { (void)l; }
int os_ev_timer(os_ev_loop_t* l, int64_t ms, os_ev_cb cb, void* ud) { (void)l; (void)ms; (void)cb; (void)ud; return -ENOSYS; }
int os_ev_wake(os_ev_loop_t* l) { (void)l; return -ENOSYS; }
int os_ev_read(os_ev_loop_t* l, os_sock_t sock, void* buf, int64_t len, os_ev_cb cb, void* ud) {
    (void)l; (void)sock; (void)buf; (void)len; (void)cb; (void)ud; return -ENOSYS;
}
int os_ev_write(os_ev_loop_t* l, os_sock_t sock, const void* buf, int64_t len, os_ev_cb cb, void* ud) {
    (void)l; (void)sock; (void)buf; (void)len; (void)cb; (void)ud; return -ENOSYS;
}
int os_ev_cancel(os_ev_loop_t* l, os_sock_t sock) { (void)l; (void)sock; return -ENOSYS; }
int os_ev_run_once(os_ev_loop_t* l, int timeout_ms) { (void)l; (void)timeout_ms; return -ENOSYS; }

// ===========================================================================
// Procesos — exec()/exec_code() de runtime.c.
// ===========================================================================
int os_proc_run_capture(const char* cmd,
                        void (*cb)(const void* chunk, size_t len, void* ud),
                        void* ud) {
    if (!cmd) return -1;
    // "rb" (no "r"): el contrato dice binary-safe. En Windows el modo TEXTO
    // traduce CRLF→LF y corta en el primer 0x1A (EOF de DOS) — con "rb" el
    // chunk llega byte-exacto, igual que en posix.
    // EN: "rb" (not "r"): the contract says binary-safe. Windows' TEXT mode
    // translates CRLF→LF and stops at the first 0x1A (DOS EOF); "rb" delivers
    // the bytes verbatim, like posix.
    FILE* p = _popen(cmd, "rb");
    if (!p) return -1;
    char buf[4096];
    size_t got;
    while ((got = fread(buf, 1, sizeof(buf), p)) > 0) {
        if (cb) cb(buf, got, ud);
    }
    _pclose(p);
    return 0;
}

int64_t os_proc_run_status(const char* cmd) {
    if (!cmd) return -1;
    // ⚠️ DIVERGENCIA de posix, no un olvido: en win32 system() devuelve el
    // exit code del comando DIRECTO, sin el encoding de wait(2) — no hay
    // WIFEXITED/WEXITSTATUS que aplicar (y no existen en el CRT). -1 sigue
    // significando "no se pudo lanzar el intérprete de comandos", igual que
    // en posix.
    // EN: DIVERGENCE from posix, deliberate: win32's system() returns the
    // command's exit code DIRECTLY, with no wait(2) encoding — there is no
    // WIFEXITED/WEXITSTATUS to apply (they do not exist in the CRT). -1 still
    // means "could not launch the command interpreter", as on posix.
    int status = system(cmd);
    return status == -1 ? -1 : (int64_t)status;
}

// ===========================================================================
// Carga dinámica — los 3 adapters (zlib/sqlite/llama). Los NOMBRES (.dll y sus
// cadenas de fallback) son responsabilidad del CALLER, igual que en posix.
// ===========================================================================
// Buffer por thread (como dlerror(), que es per-thread en glibc).
// __declspec(thread) y no OS_THREAD_LOCAL: el header define ese macro como
// __thread para posix y documenta que win32 lo redefine.
// EN: per-thread buffer (dlerror is per-thread in glibc).
static __declspec(thread) char g_dl_err[512];

static void os_win32_dl_clear_error(void) { g_dl_err[0] = '\0'; }

static void os_win32_dl_record_error(void) {
    DWORD e = GetLastError();
    DWORD n = FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                             NULL, e, 0, g_dl_err, (DWORD)sizeof(g_dl_err), NULL);
    if (n == 0) {
        snprintf(g_dl_err, sizeof(g_dl_err), "windows error %u", (unsigned)e);
        return;
    }
    // FormatMessage termina sus mensajes con ".\r\n" — se recortan para que
    // el mensaje encaje en una línea de log como los de dlerror().
    // EN: FormatMessage appends ".\r\n"; trimmed so the message fits one log
    // line like dlerror()'s.
    while (n > 0 && (g_dl_err[n - 1] == '\n' || g_dl_err[n - 1] == '\r' ||
                     g_dl_err[n - 1] == ' '  || g_dl_err[n - 1] == '.')) {
        g_dl_err[--n] = '\0';
    }
}

os_dl_t os_dl_open(const char* name, int global) {
    // `global` se IGNORA en win32 y no puede no serlo: no hay RTLD_GLOBAL/
    // RTLD_LOCAL. Cada módulo resuelve sus imports por su propia tabla, así
    // que un LoadLibrary NUNCA inyecta símbolos en el espacio global del
    // proceso — es decir, el comportamiento win32 equivale al RTLD_LOCAL que
    // compress.c necesita (dlsym por handle), y el RTLD_GLOBAL que piden
    // sqlite/llama es un no-op inofensivo ahí: ellos también resuelven por
    // handle vía os_dl_sym.
    // EN: `global` is IGNORED — win32 has no RTLD_GLOBAL/RTLD_LOCAL. Every
    // module resolves imports through its own table, so LoadLibrary never
    // injects symbols process-wide: win32's behavior equals the RTLD_LOCAL
    // compress.c depends on, and sqlite/llama's RTLD_GLOBAL is a harmless
    // no-op since they also resolve per-handle through os_dl_sym.
    (void)global;
    os_win32_dl_clear_error();
    if (!name) return NULL;
    HMODULE h = LoadLibraryA(name);
    if (!h) os_win32_dl_record_error();
    return (os_dl_t)h;
}

void* os_dl_sym(os_dl_t h, const char* name) {
    os_win32_dl_clear_error();
    if (!h || !name) return NULL;
    // GetProcAddress devuelve un FARPROC (puntero a función): el cast a void*
    // es el mismo que hace dlsym y el que la propia doc de Microsoft usa.
    FARPROC p = GetProcAddress((HMODULE)h, name);
    if (!p) os_win32_dl_record_error();
    return (void*)(uintptr_t)p;
}

const char* os_dl_error(void) {
    return g_dl_err[0] ? g_dl_err : NULL;
}

int os_dl_close(os_dl_t h) {
    if (!h) return -EINVAL;
    return FreeLibrary((HMODULE)h) ? 0 : win_last_errno();
}

// ===========================================================================
// Señales. El CRT de Windows implementa signal() para SEIS señales
// (SIGINT/SIGILL/SIGFPE/SIGSEGV/SIGTERM/SIGABRT) — las demás dan EINVAL.
// OS_SIGWINCH (28) NO EXISTE en Windows (no hay señal de resize: la consola
// notifica por WINDOW_BUFFER_SIZE_EVENT en el input handle, camino distinto,
// W5) → -EINVAL limpio.
// EN: the Windows CRT implements signal() for SIX signals; OS_SIGWINCH does
// not exist (console resize arrives as WINDOW_BUFFER_SIZE_EVENT on the input
// handle — a different path, W5) → clean -EINVAL.
//
// Los valores de OS_SIGINT/TERM/ILL/FPE/SEGV coinciden numéricamente con los
// del CRT (2/15/4/8/11), así que no hace falta traducir — pero la validación
// es EXPLÍCITA (lista blanca) en vez de delegarla en el errno de signal(),
// para que -EINVAL sea siempre el mismo código venga de donde venga.
// EN: the OS_SIG* values match the CRT's numerically, so no translation is
// needed — but validation is an EXPLICIT whitelist so -EINVAL is uniform.
// ===========================================================================
static int os_win32_sig_supported(int signum) {
    switch (signum) {
        case SIGINT: case SIGILL: case SIGFPE:
        case SIGSEGV: case SIGTERM: case SIGABRT: return 1;
        default: return 0;
    }
}

int os_sig_install(int signum, os_sig_fn fn) {
    if (!os_win32_sig_supported(signum)) return -EINVAL;
    // I2 (review ronda 1, silently-wrong): el CRT ACEPTA signal(SIGTERM, fn)
    // y devuelve éxito, pero Windows **NUNCA GENERA SIGTERM**: las
    // terminaciones reales (Ctrl+Break, cierre de consola, logoff, shutdown)
    // llegan por SetConsoleCtrlHandler, y TerminateProcess no avisa nada. Un 0
    // acá le prometería a persist.c que su shutdown-flush quedó armado — y ese
    // handler no dispararía JAMÁS: datos perdidos en silencio, con todos los
    // gates verdes. -ENOSYS es la única respuesta honesta hasta que W5 traduzca
    // los eventos de SetConsoleCtrlHandler a estos números.
    // SIGINT SÍ se queda: el CRT lo levanta de verdad con Ctrl+C (corre el
    // handler en un thread aparte, pero corre).
    // EN: I2 (review round 1, silently-wrong): the CRT ACCEPTS
    // signal(SIGTERM, fn) and reports success, but Windows NEVER RAISES
    // SIGTERM — real terminations arrive through SetConsoleCtrlHandler, and
    // TerminateProcess gives no notice at all. Returning 0 would promise
    // persist.c that its shutdown-flush is armed while that handler can never
    // fire: silent data loss with every gate green. -ENOSYS is the only honest
    // answer until W5 translates SetConsoleCtrlHandler events into these
    // numbers. SIGINT stays: the CRT really does raise it on Ctrl+C.
    if (signum == OS_SIGTERM) return -ENOSYS;
    return signal(signum, fn) == SIG_ERR ? crt_last_errno() : 0;
}

// ⚠️ En win32 NO hay SA_RESTART ni sigaction: signal() del CRT es la única
// forma de registrar, y las llamadas bloqueantes de Windows NO se reinician
// solas (no hay EINTR en el modelo win32 — no existe la entrega asíncrona de
// señales sobre un syscall en vuelo). Es decir: la distinción restart /
// no-restart que en posix es observable, en win32 NO existe, y esta variante
// es idéntica a os_sig_install a propósito. El caller que la usa por el EINTR
// (el no-op de SIGWINCH en runtime.c) apunta a una señal que en win32 ya da
// -EINVAL antes de llegar acá.
// EN: win32 has no SA_RESTART and no sigaction — the CRT's signal() is the
// only registration path, and Windows blocking calls do not auto-restart
// (there is no EINTR model at all). The restart/no-restart distinction is
// observable on posix but does NOT exist here, so this variant is
// deliberately identical. Its EINTR-motivated caller (runtime.c's SIGWINCH
// no-op) targets a signal that already returns -EINVAL above.
int os_sig_install_no_restart(int signum, os_sig_fn fn) {
    return os_sig_install(signum, fn);
}

int os_sig_reset(int signum) {
    if (!os_win32_sig_supported(signum)) return -EINVAL;
    return signal(signum, SIG_DFL) == SIG_ERR ? crt_last_errno() : 0;
}

int os_sig_ignore(int signum) {
    if (!os_win32_sig_supported(signum)) return -EINVAL;
    return signal(signum, SIG_IGN) == SIG_ERR ? crt_last_errno() : 0;
}

int os_sig_is_default(int signum) {
    // El CRT NO expone consulta de disposición (no hay sigaction con act=NULL)
    // y "consultar" con signal() la MODIFICARÍA — inaceptable para una función
    // que el contrato define como "NO modifica nada". Se devuelve 1
    // ("es la default") para las señales soportadas, que es la respuesta
    // conservadora del único caller: nyx_raw_mode_enter instala su no-op de
    // SIGWINCH solo si is_default()==1 — y OS_SIGWINCH NO está soportada acá,
    // así que devuelve -EINVAL y ese caller NUNCA instala nada en Windows. El
    // flujo del caller queda correcto por ese camino, no por este valor.
    // EN: the CRT exposes no disposition query, and "querying" via signal()
    // would MODIFY it — unacceptable for a function contracted not to change
    // anything. Returns 1 for supported signals. The only caller
    // (nyx_raw_mode_enter) asks about OS_SIGWINCH, which is unsupported here
    // and returns -EINVAL, so that caller installs nothing on Windows — its
    // flow is correct through that branch, not through this value.
    if (!os_win32_sig_supported(signum)) return -EINVAL;
    return 1;
}

// ===========================================================================
// Fault-guard de guard-pages (scheduler): en Windows un acceso a una página
// PAGE_NOACCESS NO llega como señal sino como EXCEPCIÓN estructurada
// (EXCEPTION_ACCESS_VIOLATION). Se engancha con AddVectoredExceptionHandler,
// que corre ANTES que cualquier __try/__except del frame — el equivalente
// funcional del handler de proceso con SA_SIGINFO de posix.
// M8 (review ronda 1): el filtro cubre TRES códigos, el análogo win32 del par
// SIGSEGV+SIGBUS de posix:
//   EXCEPTION_ACCESS_VIOLATION     (0xC0000005) — la guard page NOACCESS.
//   EXCEPTION_IN_PAGE_ERROR        (0xC0000006) — la página existe pero el SO
//     no pudo materializarla (E/S fallida, memoria mapeada de un archivo que
//     desapareció): en posix es SIGBUS, y un fault de stack sobre memoria
//     paginada puede llegar por acá.
//   EXCEPTION_DATATYPE_MISALIGNMENT(0x80000002) — el otro SIGBUS clásico;
//     IMPORTA EN ARM64, donde los accesos desalineados a memoria de
//     dispositivo/exclusiva sí faultean.
// La dirección faltante viene en ExceptionInformation[1] para los dos primeros
// (el [0] es el tipo de acceso: 0 lectura / 1 escritura / 8 DEP);
// DATATYPE_MISALIGNMENT NO reporta dirección de dato (NumberParameters 0), así
// que se pasa NULL — el on_fault de scheduler.c compara contra sus guard pages
// y un NULL no matchea, o sea que degrada a "no es mío" → re-raise. Correcto y
// conservador, nunca un fault tragado.
// EN: M8 — the filter covers THREE codes, the win32 analogue of posix's
// SIGSEGV+SIGBUS pair: ACCESS_VIOLATION (the NOACCESS guard page),
// IN_PAGE_ERROR (page exists but the OS could not materialize it — posix
// SIGBUS), and DATATYPE_MISALIGNMENT (the other classic SIGBUS; it MATTERS ON
// ARM64). The faulting address is ExceptionInformation[1] for the first two;
// DATATYPE_MISALIGNMENT reports no data address, so NULL is passed — it will
// not match any guard page, degrading to "not mine" → re-raise. Conservative,
// never a swallowed fault.
// ===========================================================================
static int (*g_fault_on_fault)(void* addr) = NULL;
static volatile PVOID g_fault_veh = NULL;

static LONG CALLBACK os_win32_veh(PEXCEPTION_POINTERS ep) {
    if (!ep || !ep->ExceptionRecord) return EXCEPTION_CONTINUE_SEARCH;
    DWORD code = ep->ExceptionRecord->ExceptionCode;
    int is_access = (code == EXCEPTION_ACCESS_VIOLATION || code == EXCEPTION_IN_PAGE_ERROR);
    if (!is_access && code != EXCEPTION_DATATYPE_MISALIGNMENT) {
        return EXCEPTION_CONTINUE_SEARCH;
    }
    void* addr = NULL;
    if (is_access && ep->ExceptionRecord->NumberParameters >= 2) {
        addr = (void*)(uintptr_t)ep->ExceptionRecord->ExceptionInformation[1];
    }
    int (*cb)(void*) = g_fault_on_fault;
    if (cb && cb(addr)) {
        // Manejado: el callback ya hizo _exit (contrato de nyx_os.h). Este
        // return es defensivo — si volviera, reintentar la instrucción
        // faultearía de nuevo en loop, así que se deja seguir la cadena.
        // EN: handled — the callback already _exit'd (nyx_os.h contract).
        // Defensive return: continuing execution would re-fault forever.
        return EXCEPTION_CONTINUE_SEARCH;
    }
    // No es nuestro: que siga la cadena hasta el manejador por defecto — un
    // access violation genuino sigue siendo un crash genuino.
    // EN: not ours — let the chain reach the default handler; a genuine access
    // violation stays a genuine crash.
    return EXCEPTION_CONTINUE_SEARCH;
}

int os_fault_guard_install(int (*on_fault)(void* addr)) {
    g_fault_on_fault = on_fault;
    // M6 (review ronda 1): idempotencia REAL. El `if (g_fault_veh) return 0;`
    // + asignación de antes era un test-and-set no atómico: dos threads podían
    // pasar el chequeo a la vez y registrar DOS VEH (el segundo handle se
    // perdía, quedando imposible de remover). El CAS publica el handle una sola
    // vez; el perdedor de la carrera remueve el suyo y devuelve 0 — el
    // resultado observable es el mismo que si hubiera llegado segundo.
    // EN: M6 — REAL idempotence. The previous check-then-assign was a
    // non-atomic test-and-set: two threads could both pass and register TWO
    // VEHs (the second handle leaking, unremovable). The CAS publishes the
    // handle exactly once; the race loser removes its own and returns 0.
    if (g_fault_veh) return 0;
    PVOID h = AddVectoredExceptionHandler(1 /* first */, os_win32_veh);
    if (!h) return -ENOMEM;   // el único fallo documentado es OOM
    PVOID prev = InterlockedCompareExchangePointer((PVOID volatile*)&g_fault_veh, h, NULL);
    if (prev != NULL) RemoveVectoredExceptionHandler(h);
    return 0;
}

// I3 (review ronda 1): el comentario anterior decía que Windows "ya reserva
// una guard page + zona de recuperación, no hace falta sigaltstack". Eso es
// CIERTO para los stacks que crea el SO (el TEB describe StackLimit y el
// kernel corre el guard-page dance), y **FALSO para los stacks de GOROUTINE**
// del scheduler: son memoria anónima de os_vm_map, sin TEB que las describa.
// Encima el despacho de una excepción estructurada construye el
// EXCEPTION_RECORD + CONTEXT (~1.2 KB) EN EL STACK QUE FAULTEÓ — justo lo que
// en un overflow está pegado a la página NOACCESS: el despacho faultea a su
// vez y el proceso muere sin diagnóstico, exactamente el agujero que el
// fault-guard existe para tapar.
// Por eso este 0 NO significa "no hace falta nada": significa "no hay nada
// que hacer POR THREAD en el modelo de win32" (no existe sigaltstack). La
// solución de W3 es de OTRA capa: una página extra COMMITTED entre la guard y
// el área útil del stack de goroutine (espacio para que el despacho respire),
// o despachar fuera del stack faulteado. NO asumir que el kernel lo cubre.
// EN: I3 — the old comment claimed Windows' own guard page removes the need
// for sigaltstack. True for OS-created stacks (described by the TEB), FALSE
// for the scheduler's GOROUTINE stacks: anonymous os_vm_map memory with no
// TEB. Worse, dispatching a structured exception builds EXCEPTION_RECORD +
// CONTEXT (~1.2 KB) ON THE FAULTING STACK — precisely what sits against the
// NOACCESS page during an overflow: the dispatch faults too and the process
// dies with no diagnosis, the very hole the fault guard exists to close. So
// this 0 does not mean "nothing is needed": it means "there is nothing
// PER-THREAD to do in win32's model" (no sigaltstack exists). W3's fix belongs
// to another layer: one extra COMMITTED page between the guard and the usable
// area of each goroutine stack (room for the dispatch to breathe), or
// dispatching off the faulting stack. Do NOT assume the kernel covers it.
int os_fault_guard_thread_init(void) { return 0; }

// ===========================================================================
// Filesystem — los 3 callers medidos de file-io.c.
// ===========================================================================
int os_fs_stat(const char* path, os_fs_info_t* out) {
    if (!out) return -EINVAL;
    out->exists = 0;
    if (!path) return -EINVAL;
    WIN32_FILE_ATTRIBUTE_DATA d;
    if (GetFileAttributesExA(path, GetFileExInfoStandard, &d)) {
        out->exists = 1;
        return 0;
    }
    DWORD e = GetLastError();
    // "No existe" NO es error de esta capa (contrato de nyx_os.h). En win32 el
    // "no existe" llega con TRES códigos distintos según qué parte del path
    // falló, más ERROR_INVALID_NAME para un path sintácticamente imposible
    // (que en posix también sería un stat fallido no-fatal).
    // EN: "doesn't exist" is not an error at this layer; win32 reports it with
    // three different codes depending on which path component failed.
    if (e == ERROR_FILE_NOT_FOUND || e == ERROR_PATH_NOT_FOUND ||
        e == ERROR_INVALID_NAME   || e == ERROR_BAD_NETPATH) {
        return 0;
    }
    return win_last_errno();
}

int os_fs_mkdir(const char* path) {
    if (!path) return -EINVAL;
    // NULL de security attributes == permisos heredados del padre, el
    // equivalente práctico del 0755 de posix (win32 no tiene modo octal).
    // ERROR_ALREADY_EXISTS -> -EEXIST por win_errno (el contrato lo pide
    // explícito).
    // EN: NULL security attributes == inherit from parent, the practical
    // equivalent of posix's 0755. ERROR_ALREADY_EXISTS maps to -EEXIST.
    return CreateDirectoryA(path, NULL) ? 0 : win_last_errno();
}

int64_t os_fs_listdir(const char* path,
                      void (*cb)(const char* name, void* ud),
                      void* ud) {
    if (!path) return -EINVAL;
    size_t n = strlen(path);
    if (n == 0) return -ENOENT;   // opendir("") da ENOENT en posix; sin este
                                  // guard el patrón sería "\*" (raíz del disco)
    // GOTCHA 1 del header: el patrón lleva el wildcard. `path` pelado matchea
    // el DIRECTORIO MISMO (una entrada), no sus hijos.
    // EN: header gotcha 1 — the pattern needs the wildcard; a bare path
    // matches the directory ITSELF, not its children.
    char* pat = (char*)malloc(n + 3);
    if (!pat) return -ENOMEM;
    memcpy(pat, path, n);
    size_t k = n;
    if (pat[k - 1] != '\\' && pat[k - 1] != '/') pat[k++] = '\\';
    pat[k++] = '*';
    pat[k] = '\0';

    WIN32_FIND_DATAA fd;
    HANDLE h = FindFirstFileA(pat, &fd);
    // I1 (review ronda 1): GetLastError se captura INMEDIATAMENTE, ANTES del
    // free(). El last-error es estado por-thread que CUALQUIER llamada a la API
    // puede pisar, y HeapFree (adentro de free) NO promete preservarlo — leerlo
    // después del free podía devolver un código ajeno al fallo real, es decir
    // un -errno inventado. Regla general de este archivo: capturar el
    // last-error en la línea siguiente a la llamada que falló.
    // EN: I1 (review round 1) — GetLastError is captured IMMEDIATELY, BEFORE
    // the free(). The last-error is per-thread state any API call may clobber,
    // and HeapFree (inside free) does not promise to preserve it; reading it
    // after the free could yield a code unrelated to the real failure. General
    // rule in this file: capture the last-error on the line right after the
    // call that failed.
    DWORD e = GetLastError();
    free(pat);
    if (h == INVALID_HANDLE_VALUE) {
        // GOTCHA 2 del header: un FindFirstFileA fallido NO es "0 entradas".
        // ERROR_FILE_NOT_FOUND/ERROR_PATH_NOT_FOUND → -ENOENT,
        // ERROR_ACCESS_DENIED → -EACCES, ERROR_DIRECTORY → -ENOTDIR
        // (todos vía win_errno).
        // EN: header gotcha 2 — a failed FindFirstFileA is NOT "0 entries".
        int mapped = win_errno(e);
        return -(mapped ? mapped : EIO);
    }
    int64_t count = 0;
    do {
        if (strcmp(fd.cFileName, ".") == 0 || strcmp(fd.cFileName, "..") == 0) continue;
        if (cb) cb(fd.cFileName, ud);
        count++;
    } while (FindNextFileA(h, &fd));
    // M9 (review ronda 1): salir del loop tiene DOS causas — se acabaron las
    // entradas (ERROR_NO_MORE_FILES, el caso normal) o el enumerado FALLÓ a
    // mitad de camino (disco que desaparece, permisos que cambian, red que se
    // cae). Devolver `count` en el segundo caso reportaría un listado PARCIAL
    // como si fuera completo — silently-wrong. Se captura el last-error antes
    // de FindClose por el mismo motivo que I1.
    // EN: M9 — leaving the loop has TWO causes: entries exhausted
    // (ERROR_NO_MORE_FILES, the normal case) or the enumeration FAILED midway.
    // Returning `count` in the second case would report a PARTIAL listing as
    // complete — silently wrong. Last-error captured before FindClose for the
    // same reason as I1.
    DWORD end = GetLastError();
    FindClose(h);
    if (end != ERROR_NO_MORE_FILES) {
        int mapped = win_errno(end);
        return -(mapped ? mapped : EIO);
    }
    return count;
}

// ===========================================================================
// Terminal. El estado previo (modo de consola guardado + flag "estoy en raw")
// vive ACÁ, igual que el termios guardado de os_posix.c — exit() no recibe
// ningún handle con el que reconstruirlo.
// EN: the previous state (saved console mode + "am I raw" flag) lives HERE,
// like os_posix.c's saved termios.
// ===========================================================================
static DWORD g_term_saved_mode = 0;
static int   g_term_raw_active = 0;

int os_term_isatty(int fd) {
    // Predicado 1/0 (contrato del header): _isatty devuelve "no-cero", no
    // necesariamente 1.
    return _isatty(fd) ? 1 : 0;
}

int os_term_raw_enter(void) {
    HANDLE h = GetStdHandle(STD_INPUT_HANDLE);
    if (h == NULL || h == INVALID_HANDLE_VALUE) return -ENOTTY;
    DWORD mode = 0;
    // GetConsoleMode falla si el handle NO es una consola (pipe, archivo,
    // redirección): ese es EXACTAMENTE el -ENOTTY que el contrato pide para
    // "stdin no es tty" — se prefiere sobre _isatty porque _isatty también da
    // true para dispositivos de caracteres que no son consola.
    // EN: GetConsoleMode fails when the handle is not a console — exactly the
    // -ENOTTY the contract wants, and stricter than _isatty (which is also
    // true for non-console character devices).
    if (!GetConsoleMode(h, &mode)) return -ENOTTY;
    g_term_saved_mode = mode;
    // Raw = apagar las 3 que hacen el procesamiento de línea, espejo exacto de
    // lo que cfmakeraw apaga en ICANON/ECHO/ISIG:
    //   ENABLE_LINE_INPUT      -> ICANON (no esperar Enter)
    //   ENABLE_ECHO_INPUT      -> ECHO   (no imprimir lo tecleado)
    //   ENABLE_PROCESSED_INPUT -> ISIG   (Ctrl-C llega como byte, no como señal)
    // EN: raw = clearing the three line-discipline flags, mirroring what
    // cfmakeraw clears in ICANON/ECHO/ISIG.
    DWORD raw = mode & ~(DWORD)(ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT | ENABLE_PROCESSED_INPUT);
    if (!SetConsoleMode(h, raw)) return win_last_errno();
    // El flag se marca SOLO tras un SetConsoleMode exitoso — misma divergencia
    // deliberada que os_posix.c documentó (review de Task 2, M1): nunca
    // "restaurar" un estado que jamás se aplicó.
    // EN: the flag is set ONLY after a successful SetConsoleMode — the same
    // deliberate divergence os_posix.c documents: never "restore" a state that
    // was never applied.
    g_term_raw_active = 1;
    return 0;
}

int os_term_raw_exit(void) {
    if (!g_term_raw_active) return 0;   // no-op, NO es error (contrato)
    HANDLE h = GetStdHandle(STD_INPUT_HANDLE);
    g_term_raw_active = 0;
    if (h == NULL || h == INVALID_HANDLE_VALUE) return -ENOTTY;
    return SetConsoleMode(h, g_term_saved_mode) ? 0 : win_last_errno();
}

int os_term_winsize(int* rows, int* cols) {
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    if (h == NULL || h == INVALID_HANDLE_VALUE) return -ENOTTY;
    CONSOLE_SCREEN_BUFFER_INFO ci;
    if (!GetConsoleScreenBufferInfo(h, &ci)) return win_last_errno();
    // srWindow (la VENTANA visible), no dwSize (el BUFFER de scroll, que en
    // Windows suele tener cientos de filas más que la ventana): TIOCGWINSZ
    // reporta la ventana, y el editor la usa para dibujar.
    // EN: srWindow (the visible WINDOW), not dwSize (the scrollback BUFFER,
    // usually hundreds of rows taller): TIOCGWINSZ reports the window.
    if (rows) *rows = (int)(ci.srWindow.Bottom - ci.srWindow.Top + 1);
    if (cols) *cols = (int)(ci.srWindow.Right - ci.srWindow.Left + 1);
    return 0;
}

// ===========================================================================
// fd crudos (self-pipe de señales + read_byte). CRT: _pipe/_read/_write/
// _close/_commit — fds del CRT, los mismos que _isatty de arriba.
// ===========================================================================
int os_fd_pipe(int fds[2]) {
    if (!fds) return -EINVAL;
    // 65536 = tamaño del buffer del pipe: en win32 es parámetro explícito de
    // _pipe (en posix lo fija el kernel; Linux usa 64 KiB por default — mismo
    // número, a propósito).
    // _O_BINARY: sin traducción CRLF (el self-pipe transporta BYTES de número
    // de señal, no texto). _O_NOINHERIT es el equivalente exacto de FD_CLOEXEC
    // que os_posix.c pone con fcntl: el pipe no se filtra a un proceso hijo.
    // EN: 65536 is the pipe buffer size (an explicit _pipe parameter on win32;
    // the same number Linux defaults to). _O_BINARY: no CRLF translation (the
    // self-pipe carries signal-number BYTES). _O_NOINHERIT is the exact
    // equivalent of the FD_CLOEXEC os_posix.c sets via fcntl.
    if (_pipe(fds, 65536, _O_BINARY | _O_NOINHERIT) != 0) return crt_last_errno();
    return 0;
}

int64_t os_fd_read(int fd, void* buf, int64_t n) {
    if (n < 0) return -EINVAL;
    // _read toma unsigned int: se recorta a INT_MAX (un read corto es legal
    // por contrato — "n leidos", no "n pedidos").
    unsigned int cap = (n > (int64_t)0x7FFFFFFF) ? 0x7FFFFFFFu : (unsigned int)n;
    int r = _read(fd, buf, cap);
    return r < 0 ? (int64_t)crt_last_errno() : (int64_t)r;
}

// PASSTHROUGH puro de _write (mismo contrato que la impl posix: el trampolín
// de señales de runtime.c lo llama en contexto de señal). Sin locks, sin
// allocs: solo comparar el resultado y leer errno.
// NOTA win32: el modelo de señales del CRT ejecuta el handler en un thread
// aparte (el de la consola) en vez de interrumpir al thread actual, así que la
// exigencia async-signal-safe es aún MÁS laxa acá que en posix — pero la impl
// se mantiene igual de mínima a propósito.
// EN: pure passthrough of _write (same contract as posix: called from signal
// context). Win32's CRT runs the handler on a separate thread rather than
// interrupting the current one, so the async-signal-safe bar is even lower
// here — the impl stays just as minimal on purpose.
int64_t os_fd_write(int fd, const void* buf, int64_t n) {
    if (n < 0) return -EINVAL;
    unsigned int cap = (n > (int64_t)0x7FFFFFFF) ? 0x7FFFFFFFu : (unsigned int)n;
    int r = _write(fd, buf, cap);
    return r < 0 ? (int64_t)crt_last_errno() : (int64_t)r;
}

int os_fd_close(int fd) {
    return _close(fd) == 0 ? 0 : crt_last_errno();
}

// _commit para AMBAS (contrato del header): la CRT de Windows no distingue
// "solo datos" — no hay equivalente de fdatasync, así que os_fd_datasync
// sincroniza también los metadatos. Es más fuerte que lo pedido, nunca más
// débil: el contrato (durabilidad de los datos) se cumple.
// EN: _commit for BOTH (header contract): the Windows CRT has no data-only
// variant, so os_fd_datasync also flushes metadata — stronger than asked,
// never weaker.
int os_fd_sync(int fd)     { return _commit(fd) == 0 ? 0 : crt_last_errno(); }
int os_fd_datasync(int fd) { return _commit(fd) == 0 ? 0 : crt_last_errno(); }
