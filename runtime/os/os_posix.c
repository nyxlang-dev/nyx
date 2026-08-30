// runtime/os/os_posix.c — impl POSIX de nyx_os.h. ÚNICO archivo del runtime (fuera de os/)
// autorizado a incluir pthread/epoll/unistd/socket/dlfcn/signal/mman (ratchet W1).
//
// EN: POSIX implementation of nyx_os.h. The ONLY file in the runtime (outside os/)
// authorized to include pthread/epoll/unistd/socket/dlfcn/signal/mman (W1 ratchet).
#define _GNU_SOURCE           // pthread_timedjoin_np
#include "nyx_os.h"
#include <pthread.h>
#include <errno.h>
#include <time.h>
#include <string.h>
#include <sched.h>            // sched_yield() para os_yield
#include <sys/mman.h>         // mmap/mprotect/munmap para os_vm_* (W1 inc 2)
#include <ucontext.h>         // getcontext/makecontext/swapcontext para os_ctx_* (W1 inc 2)
#include <unistd.h>           // close/read/write/isatty/fsync/fdatasync/STDIN_FILENO (os_fd_*/os_term_*)
#include <sys/socket.h>       // socket/bind/listen/accept/send/recv/setsockopt/getsockopt (os_sock_*)
#include <netinet/in.h>       // struct sockaddr_in
#include <netinet/tcp.h>      // TCP_NODELAY
#include <arpa/inet.h>        // inet_pton/inet_ntop
#include <netdb.h>            // getaddrinfo/getnameinfo/gai_strerror (os_addr_resolve4/hostname)
#include <ifaddrs.h>          // getifaddrs/freeifaddrs (os_net_ifaces4)
#include <poll.h>             // poll() (os_sock_poll1)
#include <sys/uio.h>          // writev (os_sock_sendv)
#include <fcntl.h>            // fcntl O_NONBLOCK (os_sock_set_nonblocking)
#include <stdio.h>            // snprintf (os_addr_resolve4: puerto -> string para getaddrinfo)
#include <sys/epoll.h>        // epoll_create1/epoll_ctl/epoll_wait (os_ev_* completion-style, W1 inc 4)
#include <sys/eventfd.h>      // eventfd (os_ev_wake -- despertador cross-thread, W1 inc 4)
#include <stdlib.h>           // calloc/free (os_ev_loop_new/free, W1 inc 4)
#include <sys/wait.h>         // WIFEXITED/WEXITSTATUS (os_proc_run_status, W1 inc 5) -- NO entra
                              // al ratchet este inc: process.c lo retiene legitimamente.
#include <dlfcn.h>            // dlopen/dlsym/dlerror/dlclose (os_dl_*, W1 inc 6)
#include <signal.h>           // signal/sigaction/sigaltstack (os_sig_*/os_fault_guard_*, W1 inc 7)
#include <sys/stat.h>         // stat/mkdir (os_fs_stat/os_fs_mkdir, W2 fase A)
#include <dirent.h>           // opendir/readdir/closedir (os_fs_listdir, W2 fase A)
#include <termios.h>          // tcgetattr/tcsetattr/cfmakeraw (os_term_raw_*, W2 fase A term+fd)
#include <sys/ioctl.h>        // ioctl TIOCGWINSZ (os_term_winsize, W2 fase A term+fd)
#define GC_THREADS            // redirect pthread_create→GC_pthread_create: registra el thread en Boehm.
                              // Los callers lo dejan de definir a medida que migran a esta capa
                              // (Tasks 3-5 de W1 inc 1) — hoy conviven ambos hasta que terminen.
                              // EN: redirects pthread_create→GC_pthread_create to register the thread
                              // with Boehm. Callers stop defining this as they migrate to this layer
                              // (W1 inc 1 Tasks 3-5) — both coexist today until that migration lands.
#include <gc.h>

_Static_assert(sizeof(pthread_mutex_t)  <= sizeof(os_mutex_t),  "os_mutex_t storage");
_Static_assert(sizeof(pthread_cond_t)   <= sizeof(os_cond_t),   "os_cond_t storage");
_Static_assert(sizeof(pthread_rwlock_t) <= sizeof(os_rwlock_t), "os_rwlock_t storage");
_Static_assert(sizeof(pthread_once_t)   <= sizeof(os_once_t),   "os_once_t storage");
_Static_assert(sizeof(pthread_t)        <= sizeof(os_thread_t), "os_thread_t storage");
_Static_assert(sizeof(pthread_key_t)    <= sizeof(os_tls_key_t),"os_tls_key_t storage");
#define M(m) ((pthread_mutex_t*)(m)->storage)
#define C(c) ((pthread_cond_t*)(c)->storage)
#define R(r) ((pthread_rwlock_t*)(r)->storage)
#define T(t) ((pthread_t*)(t)->storage)
#define K(k) ((pthread_key_t*)(k)->storage)

int  os_thread_create(os_thread_t* t, os_thread_fn fn, void* arg) { int rc = pthread_create(T(t), NULL, fn, arg); return rc ? -rc : 0; }
int  os_thread_join(os_thread_t* t) { int rc = pthread_join(*T(t), NULL); return rc ? -rc : 0; }
int  os_thread_timedjoin(os_thread_t* t, int64_t ms) {
    // pthread_timedjoin_np exige un deadline en CLOCK_REALTIME (no monotónico) — a
    // diferencia de os_cond_timedwait, esto es un requisito de la glibc, no una elección.
    // EN: pthread_timedjoin_np requires a CLOCK_REALTIME deadline (not monotonic) —
    // unlike os_cond_timedwait, this is a glibc requirement, not a design choice here.
    struct timespec ts; clock_gettime(CLOCK_REALTIME, &ts);
    ts.tv_sec += ms / 1000; ts.tv_nsec += (ms % 1000) * 1000000L;
    if (ts.tv_nsec >= 1000000000L) { ts.tv_sec++; ts.tv_nsec -= 1000000000L; }
    int rc = pthread_timedjoin_np(*T(t), NULL, &ts); return rc ? -rc : 0;
}
int  os_thread_detach(os_thread_t* t) { int rc = pthread_detach(*T(t)); return rc ? -rc : 0; }
// Cancelación asíncrona best-effort: pthread_cancel entrega la solicitud pero el thread
// puede tardar en morir (o nunca, si nunca pasa por un cancellation point) — ver el
// contrato completo en nyx_os.h.
// EN: best-effort async cancellation: pthread_cancel only requests it — the thread may
// take a while to die (or never, if it hits no cancellation point) — full contract in nyx_os.h.
int  os_thread_cancel(os_thread_t* t) { int rc = pthread_cancel(*T(t)); return rc ? -rc : 0; }

void os_yield(void) { sched_yield(); }

int  os_mutex_init(os_mutex_t* m) { int rc = pthread_mutex_init(M(m), NULL); return rc ? -rc : 0; }
void os_mutex_lock(os_mutex_t* m) { pthread_mutex_lock(M(m)); }
int  os_mutex_trylock(os_mutex_t* m) { int rc = pthread_mutex_trylock(M(m)); return rc ? -rc : 0; }
void os_mutex_unlock(os_mutex_t* m) { pthread_mutex_unlock(M(m)); }
void os_mutex_destroy(os_mutex_t* m) { pthread_mutex_destroy(M(m)); }

int  os_cond_init(os_cond_t* c) {
    // SIEMPRE reloj monotónico (lección condvar_timedwait de thread.c: REALTIME salta con
    // NTP/ajustes manuales y un timedwait puede despertar tarde o nunca).
    // EN: ALWAYS the monotonic clock (lesson from thread.c's condvar_timedwait: REALTIME
    // jumps with NTP/manual clock changes, which can make a timedwait fire late or never).
    pthread_condattr_t a; pthread_condattr_init(&a); pthread_condattr_setclock(&a, CLOCK_MONOTONIC);
    int rc = pthread_cond_init(C(c), &a); pthread_condattr_destroy(&a); return rc ? -rc : 0;
}
void os_cond_wait(os_cond_t* c, os_mutex_t* m) { pthread_cond_wait(C(c), M(m)); }
int  os_cond_timedwait(os_cond_t* c, os_mutex_t* m, int64_t deadline_ns) {
    // NOTA: una os_cond_t con OS_COND_STATIC_INIT usa el reloj por defecto (REALTIME) — solo
    // timedwait necesita monotónico; los callers con timedwait DEBEN usar os_cond_init.
    // deadline_ns es un deadline ABSOLUTO en el reloj de os_monotonic_ns(), no un delta.
    // EN: a statically-initialized os_cond_t (OS_COND_STATIC_INIT) uses the default clock
    // (REALTIME) — only timedwait needs monotonic, so callers that time out MUST call
    // os_cond_init first. deadline_ns is an ABSOLUTE deadline on os_monotonic_ns()'s clock,
    // not a relative delta.
    struct timespec ts = { (time_t)(deadline_ns / 1000000000LL), (long)(deadline_ns % 1000000000LL) };
    int rc = pthread_cond_timedwait(C(c), M(m), &ts); return rc ? -rc : 0;
}
void os_cond_signal(os_cond_t* c) { pthread_cond_signal(C(c)); }
void os_cond_broadcast(os_cond_t* c) { pthread_cond_broadcast(C(c)); }
void os_cond_destroy(os_cond_t* c) { pthread_cond_destroy(C(c)); }

int  os_rwlock_init(os_rwlock_t* r) { int rc = pthread_rwlock_init(R(r), NULL); return rc ? -rc : 0; }
void os_rwlock_rdlock(os_rwlock_t* r) { pthread_rwlock_rdlock(R(r)); }
int  os_rwlock_tryrdlock(os_rwlock_t* r) { int rc = pthread_rwlock_tryrdlock(R(r)); return rc ? -rc : 0; }
void os_rwlock_wrlock(os_rwlock_t* r) { pthread_rwlock_wrlock(R(r)); }
int  os_rwlock_trywrlock(os_rwlock_t* r) { int rc = pthread_rwlock_trywrlock(R(r)); return rc ? -rc : 0; }
void os_rwlock_unlock(os_rwlock_t* r) { pthread_rwlock_unlock(R(r)); }
void os_rwlock_destroy(os_rwlock_t* r) { pthread_rwlock_destroy(R(r)); }

void os_once(os_once_t* o, void (*fn)(void)) { pthread_once((pthread_once_t*)o->storage, fn); }

int   os_tls_key_create(os_tls_key_t* k) { int rc = pthread_key_create(K(k), NULL); return rc ? -rc : 0; }
void* os_tls_get(os_tls_key_t* k) { return pthread_getspecific(*K(k)); }
void  os_tls_set(os_tls_key_t* k, void* v) { pthread_setspecific(*K(k), v); }

int64_t os_monotonic_ns(void) { struct timespec ts; clock_gettime(CLOCK_MONOTONIC, &ts); return (int64_t)ts.tv_sec * 1000000000LL + ts.tv_nsec; }
int64_t os_realtime_ns(void)  { struct timespec ts; clock_gettime(CLOCK_REALTIME,  &ts); return (int64_t)ts.tv_sec * 1000000000LL + ts.tv_nsec; }
// nanosleep, interrumpido por una señal, deja el resto pendiente en el mismo `ts` (segundo
// parámetro out) — el loop reintenta con ese resto hasta dormir el total pedido.
// EN: nanosleep, when interrupted by a signal, writes the remaining time back into that
// same `ts` (the out parameter) — the loop retries with that remainder until the full
// requested duration has elapsed.
void    os_sleep_ms(int64_t ms) { struct timespec ts = { (time_t)(ms / 1000), (long)((ms % 1000) * 1000000L) }; while (nanosleep(&ts, &ts) == -1 && errno == EINTR) {} }
// strptime: XSI, expuesto por el _GNU_SOURCE del tope. Mecánica VERBATIM de
// la que time.c (nyx_datetime_parse) tenía inline.
// EN: strptime is XSI, exposed by the _GNU_SOURCE at the top. Mechanics
// VERBATIM from time.c's inline nyx_datetime_parse.
int os_time_parse(const char* date, const char* fmt, struct tm* out) {
    if (!date || !fmt || !out) return -EINVAL;
    if (strptime(date, fmt, out) == NULL) return -EINVAL;
    return 0;
}

// --- Memoria virtual / Virtual memory (W1 inc 2)

void* os_vm_map(size_t size) {
    void* p = mmap(NULL, size, PROT_READ | PROT_WRITE,
                   MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    return (p == MAP_FAILED) ? NULL : p;
}
int os_vm_protect_none(void* base, size_t size) {
    return (mprotect(base, size, PROT_NONE) == 0) ? 0 : -errno;
}
int os_vm_release(void* base, size_t size) {
    return (munmap(base, size) == 0) ? 0 : -errno;
}

// --- Contexto cooperativo / Cooperative context (W1 inc 2; ctx v2 en W3)
//
// ES: ctx v2 — el ctx es DUEÑO de su stack. El mapeo (área útil + guard
// multi-página PROT_NONE al fondo) se hace acá adentro, no en el caller. El
// motivo es win32: una Fiber no puede adoptar un stack ajeno (CreateFiberEx
// aloca el suyo), así que si el caller siguiera mapeando stacks, en win32
// registraría raíces de GC sobre un stack que la goroutine jamás usa —
// colección prematura silenciosa. Con el stack adentro, el contrato es el
// mismo en las tres plataformas y el caller solo pregunta rangos
// (os_ctx_stack/os_ctx_guard).
// EN: ctx v2 — the ctx OWNS its stack. The mapping (usable area + a
// multi-page PROT_NONE guard at the bottom) happens in here, not in the
// caller. The reason is win32: a Fiber cannot adopt a foreign stack
// (CreateFiberEx allocates its own), so a caller that kept mapping stacks
// would, on win32, register GC roots over a stack the goroutine never uses —
// a silent premature collection. With the stack inside, the contract is the
// same on all three platforms and the caller only asks for ranges.
//
// El storage opaco aloja el ucontext_t nativo PRIMERO (hereda el _Alignas(16)
// de os_ctx_t, que glibc aarch64 exige) y los campos de propiedad del stack
// después. / The opaque storage holds the native ucontext_t FIRST (inheriting
// os_ctx_t's _Alignas(16), required by glibc aarch64) and the stack-ownership
// fields after it.
typedef struct {
    ucontext_t uc;
    char*  map_base;    // base del mapeo COMPLETO (guard + útil) — para munmap
    size_t map_size;    // bytes mapeados en total
    char*  stack_lo;    // área útil (post-guard): lo que el ctx usa como stack
    size_t stack_size;  // bytes útiles (lo que el caller registra como GC root)
    char*  guard_lo;    // guard region (== map_base en posix)
    size_t guard_size;
} os_ctx_posix_t;

_Static_assert(sizeof(ucontext_t) <= sizeof(((os_ctx_t*)0)->storage),
               "os_ctx_t storage < ucontext_t de esta libc / too small for this libc");
// ctx v2: el storage tiene que alojar ucontext_t MÁS los 6 campos de
// propiedad del stack. Medido: aarch64 4560+48=4608, x86_64 968+48=1016,
// contra 4800 de storage. / ctx v2: the storage must fit ucontext_t PLUS the
// 6 stack-ownership fields (measured sizes above vs 4800 bytes of storage).
_Static_assert(sizeof(os_ctx_posix_t) <= sizeof(((os_ctx_t*)0)->storage),
               "os_ctx_t storage < ucontext_t + campos de stack (ctx v2) / too small for ctx v2");
_Static_assert(_Alignof(os_ctx_t) >= _Alignof(ucontext_t),
               "os_ctx_t sub-alineado para esta libc / underaligned for this libc");
_Static_assert(_Alignof(os_ctx_t) >= _Alignof(os_ctx_posix_t),
               "os_ctx_t sub-alineado para el overlay ctx v2 / underaligned for the ctx v2 overlay");
#define PCTX(c)  ((os_ctx_posix_t*)(c)->storage)
#define PCTXC(c) ((const os_ctx_posix_t*)(c)->storage)
#define CTX(c)   (&PCTX(c)->uc)

// ES: la guard NO puede ser de una sola página. Un frame más grande que una
// página mueve SP por debajo de la guard sin tocarla nunca (stack clash
// clásico) — y hay frames así en el propio runtime corriendo dentro de
// goroutines: `char line[4096]`/`hdr[4096]` en net.c, buffers de tls.c y
// process.c. Sin -fstack-clash-protection, ese salto aterriza en el mapeo
// vecino de abajo, que con altísima probabilidad es la cima ÚTIL del stack de
// otra goroutine (mmap empaqueta hacia abajo) — la corrupción silenciosa
// exacta que la guard viene a cerrar. 16 páginas de PROT_NONE cuestan CERO
// RSS (solo espacio virtual). Constante mudada VERBATIM desde scheduler.c
// (era NYX_GUARD_PAGES) al pasar el mapeo a la capa (W3, ctx v2).
// EN: the guard cannot be a single page — a frame larger than one page moves
// SP below it without ever touching it (classic stack clash), and the runtime
// has such frames running inside goroutines. 16 PROT_NONE pages cost ZERO RSS
// (virtual space only). Constant moved VERBATIM from scheduler.c when the
// mapping moved into the layer (W3, ctx v2).
#define OS_CTX_GUARD_PAGES 16

static size_t g_ctx_page_size = 0;   // resuelto una vez; carrera benigna (idempotente)

static size_t os_ctx_page_size(void) {
    // Carrera benigna a propósito: todos los threads calculan el MISMO valor y
    // escriben lo mismo (sysconf no falla distinto por thread), así que un
    // os_once acá solo agregaría un lock al camino de creación de stacks. Se
    // lee/escribe con __atomic RELAXED igual: la carrera es benigna en la
    // semántica, no en el modelo de memoria de C (un acceso pelado sería UB
    // formal y lo marcaría TSan).
    // EN: deliberately benign race — every thread computes the SAME value, so an
    // os_once would only add a lock to the stack-creation path. Still accessed
    // with __atomic RELAXED: the race is benign in semantics, not in C's memory
    // model (a plain access would be formal UB and TSan would flag it).
    size_t ps = __atomic_load_n(&g_ctx_page_size, __ATOMIC_RELAXED);
    if (ps == 0) {
        long v = sysconf(_SC_PAGESIZE);
        ps = (v > 0) ? (size_t)v : 4096;
        __atomic_store_n(&g_ctx_page_size, ps, __ATOMIC_RELAXED);
    }
    return ps;
}

// ES: makecontext solo pasa ints de 32 bits → el trampolín reensambla los
// DOS punteros (entry y arg) desde 4 mitades. Es el mismo hack hi/lo que
// scheduler.c tenía inline — ahora vive acá, el contrato es entry(void*).
// EN: makecontext only passes 32-bit ints → the trampoline reassembles BOTH
// pointers (entry and arg) from 4 halves. Same hi/lo hack scheduler.c had
// inline — it now lives here; the contract is entry(void*).
static void os_ctx_trampoline(uint32_t entry_hi, uint32_t entry_lo,
                              uint32_t arg_hi, uint32_t arg_lo) {
    void (*entry)(void*) = (void (*)(void*))
        (((uintptr_t)entry_hi << 32) | (uintptr_t)entry_lo);
    void* arg = (void*)(((uintptr_t)arg_hi << 32) | (uintptr_t)arg_lo);
    entry(arg);
}

// posix: no hay nada que convertir (cualquier thread puede swapcontext).
// Existe por win32 (ConvertThreadToFiber en el worker, antes del primer swap).
// EN: posix no-op — any thread can swapcontext; the hook exists for win32.
int os_ctx_thread_init(void) { return 0; }

int os_ctx_remake(os_ctx_t* c, void (*entry)(void*), void* arg) {
    if (!c || !entry) return -EINVAL;
    os_ctx_posix_t* p = PCTX(c);
    // Sin stack propio no hay nada que reusar: el caller llamó remake sobre un
    // ctx que nunca pasó por os_ctx_make (o ya fue liberado).
    // EN: no owned stack means there is nothing to reuse.
    if (!p->stack_lo || p->stack_size == 0) return -EINVAL;
    // getcontext RE-inicializa el ucontext entero, incluidos los punteros
    // auto-referenciales que glibc mete adentro (x86_64: uc_mcontext.fpregs
    // apunta a __fpregs_mem, DENTRO de la propia struct). Por eso un ctx
    // dormido se puede copiar byte a byte (el pool del scheduler lo hace) y
    // después remake: este getcontext lo reconstruye en su dirección nueva.
    // EN: getcontext re-initializes the whole ucontext, including glibc's
    // self-referential pointers (x86_64: uc_mcontext.fpregs -> __fpregs_mem,
    // INSIDE the struct itself). That is what makes a dormant ctx safe to copy
    // byte-wise (the scheduler's pool does exactly that) and then remake.
    if (getcontext(&p->uc) != 0) return -errno;
    p->uc.uc_stack.ss_sp = p->stack_lo;
    p->uc.uc_stack.ss_size = p->stack_size;
    p->uc.uc_link = NULL;   // el scheduler maneja los switches a mano / manual switching
    uintptr_t e = (uintptr_t)entry, a = (uintptr_t)arg;
    makecontext(&p->uc, (void (*)(void))os_ctx_trampoline, 4,
                (uint32_t)(e >> 32), (uint32_t)(e & 0xFFFFFFFFu),
                (uint32_t)(a >> 32), (uint32_t)(a & 0xFFFFFFFFu));
    return 0;
}

int os_ctx_make(os_ctx_t* c, size_t stack_size, void (*entry)(void*), void* arg) {
    if (!c || !entry || stack_size == 0) return -EINVAL;
    size_t page  = os_ctx_page_size();
    size_t usable = ((stack_size + page - 1) / page) * page;
    size_t guard  = page * OS_CTX_GUARD_PAGES;
    size_t total  = usable + guard;
    if (usable < stack_size) return -EINVAL;          // overflow del redondeo
    char* base = (char*)mmap(NULL, total, PROT_READ | PROT_WRITE,
                             MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return -errno;
    // El stack crece hacia ABAJO: la guard va en las páginas MÁS BAJAS del
    // mapeo. / The stack grows DOWN: the guard sits at the mapping's lowest pages.
    if (mprotect(base, guard, PROT_NONE) != 0) {
        int e = errno;
        munmap(base, total);
        return -e;
    }
    os_ctx_posix_t* p = PCTX(c);
    p->map_base   = base;
    p->map_size   = total;
    p->stack_lo   = base + guard;
    p->stack_size = usable;
    p->guard_lo   = base;
    p->guard_size = guard;
    int rc = os_ctx_remake(c, entry, arg);
    if (rc != 0) {
        munmap(base, total);
        memset(p, 0, sizeof(*p));
        return rc;
    }
    return 0;
}

void os_ctx_stack(const os_ctx_t* c, void** lo, size_t* size) {
    if (lo)   *lo   = c ? (void*)PCTXC(c)->stack_lo : NULL;
    if (size) *size = c ? PCTXC(c)->stack_size : 0;
}

void os_ctx_guard(const os_ctx_t* c, void** lo, size_t* size) {
    if (lo)   *lo   = c ? (void*)PCTXC(c)->guard_lo : NULL;
    if (size) *size = c ? PCTXC(c)->guard_size : 0;
}

void os_ctx_free(os_ctx_t* c) {
    if (!c) return;
    os_ctx_posix_t* p = PCTX(c);
    if (p->map_base && p->map_size) munmap(p->map_base, p->map_size);
    // Cero explícito: un free repetido sobre el mismo ctx queda no-op en vez
    // de munmapear un rango ajeno ya reusado por otro mapeo.
    // EN: explicit zeroing so a repeated free is a no-op instead of unmapping a
    // range some other mapping already reused.
    memset(p, 0, sizeof(*p));
}

void os_ctx_swap(os_ctx_t* save, os_ctx_t* run) {
    swapcontext(CTX(save), CTX(run));
}

// --- Sockets IPv4 + resolución / IPv4 sockets + resolution (W1 inc 3)
//
// ES: os_addr_t es un blob opaco (>= sockaddr_storage, ver nyx_os.h) — acá
// se castea directo a struct sockaddr_in porque este archivo es dominio
// IPv4 puro (mismo alcance que net.c hoy). Mecánica fiel a los patrones de
// net.c: getaddrinfo con hints {AF_INET, SOCK_STREAM}, inet_pton/inet_ntop,
// setsockopt de SO_REUSEADDR/TCP_NODELAY/SO_RCVTIMEO+SNDTIMEO, poll() de 1
// fd, getifaddrs filtrando AF_INET. Errores: 0/-errno salvo resolve/hostname
// (código propio OS_RES_*, ver arriba) y os_sock_error (errno pendiente
// SIN negar — SO_ERROR ya entrega un valor errno-like en positivo).
// EN: os_addr_t is an opaque blob (>= sockaddr_storage, see nyx_os.h) —
// cast directly to struct sockaddr_in here since this file is pure-IPv4
// (same scope net.c has today). Mechanics mirror net.c's patterns
// faithfully: getaddrinfo with {AF_INET, SOCK_STREAM} hints, inet_pton/
// inet_ntop, SO_REUSEADDR/TCP_NODELAY/SO_RCVTIMEO+SNDTIMEO setsockopt,
// single-fd poll(), getifaddrs filtered to AF_INET. Errors: 0/-errno except
// resolve/hostname (own OS_RES_* code space, see above) and os_sock_error
// (pending errno, NOT negated — SO_ERROR already hands back an errno-like
// value in positive form).
_Static_assert(sizeof(struct sockaddr_storage) <= sizeof(((os_addr_t*)0)->storage),
               "os_addr_t storage < sockaddr_storage de esta libc / too small for this libc");
_Static_assert(_Alignof(os_addr_t) >= _Alignof(struct sockaddr_storage),
               "os_addr_t sub-alineado para sockaddr_storage / underaligned for sockaddr_storage");
#define SIN(a) ((struct sockaddr_in*)(a)->storage)
#define SA(a)  ((struct sockaddr*)(a)->storage)

int os_addr_resolve4(const char* host, int port, os_addr_t* out, int max,
                     const char** err_str) {
    struct addrinfo hints; memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET; hints.ai_socktype = SOCK_STREAM;
    char port_str[16]; snprintf(port_str, sizeof(port_str), "%d", port);
    struct addrinfo* result = NULL;
    int gai = getaddrinfo(host, port_str, &hints, &result);
    if (gai != 0) {
        // gai_strerror devuelve un buffer ESTÁTICO de la libc -- válido
        // solo hasta la próxima llamada a gai_strerror (mismo contrato que
        // strerror()). El caller lo consume antes de resolver de nuevo.
        // EN: gai_strerror returns a STATIC libc buffer -- valid only until
        // the next gai_strerror call (same contract as strerror()). Callers
        // must consume it before resolving again.
        if (err_str) *err_str = gai_strerror(gai);
        if (gai == EAI_NONAME) return OS_RES_NOTFOUND;
        if (gai == EAI_AGAIN)  return OS_RES_AGAIN;
        return OS_RES_OTHER;
    }
    int n = 0;
    for (struct addrinfo* it = result; it != NULL && n < max; it = it->ai_next) {
        if ((size_t)it->ai_addrlen > sizeof(out[n].storage)) continue;
        memset(&out[n], 0, sizeof(out[n]));
        memcpy(out[n].storage, it->ai_addr, it->ai_addrlen);
        n++;
    }
    freeaddrinfo(result);
    if (n == 0) {
        if (err_str) *err_str = "no usable AF_INET address in getaddrinfo result";
        return OS_RES_OTHER;
    }
    return n;
}

// Como resolve4 pero AF_UNSPEC -- copia direcciones de CUALQUIER familia
// (v4 y v6, en el orden que entrega el resolver, RFC 6724) al blob de
// salida (cabe: sockaddr_storage). Restaura el comportamiento pre-W1 de
// tls.c (tcp_connect_fd probaba AF_UNSPEC e iteraba TODAS las direcciones).
// EN: like resolve4 but AF_UNSPEC -- copies addresses of ANY family (v4
// and v6, resolver order) into the output blob (fits: sockaddr_storage).
// Restores tls.c's pre-W1 behavior (tcp_connect_fd used to probe AF_UNSPEC
// and iterate every address).
int os_addr_resolve_any(const char* host, int port, os_addr_t* out, int max,
                        const char** err_str) {
    struct addrinfo hints; memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC; hints.ai_socktype = SOCK_STREAM;
    char port_str[16]; snprintf(port_str, sizeof(port_str), "%d", port);
    struct addrinfo* result = NULL;
    int gai = getaddrinfo(host, port_str, &hints, &result);
    if (gai != 0) {
        if (err_str) *err_str = gai_strerror(gai);
        if (gai == EAI_NONAME) return OS_RES_NOTFOUND;
        if (gai == EAI_AGAIN)  return OS_RES_AGAIN;
        return OS_RES_OTHER;
    }
    int n = 0;
    for (struct addrinfo* it = result; it != NULL && n < max; it = it->ai_next) {
        if ((size_t)it->ai_addrlen > sizeof(out[n].storage)) continue;
        memset(&out[n], 0, sizeof(out[n]));
        memcpy(out[n].storage, it->ai_addr, it->ai_addrlen);
        n++;
    }
    freeaddrinfo(result);
    if (n == 0) {
        if (err_str) *err_str = "no usable address in getaddrinfo result";
        return OS_RES_OTHER;
    }
    return n;
}

int os_addr_from_ip4(os_addr_t* a, const char* ip, int port) {
    memset(a, 0, sizeof(*a));
    SIN(a)->sin_family = AF_INET;
    SIN(a)->sin_port = htons((uint16_t)port);
    if (inet_pton(AF_INET, ip, &SIN(a)->sin_addr) != 1) return -EINVAL;
    return 0;
}

int os_addr_is_ip(const char* s) {
    unsigned char buf4[sizeof(struct in_addr)];
    unsigned char buf6[sizeof(struct in6_addr)];
    if (inet_pton(AF_INET, s, buf4) == 1) return 1;
    if (inet_pton(AF_INET6, s, buf6) == 1) return 1;
    return 0;
}

// v4-only a propósito: los únicos callers medidos (net.c) están en caminos
// IPv4 puros. La ruta v6 nueva de esta migración (resolve_any + connect en
// tls.c) nunca llama a esto -- si algún día un caller v6 lo necesita, extender
// con inet_ntop(AF_INET6) según sa_family.
// EN: v4-only on purpose: the only measured callers (net.c) sit on pure-IPv4
// paths. This migration's new v6 route (resolve_any + connect in tls.c) never
// calls this -- extend with inet_ntop(AF_INET6) by sa_family if a v6 caller
// ever needs it.
int os_addr_ip(const os_addr_t* a, char* buf, int buflen) {
    if (!inet_ntop(AF_INET, &SIN((os_addr_t*)a)->sin_addr, buf, (socklen_t)buflen)) return -errno;
    return 0;
}

int os_addr_port(const os_addr_t* a) {
    return ntohs(SIN((os_addr_t*)a)->sin_port);
}

int os_addr_hostname(const os_addr_t* a, char* buf, int buflen, int require_name) {
    int flags = require_name ? NI_NAMEREQD : 0;
    int gni = getnameinfo(SA((os_addr_t*)a), sizeof(struct sockaddr_in),
                          buf, (socklen_t)buflen, NULL, 0, flags);
    if (gni != 0) {
        if (gni == EAI_NONAME) return OS_RES_NOTFOUND;
        if (gni == EAI_AGAIN)  return OS_RES_AGAIN;
        return OS_RES_OTHER;
    }
    return 0;
}

// Largo real del sockaddr guardado en el blob, según su familia -- v4 y v6
// tienen sockaddr_in/sockaddr_in6 de tamaño DISTINTO a sockaddr_storage;
// pasar sizeof(sockaddr_in) fijo a connect/bind/sendto con una dirección v6
// adentro corrompía la lectura del kernel (leía basura pasado el struct
// real). Cualquier otra familia (no debería llegar por este contrato) cae
// al tamaño completo del storage, fail-safe.
// EN: real length of the sockaddr stored in the blob, by family -- v4 and
// v6 have DIFFERENT-sized sockaddr_in/sockaddr_in6 vs sockaddr_storage;
// passing a fixed sizeof(sockaddr_in) to connect/bind/sendto with a v6
// address inside made the kernel read past the real struct. Any other
// family (shouldn't reach this contract) falls back to the full storage
// size, fail-safe.
static socklen_t addr_len(const os_addr_t* a) {
    switch (SA((os_addr_t*)a)->sa_family) {
        case AF_INET:  return sizeof(struct sockaddr_in);
        case AF_INET6: return sizeof(struct sockaddr_in6);
        default:       return sizeof(struct sockaddr_storage);
    }
}

int64_t os_sock_tcp4(void) { int fd = socket(AF_INET, SOCK_STREAM, 0); return fd < 0 ? -errno : fd; }
int64_t os_sock_udp4(void) { int fd = socket(AF_INET, SOCK_DGRAM, 0);  return fd < 0 ? -errno : fd; }
int64_t os_sock_stream_for(const os_addr_t* a) {
    int fd = socket(SA((os_addr_t*)a)->sa_family, SOCK_STREAM, 0);
    return fd < 0 ? -errno : fd;
}

int os_sock_connect(int64_t fd, const os_addr_t* a) {
    int rc = connect((int)fd, SA((os_addr_t*)a), addr_len(a));
    return rc < 0 ? -errno : rc;
}
int os_sock_bind(int64_t fd, const os_addr_t* a) {
    int rc = bind((int)fd, SA((os_addr_t*)a), addr_len(a));
    return rc < 0 ? -errno : rc;
}
int os_sock_listen(int64_t fd, int backlog) {
    int rc = listen((int)fd, backlog);
    return rc < 0 ? -errno : rc;
}
int64_t os_sock_accept(int64_t fd) {
    int afd = accept((int)fd, NULL, NULL);
    return afd < 0 ? -errno : afd;
}
int64_t os_sock_send(int64_t fd, const void* buf, size_t len) {
    // MSG_NOSIGNAL adentro: load-bearing -- no hay SIG_IGN de SIGPIPE global
    // en este runtime, así que escribir a un peer que cerró debe devolver
    // -EPIPE, no matar el proceso con la señal por defecto.
    // EN: MSG_NOSIGNAL here is load-bearing -- this runtime has no global
    // SIGPIPE SIG_IGN, so writing to a peer that closed must return -EPIPE,
    // not kill the process via the signal's default disposition.
    ssize_t n = send((int)fd, buf, len, MSG_NOSIGNAL);
    return n < 0 ? -errno : (int64_t)n;
}
int64_t os_sock_sendv(int64_t fd, const os_iovec_t* iov, int n) {
    // writev VERBATIM (SIN MSG_NOSIGNAL -- writev no tiene flags; comportamiento
    // preexistente de nyx_resp_write_error en net.c, se preserva tal cual).
    // EN: writev VERBATIM (NO MSG_NOSIGNAL -- writev takes no flags;
    // preexisting behavior from net.c's nyx_resp_write_error, preserved as-is).
    if (n > 8) return -EINVAL;
    struct iovec local[8];
    for (int i = 0; i < n; i++) {
        local[i].iov_base = (void*)iov[i].base;
        local[i].iov_len  = iov[i].len;
    }
    ssize_t r = writev((int)fd, local, n);
    return r < 0 ? -errno : (int64_t)r;
}
int64_t os_sock_recv(int64_t fd, void* buf, size_t len) {
    ssize_t n = recv((int)fd, buf, len, 0);
    return n < 0 ? -errno : (int64_t)n;
}
int64_t os_sock_sendto(int64_t fd, const void* buf, size_t len, const os_addr_t* a) {
    ssize_t n = sendto((int)fd, buf, len, 0, SA((os_addr_t*)a), addr_len(a));
    return n < 0 ? -errno : (int64_t)n;
}
int64_t os_sock_recvfrom(int64_t fd, void* buf, size_t len, os_addr_t* from) {
    struct sockaddr_in addr; socklen_t alen = sizeof(addr);
    ssize_t n = recvfrom((int)fd, buf, len, 0,
                         from ? (struct sockaddr*)&addr : NULL,
                         from ? &alen : NULL);
    if (n < 0) return -errno;
    if (from) { memset(from, 0, sizeof(*from)); memcpy(from->storage, &addr, sizeof(addr)); }
    return (int64_t)n;
}
int os_sock_close(int64_t fd) { int rc = close((int)fd); return rc < 0 ? -errno : rc; }
int os_sock_shutdown(int64_t fd, int64_t how) {
    // Contrato medido de net.c (nyx_tcp_shutdown): 0=RD, 1=WR, cualquier otro
    // valor -> RDWR (fail-safe, no un error de argumento).
    int sh = (how == 0) ? SHUT_RD : (how == 1) ? SHUT_WR : SHUT_RDWR;
    int rc = shutdown((int)fd, sh);
    return rc < 0 ? -errno : rc;
}
int os_sock_peer(int64_t fd, os_addr_t* out) {
    memset(out, 0, sizeof(*out));
    socklen_t len = sizeof(struct sockaddr_in);
    int rc = getpeername((int)fd, SA(out), &len);
    return rc < 0 ? -errno : rc;
}
int os_sock_set_reuseaddr(int64_t fd) {
    int opt = 1;
    int rc = setsockopt((int)fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));
    return rc < 0 ? -errno : rc;
}
int os_sock_set_nodelay(int64_t fd) {
    int opt = 1;
    int rc = setsockopt((int)fd, IPPROTO_TCP, TCP_NODELAY, &opt, sizeof(opt));
    return rc < 0 ? -errno : rc;
}
int os_sock_set_timeout(int64_t fd, int64_t seconds) {
    struct timeval tv;
    tv.tv_sec  = (time_t)(seconds > 0 ? seconds : 0);
    tv.tv_usec = 0;
    // Si el PRIMER setsockopt falla, se devuelve ESE -errno sin intentar el
    // segundo (contrato medido de nyx_tcp_set_timeout_result, net.c).
    // EN: if the FIRST setsockopt fails, return THAT -errno without
    // attempting the second (mechanics measured from
    // nyx_tcp_set_timeout_result in net.c).
    int rc1 = setsockopt((int)fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
    if (rc1 < 0) return -errno;
    int rc2 = setsockopt((int)fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
    return rc2 < 0 ? -errno : rc2;
}
int os_sock_set_nonblocking(int64_t fd, int on) {
    int flags = fcntl((int)fd, F_GETFL, 0);
    if (flags < 0) return -errno;
    int rc = fcntl((int)fd, F_SETFL, on ? (flags | O_NONBLOCK) : (flags & ~O_NONBLOCK));
    return rc < 0 ? -errno : rc;
}
int os_sock_error(int64_t fd) {
    // SO_ERROR entrega un errno pendiente EN POSITIVO (0 si no hay error) --
    // a diferencia del resto de esta capa, acá NO se niega.
    // EN: SO_ERROR hands back a pending errno in POSITIVE form (0 = no
    // error) -- unlike the rest of this layer, this one is NOT negated.
    int err = 0; socklen_t len = sizeof(err);
    if (getsockopt((int)fd, SOL_SOCKET, SO_ERROR, &err, &len) < 0) return -errno;
    return err;
}

int os_sock_poll1(int64_t fd, int events, int timeout_ms) {
    struct pollfd pfd; pfd.fd = (int)fd; pfd.events = 0; pfd.revents = 0;
    if (events & OS_POLLIN)  pfd.events |= POLLIN;
    if (events & OS_POLLOUT) pfd.events |= POLLOUT;
    int rc = poll(&pfd, 1, timeout_ms);
    if (rc < 0) return -errno;
    if (rc == 0) return 0;
    int out = 0;
    if (pfd.revents & POLLIN)  out |= OS_POLLIN;
    if (pfd.revents & POLLOUT) out |= OS_POLLOUT;
    // Revents REALES, sin síntesis: POLLERR/POLLNVAL colapsan en OS_POLLERR,
    // POLLHUP se reporta aparte. Antes esto se mapeaba a los eventos PEDIDOS
    // cuando no había IN/OUT (para que un fd caído no volviera 0 == timeout);
    // eso le costaba a nyx_tls_wait_readable la distinción IN-real vs
    // HUP-solo que necesita para EOF (Task 3, W1 inc 3) -- un peer que cierra
    // sin más datos debe volver SOLO con HUP, nunca disfrazado de POLLIN.
    // EN: REAL revents, no synthesis: POLLERR/POLLNVAL collapse into
    // OS_POLLERR, POLLHUP reported separately. This used to map onto the
    // REQUESTED events when no IN/OUT bit was set (so a dead fd wouldn't come
    // back 0 == timeout); that synthesis cost nyx_tls_wait_readable the
    // real-IN vs HUP-only distinction it needs for EOF (Task 3, W1 inc 3) — a
    // peer that closes with nothing left to read must come back with ONLY
    // HUP, never disguised as POLLIN.
    if (pfd.revents & (POLLERR | POLLNVAL)) out |= OS_POLLERR;
    if (pfd.revents & POLLHUP) out |= OS_POLLHUP;
    return out;
}

int64_t os_net_ifaces4(void (*cb)(const char* name, const char* ip,
                                  const char* mask, void* ud), void* ud) {
    struct ifaddrs* ifs = NULL;
    if (getifaddrs(&ifs) != 0) return -errno;
    int64_t n = 0;
    for (struct ifaddrs* it = ifs; it != NULL; it = it->ifa_next) {
        if (!it->ifa_addr || it->ifa_addr->sa_family != AF_INET) continue;
        char ip[INET_ADDRSTRLEN] = "";
        char mask[INET_ADDRSTRLEN] = "";
        struct sockaddr_in* addr = (struct sockaddr_in*)it->ifa_addr;
        inet_ntop(AF_INET, &addr->sin_addr, ip, sizeof(ip));
        if (it->ifa_netmask) {
            struct sockaddr_in* m = (struct sockaddr_in*)it->ifa_netmask;
            inet_ntop(AF_INET, &m->sin_addr, mask, sizeof(mask));
        }
        cb(it->ifa_name, ip, mask, ud);
        n++;
    }
    freeifaddrs(ifs);
    return n;
}

// Formateo IPv6 de bytes crudos (cert SANs) — ver contrato en nyx_os.h.
// EN: raw-byte IPv6 formatting (cert SANs) — contract in nyx_os.h.
int os_inet_ntop6(const unsigned char* bytes16, char* buf, int buflen) {
    return inet_ntop(AF_INET6, bytes16, buf, (socklen_t)buflen) ? 0 : -errno;
}

// --- os_ev: eventos de E/S completion-style / completion-style I/O events (W1 inc 4)
//
// ES: adaptado 1:1 de tests/spikes/w1-evloop/os_ev_epoll.c (código VALIDADO del
// inc 0: 20/20 corridas + 3/3 bajo TSan, más 4 fixes de una ronda de review) --
// esto es adaptación, no diseño nuevo. El contrato (firmas, semántica de cada
// función) está congelado en nyx_os.h desde el inc 0; acá solo entra la
// implementación posix/epoll.
//
// PRECONDICIÓN de toda esta sección (contrato en nyx_os.h, ruling del
// controller 2026-08-20): los fds que se registran acá DEBEN estar en
// O_NONBLOCK antes de llamar a os_ev_read/os_ev_write -- esta capa nunca lo
// setea. Bajo esa precondición, cada read()/write() que este archivo ejecuta
// en respuesta a una readiness real NUNCA bloquea.
//
// Completion emulada sobre readiness (epoll es readiness-based, no
// completion-based como IOCP/io_uring): por fd se mantiene a lo sumo UNA
// operación read y UNA write pendientes ("slot"), registradas en epoll con
// EPOLLONESHOT. Cuando epoll_wait despierta, se intenta UN SOLO read()/
// write() real del slot (nunca un loop interno reintentando la misma op
// varias veces en el mismo wakeup):
//   - éxito (incl. EOF con read()==0, o escritura que completa el buffer) ->
//     se despacha el cb con el resultado, slot liberado
//   - escritura parcial (wr > 0 pero < remain) -> sigue pendiente, se re-arma
//     (EPOLL_CTL_MOD) para completar el resto en un wakeup futuro
//   - EAGAIN -> sigue pendiente, se re-arma (EPOLL_CTL_MOD) para la próxima vuelta
//   - otro error -> se despacha el cb con -errno, slot liberado
// os_ev_read entrega lo que un solo read() devuelva ("hasta len bytes", tal
// cual el contrato). os_ev_write en cambio completa SIEMPRE el buffer entero
// (result == len) o entrega error -- pero lo hace ACUMULANDO across múltiples
// wakeups de EPOLLOUT (un solo write() real por wakeup), nunca reintentando
// dentro de un mismo wakeup -- así el path de EAGAIN/escritura-parcial queda
// genuinamente ejercitado en vez de escondido detrás de un retry-loop interno.
//
// EN: readiness-based epoll emulating a completion contract. One read + one
// write slot per fd, EPOLLONESHOT re-armed manually via MOD (ADD is only used
// the first time a fd enters the epoll set -- re-ADDing a fd already present
// fails with EEXIST, hence the in_epoll/MOD-vs-ADD bookkeeping below). Exactly
// one read()/write() syscall per readiness wakeup -- never an internal retry
// loop -- under the hard precondition that the fd is already O_NONBLOCK.
//
// Timers: lista simple ordenada por escaneo (no hace falta un heap para N
// chico), el timeout de epoll_wait = min(timeout_ms del caller, próximo
// deadline). Wake cross-thread: eventfd registrado en el mismo epoll,
// drenado al despertar.
//
// Patrón snapshot-then-dispatch (igual a event_loop.c:44-60/DispatchEntry):
// los cbs se resuelven a {cb, ud, result} BAJO el lock, se invocan FUERA de
// él -- así un cb que llama os_ev_read/write/cancel de vuelta no reentra el
// mutex.
//
// Decisión de locking (implementer, W1 inc 4): el mutex interno de
// os_ev_loop queda pthread_mutex_t CRUDO (no os_mutex_t de esta misma capa).
// Es privado a este archivo -- nunca cruza el contrato de nyx_os.h -- y
// os_mutex_t existe para exponer sync PORTABLE a callers de OTRAS
// plataformas (win32 en W3+); acá adentro de os_posix.c usar pthread directo
// es tan legítimo como en cualquier otra función de este archivo, y evita la
// indirección extra de los macros M()/os_mutex_lock sin ganar nada (esta
// impl nunca corre en win32 -- os_win32.c tendrá su propio os_ev_win32.c con
// CRITICAL_SECTION/IOCP nativo, no una recompilación de este archivo).
// EN: locking decision (implementer, W1 inc 4): os_ev_loop's internal mutex
// stays RAW pthread_mutex_t (not this same layer's os_mutex_t). It is
// private to this file -- it never crosses the nyx_os.h contract -- and
// os_mutex_t exists to expose PORTABLE sync to callers on OTHER platforms
// (win32 in W3+); inside os_posix.c using pthread directly is exactly as
// legitimate as any other function in this file, and it skips the extra
// M()/os_mutex_lock indirection for no gain (this impl never runs on win32
// -- os_win32.c will get its own os_ev_win32.c over native
// CRITICAL_SECTION/IOCP, not a recompile of this file).
#define OS_EV_MAX_EVENTS  64
#define OS_EV_MAX_FDS     256
#define OS_EV_MAX_TIMERS  64

typedef struct {
    os_sock_t fd;
    int active;         // slot reclamado para este fd (puede no tener ops pendientes aún)
    int in_epoll;        // fd ya agregado al set de epoll (ADD hecho; rearmar es siempre MOD)

    int has_read;
    void*    read_buf;
    int64_t  read_len;
    os_ev_cb read_cb;
    void*    read_ud;

    int has_write;
    const void* write_buf;
    int64_t     write_len;
    int64_t     write_off;   // bytes ya escritos del buffer actual (completion = write_off == write_len)
    os_ev_cb    write_cb;
    void*       write_ud;
} OsEvFdSlot;

typedef struct {
    int      active;
    int64_t  deadline_ms;
    os_ev_cb cb;
    void*    ud;
} OsEvTimerSlot;

struct os_ev_loop {
    int epfd;
    int wake_fd;          // eventfd, EPOLLIN nivel-triggered, drenado en cada despertar
    OsEvFdSlot fds[OS_EV_MAX_FDS];
    int fd_count;
    OsEvTimerSlot timers[OS_EV_MAX_TIMERS];
    int timer_count;
    pthread_mutex_t lock;
};

// Una entrada de despacho resuelta bajo el lock, invocada fuera de él.
typedef struct {
    os_ev_cb cb;
    void*    ud;
    int64_t  result;
} OsEvDispatchEntry;

static int64_t os_ev_now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (int64_t)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

static int os_ev_find_slot_locked(os_ev_loop_t* l, os_sock_t fd) {
    for (int i = 0; i < l->fd_count; i++) {
        if (l->fds[i].active && l->fds[i].fd == fd) return i;
    }
    return -1;
}

static int os_ev_get_or_create_slot_locked(os_ev_loop_t* l, os_sock_t fd) {
    int idx = os_ev_find_slot_locked(l, fd);
    if (idx >= 0) return idx;
    int slot = -1;
    for (int i = 0; i < l->fd_count; i++) {
        if (!l->fds[i].active) { slot = i; break; }
    }
    if (slot < 0) {
        if (l->fd_count >= OS_EV_MAX_FDS) return -1;
        slot = l->fd_count++;
    }
    memset(&l->fds[slot], 0, sizeof(OsEvFdSlot));
    l->fds[slot].fd = fd;
    l->fds[slot].active = 1;
    return slot;
}

// Re-arma el interest mask de epoll para el slot según las ops que sigan
// pendientes, o lo saca del set (y libera el slot) si no queda ninguna.
static void os_ev_arm_locked(os_ev_loop_t* l, int idx) {
    OsEvFdSlot* s = &l->fds[idx];
    uint32_t mask = 0;
    if (s->has_read)  mask |= EPOLLIN;
    if (s->has_write) mask |= EPOLLOUT;

    if (mask == 0) {
        if (s->in_epoll) {
            epoll_ctl(l->epfd, EPOLL_CTL_DEL, s->fd, NULL);
            s->in_epoll = 0;
        }
        s->active = 0;  // libera el slot para reuso (por este u otro fd)
        return;
    }

    mask |= EPOLLONESHOT;
    struct epoll_event ev;
    memset(&ev, 0, sizeof ev);
    ev.events = mask;
    ev.data.fd = s->fd;
    if (s->in_epoll) {
        epoll_ctl(l->epfd, EPOLL_CTL_MOD, s->fd, &ev);
    } else {
        epoll_ctl(l->epfd, EPOLL_CTL_ADD, s->fd, &ev);
        s->in_epoll = 1;
    }
}

os_ev_loop_t* os_ev_loop_new(void) {
    os_ev_loop_t* l = calloc(1, sizeof(*l));
    if (!l) return NULL;
    l->epfd = epoll_create1(EPOLL_CLOEXEC);
    if (l->epfd < 0) { free(l); return NULL; }
    l->wake_fd = eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if (l->wake_fd < 0) { close(l->epfd); free(l); return NULL; }

    struct epoll_event ev;
    memset(&ev, 0, sizeof ev);
    ev.events = EPOLLIN;  // persistente, sin ONESHOT: se drena por completo en cada despertar
    ev.data.fd = l->wake_fd;
    if (epoll_ctl(l->epfd, EPOLL_CTL_ADD, l->wake_fd, &ev) < 0) {
        close(l->wake_fd); close(l->epfd); free(l); return NULL;
    }

    pthread_mutex_init(&l->lock, NULL);
    return l;
}

void os_ev_loop_free(os_ev_loop_t* l) {
    if (!l) return;
    close(l->wake_fd);
    close(l->epfd);
    pthread_mutex_destroy(&l->lock);
    free(l);
}

int os_ev_timer(os_ev_loop_t* l, int64_t ms, os_ev_cb cb, void* ud) {
    if (!l || !cb) return -EINVAL;
    pthread_mutex_lock(&l->lock);
    int slot = -1;
    for (int i = 0; i < l->timer_count; i++) {
        if (!l->timers[i].active) { slot = i; break; }
    }
    if (slot < 0) {
        if (l->timer_count >= OS_EV_MAX_TIMERS) { pthread_mutex_unlock(&l->lock); return -ENOSPC; }
        slot = l->timer_count++;
    }
    l->timers[slot].active = 1;
    l->timers[slot].deadline_ms = os_ev_now_ms() + ms;
    l->timers[slot].cb = cb;
    l->timers[slot].ud = ud;
    pthread_mutex_unlock(&l->lock);
    // Fix finding 4 (spike, 2026-08-20): un thread ya bloqueado en
    // os_ev_run_once (p.ej. con timeout_ms=-1) calculó su eff_timeout ANTES
    // de que este timer existiera, así que epoll_wait no tiene forma de
    // saber que apareció un deadline nuevo (más corto) hasta que algo lo
    // despierte. Reusamos el mismo eventfd de os_ev_wake incondicionalmente
    // -- barato (un write de 8 bytes) y siempre correcto: si nadie estaba
    // bloqueado no cuesta nada; si alguien SÍ estaba bloqueado, epoll_wait
    // retorna, esa vuelta de run_once recalcula eff_timeout con este timer
    // incluido (o lo despacha directo si ya venció). LOAD-BEARING: sin esto,
    // un os_ev_timer registrado desde otro thread mientras alguien está
    // bloqueado en run_once(-1) cuelga ese thread para siempre.
    // EN: fix finding 4 (spike, 2026-08-20): a thread already blocked in
    // os_ev_run_once (e.g. with timeout_ms=-1) computed its eff_timeout
    // BEFORE this timer existed, so epoll_wait has no way to know a new
    // (shorter) deadline showed up until something wakes it. We reuse the
    // same os_ev_wake eventfd unconditionally -- cheap (an 8-byte write) and
    // always correct: if nobody was blocked it costs nothing; if somebody
    // WAS blocked, epoll_wait returns, that run_once round recomputes
    // eff_timeout including this timer (or dispatches it right away if it
    // already expired). LOAD-BEARING: without this, an os_ev_timer
    // registered from another thread while someone is blocked in
    // run_once(-1) hangs that thread forever.
    os_ev_wake(l);
    return slot;
}

int os_ev_wake(os_ev_loop_t* l) {
    if (!l) return -EINVAL;
    // eventfd: write de 8 bytes es atómico a nivel kernel (POSIX), no hace
    // falta el mutex interno para esta operación puntual.
    // EN: eventfd: an 8-byte write is kernel-atomic (POSIX) -- no need for
    // the internal mutex for this one-off operation.
    uint64_t one = 1;
    if (write(l->wake_fd, &one, sizeof one) < 0 && errno != EAGAIN) return -errno;
    return 0;
}

int os_ev_read(os_ev_loop_t* l, os_sock_t sock, void* buf, int64_t len, os_ev_cb cb, void* ud) {
    if (!l || sock < 0 || !cb || len < 0) return -EINVAL;
    pthread_mutex_lock(&l->lock);
    int idx = os_ev_get_or_create_slot_locked(l, sock);
    if (idx < 0) { pthread_mutex_unlock(&l->lock); return -ENOSPC; }
    OsEvFdSlot* s = &l->fds[idx];
    if (s->has_read) { pthread_mutex_unlock(&l->lock); return -EBUSY; }  // ya hay un read pendiente sobre este fd
    s->has_read = 1;
    s->read_buf = buf;
    s->read_len = len;
    s->read_cb = cb;
    s->read_ud = ud;
    os_ev_arm_locked(l, idx);
    pthread_mutex_unlock(&l->lock);
    return 0;
}

int os_ev_write(os_ev_loop_t* l, os_sock_t sock, const void* buf, int64_t len, os_ev_cb cb, void* ud) {
    if (!l || sock < 0 || !cb || len < 0) return -EINVAL;
    pthread_mutex_lock(&l->lock);
    int idx = os_ev_get_or_create_slot_locked(l, sock);
    if (idx < 0) { pthread_mutex_unlock(&l->lock); return -ENOSPC; }
    OsEvFdSlot* s = &l->fds[idx];
    if (s->has_write) { pthread_mutex_unlock(&l->lock); return -EBUSY; }  // ya hay un write pendiente sobre este fd
    s->has_write = 1;
    s->write_buf = buf;
    s->write_len = len;
    s->write_off = 0;
    s->write_cb = cb;
    s->write_ud = ud;
    os_ev_arm_locked(l, idx);
    pthread_mutex_unlock(&l->lock);
    return 0;
}

int os_ev_cancel(os_ev_loop_t* l, os_sock_t sock) {
    if (!l) return -EINVAL;
    pthread_mutex_lock(&l->lock);
    int idx = os_ev_find_slot_locked(l, sock);
    if (idx < 0) { pthread_mutex_unlock(&l->lock); return 0; }  // nada pendiente: no-op, no es error
    OsEvFdSlot* s = &l->fds[idx];
    if (s->in_epoll) {
        epoll_ctl(l->epfd, EPOLL_CTL_DEL, s->fd, NULL);
        s->in_epoll = 0;
    }
    s->has_read = 0;
    s->has_write = 0;
    s->write_off = 0;
    s->active = 0;
    pthread_mutex_unlock(&l->lock);
    return 0;
}

int os_ev_run_once(os_ev_loop_t* l, int timeout_ms) {
    if (!l) return -EINVAL;

    // 1) timeout efectivo = min(timeout del caller, próximo deadline de
    //    timer) -- sin esto un timer podría quedar hambreado por un timeout
    //    mayor.
    pthread_mutex_lock(&l->lock);
    int64_t soonest = -1;
    for (int i = 0; i < l->timer_count; i++) {
        if (l->timers[i].active && (soonest < 0 || l->timers[i].deadline_ms < soonest)) {
            soonest = l->timers[i].deadline_ms;
        }
    }
    pthread_mutex_unlock(&l->lock);

    int eff_timeout = timeout_ms;
    if (soonest >= 0) {
        int64_t d = soonest - os_ev_now_ms();
        if (d < 0) d = 0;
        if (eff_timeout < 0 || d < eff_timeout) eff_timeout = (int)d;
    }

    // 2) esperar E/S o el timeout derivado del timer
    struct epoll_event evs[OS_EV_MAX_EVENTS];
    int n = epoll_wait(l->epfd, evs, OS_EV_MAX_EVENTS, eff_timeout);
    if (n < 0) {
        if (errno == EINTR) n = 0;
        else return -errno;
    }

    // 3) resolver a despachos bajo el lock (sin invocar nada todavía)
    OsEvDispatchEntry snapshot[OS_EV_MAX_EVENTS * 2 + OS_EV_MAX_TIMERS];
    int snap_count = 0;

    pthread_mutex_lock(&l->lock);

    for (int i = 0; i < n; i++) {
        int fd = evs[i].data.fd;
        if (fd == l->wake_fd) {
            uint64_t junk;
            while (read(l->wake_fd, &junk, sizeof junk) > 0) { /* drenar el contador */ }
            continue;
        }
        int idx = os_ev_find_slot_locked(l, fd);
        if (idx < 0) continue;  // se canceló entre el epoll_wait y acá
        OsEvFdSlot* s = &l->fds[idx];

        unsigned re = evs[i].events;
        int ready_in  = (re & (EPOLLIN  | EPOLLERR | EPOLLHUP)) != 0;
        int ready_out = (re & (EPOLLOUT | EPOLLERR | EPOLLHUP)) != 0;

        if (s->has_read && ready_in) {
            ssize_t rr = read(s->fd, s->read_buf, (size_t)s->read_len);
            if (rr >= 0) {
                snapshot[snap_count++] = (OsEvDispatchEntry){ s->read_cb, s->read_ud, (int64_t)rr };
                s->has_read = 0;
            } else if (errno != EAGAIN && errno != EWOULDBLOCK) {
                snapshot[snap_count++] = (OsEvDispatchEntry){ s->read_cb, s->read_ud, -(int64_t)errno };
                s->has_read = 0;
            }
            // EAGAIN: sigue pendiente, se re-arma abajo (falsa alarma de readiness)
        }

        if (s->has_write && ready_out) {
            // UN solo write() por wakeup de readiness (ruling del
            // controller, 2026-08-20 tras el finding 1 del spike): bajo la
            // precondición de que sock es O_NONBLOCK, un solo intento por
            // EPOLLOUT es seguro y no puede colgar el thread del loop. La
            // completion real (result == len) se arma ACUMULANDO write_off
            // a través de MÚLTIPLES wakeups -- no reintentando dentro de
            // este bloque -- así que un write() parcial no se reporta como
            // si fuera el final; el cb se despacha recién cuando write_off
            // alcanza write_len, o ante un error real.
            // EN: ONE write() per readiness wakeup (controller ruling,
            // 2026-08-20, after the spike's finding 1): under the
            // precondition that sock is O_NONBLOCK, a single attempt per
            // EPOLLOUT is safe and cannot hang the loop's thread. The real
            // completion (result == len) is built by ACCUMULATING write_off
            // across MULTIPLE wakeups -- never retrying inside this block --
            // so a partial write is never reported as final; the cb only
            // dispatches once write_off reaches write_len, or on a real error.
            const char* p = (const char*)s->write_buf + s->write_off;
            size_t remain = (size_t)(s->write_len - s->write_off);
            // send(..., MSG_NOSIGNAL), NO write() crudo: fix CRITICAL de
            // review (W1 inc 4, ronda 1) -- este runtime no instala
            // SIG_IGN de SIGPIPE global (mismo racional que os_sock_send,
            // linea ~360), así que un write() sobre un socket cuyo peer ya
            // cerró mata el proceso entero con la señal por defecto en vez
            // de devolver -EPIPE. os_sock_t es SIEMPRE un socket bajo este
            // contrato (os_ev opera sobre os_sock_t, no sobre fds de archivo
            // arbitrarios), asi que send() es siempre valido acá.
            // EN: send(..., MSG_NOSIGNAL), NOT raw write(): CRITICAL fix
            // from review (W1 inc 4, round 1) -- this runtime installs no
            // global SIGPIPE SIG_IGN (same rationale as os_sock_send, line
            // ~360), so a write() on a socket whose peer already closed
            // kills the whole process via the signal's default disposition
            // instead of returning -EPIPE. os_sock_t is ALWAYS a socket
            // under this contract (os_ev operates on os_sock_t, never on
            // arbitrary file fds), so send() is always valid here.
            ssize_t wr = send(s->fd, p, remain, MSG_NOSIGNAL);
            if (wr >= 0) {
                s->write_off += wr;
                if (s->write_off >= s->write_len) {
                    snapshot[snap_count++] = (OsEvDispatchEntry){ s->write_cb, s->write_ud, s->write_len };
                    s->has_write = 0;
                    s->write_off = 0;
                }
                // wr < remain (escritura parcial): sigue pendiente, se re-arma abajo
            } else if (errno != EAGAIN && errno != EWOULDBLOCK) {
                snapshot[snap_count++] = (OsEvDispatchEntry){ s->write_cb, s->write_ud, -(int64_t)errno };
                s->has_write = 0;
                s->write_off = 0;
            }
            // EAGAIN/EWOULDBLOCK: sigue pendiente, se re-arma abajo (falsa alarma de readiness)
        }

        os_ev_arm_locked(l, idx);
    }

    // Timers vencidos (one-shot: se desactivan ya bajo el lock).
    int64_t tnow = os_ev_now_ms();
    for (int i = 0; i < l->timer_count; i++) {
        if (l->timers[i].active && l->timers[i].deadline_ms <= tnow) {
            snapshot[snap_count++] = (OsEvDispatchEntry){ l->timers[i].cb, l->timers[i].ud, 0 };
            l->timers[i].active = 0;
        }
    }

    pthread_mutex_unlock(&l->lock);

    // 4) despachar fuera del lock (un cb puede reentrar con os_ev_read/write/cancel)
    for (int i = 0; i < snap_count; i++) {
        if (snapshot[i].cb) snapshot[i].cb(snapshot[i].result, snapshot[i].ud);
    }
    return snap_count;
}

// --- Procesos / Processes (W1 inc 5) -- mecánica VERBATIM de la que
// runtime.c tenía inline antes de esta migración (solo re-particionada:
// esta capa transporta chunks/decodifica status; el growth GC y el strip
// de '\n' finales quedan del lado de runtime.c, ver CONTRACT ahí).
int os_proc_run_capture(const char* cmd,
                        void (*cb)(const void* chunk, size_t len, void* ud),
                        void* ud) {
    if (!cmd) return -1;
    FILE* pipe = popen(cmd, "r");
    if (!pipe) return -1;
    char buf[4096];
    size_t got;
    while ((got = fread(buf, 1, sizeof(buf), pipe)) > 0) {
        if (cb) cb(buf, got, ud);
    }
    pclose(pipe);
    return 0;
}

int64_t os_proc_run_status(const char* cmd) {
    if (!cmd) return -1;
    int status = system(cmd);
    if (status == -1) return -1;
    return (int64_t)(WIFEXITED(status) ? WEXITSTATUS(status) : -1);
}

// Entorno / Environment (W2 fase C, residuo de link de MSVC): setenv no
// existe en la CRT de Windows. Mecánica VERBATIM de la que runtime.c
// (nyx_setenv) tenía inline.
// EN: environment (W2 phase C, MSVC link residue): setenv does not exist in
// the Windows CRT. Mechanics VERBATIM from runtime.c's inline nyx_setenv.
int os_env_set(const char* name, const char* value) {
    if (!name || !value) return -EINVAL;
    if (setenv(name, value, 1) != 0) return -errno;
    return 0;
}

// --- Carga dinámica / Dynamic loading (W1 inc 6) -- mecánica VERBATIM de la
// que compress.c/sqlite_adapter.c/llama_adapter.c tenían inline antes de esta
// migración (solo re-particionada: nombres por-plataforma y cadenas de
// fallback siguen del lado de cada adapter, ver contrato en nyx_os.h).
os_dl_t os_dl_open(const char* name, int global) {
    if (!name) return NULL;
    return dlopen(name, RTLD_LAZY | (global ? RTLD_GLOBAL : 0));
}

void* os_dl_sym(os_dl_t h, const char* name) {
    if (!h || !name) return NULL;
    return dlsym(h, name);
}

const char* os_dl_error(void) {
    return dlerror();
}

int os_dl_close(os_dl_t h) {
    if (!h) return -EINVAL;
    // dlclose devuelve un código de error OPACO (no-cero, sin -errno
    // definido por POSIX) -- se mapea a -EINVAL, coherente con el resto del
    // contrato 0/-errno de esta capa. dlerror() sigue disponible para el
    // mensaje de plataforma si el caller lo necesita.
    // EN: dlclose returns an OPAQUE error code (nonzero, no POSIX-defined
    // -errno) -- mapped to -EINVAL, consistent with this layer's 0/-errno
    // contract. dlerror() remains available for the platform message if the
    // caller needs it.
    return dlclose(h) == 0 ? 0 : -EINVAL;
}

// --- Señales / Signals (W1 inc 7 — CIERRA W1) -- mecánica VERBATIM de la que
// runtime.c/persist.c/scheduler.c tenían inline antes de esta migración: el
// trampolín self-pipe de runtime.c, el shutdown handler de persist.c y el
// fault handler de guard-pages de scheduler.c conservan TODA su lógica de
// alto nivel y solo registran a través de estas dos primitivas.
// EN: signal domain (W1 inc 7 -- CLOSES W1) -- VERBATIM mechanics of what
// runtime.c/persist.c/scheduler.c had inline before this migration: the
// self-pipe trampoline in runtime.c, persist.c's shutdown handler and
// scheduler.c's guard-page fault handler keep ALL their high-level logic and
// only register through these two primitives.
int os_sig_install(int signum, os_sig_fn fn) {
    // signal(2) glibc moderna === sigaction con SA_RESTART + la propia señal
    // agregada a sa_mask mientras el handler corre (semántica BSD) -- NO es
    // lo mismo que sigaction con sa_mask vacía y flags 0 (ver
    // os_sig_install_no_restart abajo, y runtime.c:948 sobre por qué esa
    // diferencia es observable: un poll()/read() bloqueante SÍ se reinicia
    // solo bajo signal(), y por eso persist.c y el no-op de SIGWINCH usan la
    // variante no_restart -- aunque el delta rara vez importa (el handler de
    // persist.c nunca retorna), el delta es REAL.
    // EN: modern glibc signal(2) === sigaction with SA_RESTART + the signal
    // itself added to sa_mask while the handler runs (BSD semantics) -- NOT
    // the same as sigaction with an empty sa_mask and flags 0 (see
    // os_sig_install_no_restart below, and runtime.c:948 for why that
    // difference is observable: a blocking poll()/read() DOES auto-restart
    // under signal(), which is why persist.c and the SIGWINCH no-op use the
    // no_restart variant -- even though the delta rarely matters (persist.c's
    // handler never returns), the delta is REAL.
    return signal(signum, fn) == SIG_ERR ? -errno : 0;
}

// Variante sin SA_RESTART: sigaction con sa_mask vacía y flags 0 -- la
// semántica EXACTA que SIGWINCH (raw-mode, runtime.c) y el shutdown de
// persist.c tenían a mano ANTES de esta migración. Ver contrato completo en
// nyx_os.h.
// EN: no-SA_RESTART variant: sigaction with an empty sa_mask and flags 0 --
// the EXACT semantics SIGWINCH (raw-mode, runtime.c) and persist.c's
// shutdown had by hand BEFORE this migration. Full contract in nyx_os.h.
int os_sig_install_no_restart(int signum, os_sig_fn fn) {
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = fn;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;
    return sigaction(signum, &sa, NULL) != 0 ? -errno : 0;
}

int os_sig_reset(int signum) {
    return signal(signum, SIG_DFL) == SIG_ERR ? -errno : 0;
}

int os_sig_ignore(int signum) {
    return signal(signum, SIG_IGN) == SIG_ERR ? -errno : 0;
}

int os_sig_is_default(int signum) {
    struct sigaction old;
    if (sigaction(signum, NULL, &old) != 0) return -errno;
    return old.sa_handler == SIG_DFL ? 1 : 0;
}

// Callback registrado por os_fault_guard_install; corre EN CONTEXTO DE SEÑAL.
static int (*g_fault_on_fault)(void* addr) = NULL;

// W3 paso 0: disposición PREVIA de SIGSEGV/SIGBUS, para ENCADENAR en vez de
// descartarla. Sin esto, este handler PISABA el de otro dueño legítimo de la
// señal y rompía su mecanismo. El caso concreto que rompía en Linux:
// nyx_runtime_init() llama GC_enable_incremental(), y Boehm implementa los
// dirty bits con mprotect (MPROTECT_VDB) -- protege páginas del heap como
// read-only e instala GC_write_fault_handler en SIGSEGV para desprotegerlas y
// marcarlas sucias cuando el mutator escribe. Al instalar el guard de stack
// overflow DESPUÉS (lazy, en el primer spawn de goroutina), el sigaction()
// plano de acá dejaba a Boehm sin handler: el siguiente write fault del GC caía
// en este handler, on_fault() respondía "no es una guard page mía" y el
// SIG_DFL + raise de abajo mataba el proceso. Firma: SIGSEGV con
// si_code=SEGV_ACCERR sobre una página anónima r--p, frame #0 dentro de libgc.
// Ahora la disposición previa se preserva y se invoca: el guard sigue siendo el
// primero en mirar (necesita serlo para diagnosticar overflows de goroutine),
// pero lo que no reclama pasa a su dueño anterior. SIG_DFL + raise queda como
// último eslabón, no como respuesta única.
//
// EN: W3 step 0: the PREVIOUS SIGSEGV/SIGBUS disposition, so we CHAIN instead of
// dropping it. Without this, our handler CLOBBERED another legitimate owner of
// the signal and broke its mechanism. The concrete Linux breakage:
// nyx_runtime_init() calls GC_enable_incremental(), and Boehm implements dirty
// bits with mprotect (MPROTECT_VDB) -- it write-protects heap pages and installs
// GC_write_fault_handler on SIGSEGV to unprotect and mark them dirty when the
// mutator writes. Installing the stack-overflow guard LATER (lazily, on the
// first goroutine spawn) left Boehm with no handler: the GC's next write fault
// landed here, on_fault() answered "not one of my guard pages", and the
// SIG_DFL + raise below killed the process. Signature: SIGSEGV with
// si_code=SEGV_ACCERR on an anonymous r--p page, frame #0 inside libgc.
// The previous disposition is now preserved and invoked: the guard still looks
// first (it must, to diagnose goroutine overflows), but whatever it doesn't
// claim goes to its previous owner. SIG_DFL + raise stays as the last link in
// the chain, not as the only answer.
static struct sigaction g_prev_segv;   // cero = SIG_DFL, el estado correcto por defecto
static struct sigaction g_prev_bus;
static volatile int g_prev_valid = 0;

// Delega el fault al dueño anterior de la señal. Corre EN CONTEXTO DE SEÑAL:
// solo lectura de los snapshots y una llamada indirecta (exactamente lo que
// hace el propio Boehm con su GC_old_segv_handler).
// EN: hands the fault to the signal's previous owner. Runs IN SIGNAL CONTEXT:
// only reads the snapshots plus one indirect call (exactly what Boehm itself
// does with its GC_old_segv_handler).
// SIG_DFL/SIG_IGN/SIG_ERR son CENTINELAS (0/1/-1), no funciones invocables.
// El filtro tiene que aplicarse a las DOS ramas de la unión sa_handler/
// sa_sigaction: el kernel puede devolver SIG_IGN junto con SA_SIGINFO seteado,
// y sin este chequeo la rama SA_SIGINFO saltaría a la dirección 0x1 con la
// señal bloqueada (I3 del review).
// EN: SIG_DFL/SIG_IGN/SIG_ERR are SENTINELS (0/1/-1), not callable functions.
// The filter must apply to BOTH arms of the sa_handler/sa_sigaction union: the
// kernel can hand back SIG_IGN with SA_SIGINFO set, and without this check the
// SA_SIGINFO arm would jump to address 0x1 with the signal blocked (review I3).
static int os_fault_is_callable(uintptr_t h) {
    return h != (uintptr_t)SIG_DFL && h != (uintptr_t)SIG_IGN && h != (uintptr_t)SIG_ERR;
}

static void os_fault_chain_to_prev(int sig, siginfo_t* info, void* uctx) {
    if (__atomic_load_n(&g_prev_valid, __ATOMIC_ACQUIRE)) {
        const struct sigaction* prev = (sig == SIGBUS) ? &g_prev_bus : &g_prev_segv;
        if ((prev->sa_flags & SA_SIGINFO) != 0) {
            if (os_fault_is_callable((uintptr_t)prev->sa_sigaction)) {
                // Aridad 3 OBLIGATORIA: el dueño previo declaró SA_SIGINFO, así
                // que espera (sig, info, uctx). Degradar a sa_handler(sig) le
                // entregaría basura en si_addr.
                // EN: arity 3 is MANDATORY: the previous owner declared
                // SA_SIGINFO, so it expects (sig, info, uctx). Degrading to
                // sa_handler(sig) would hand it garbage in si_addr.
                prev->sa_sigaction(sig, info, uctx);
                return;
            }
        } else if (os_fault_is_callable((uintptr_t)prev->sa_handler)) {
            prev->sa_handler(sig);
            return;
        }
        // SIG_IGN sobre SEGV/BUS no es "ignorar": la instrucción se reintenta y
        // faultea en loop. Cae al SIG_DFL de abajo, que sí termina el proceso.
        // EN: SIG_IGN on SEGV/BUS doesn't mean "ignore": the instruction retries
        // and faults forever. Fall through to SIG_DFL below, which does end it.
    }
    // Sin dueño anterior: restaurar la disposición default y re-raise -- un
    // SEGV/BUS genuino sigue siendo eso, nunca se enmascara.
    signal(sig, SIG_DFL);
    raise(sig);
}

static void os_fault_guard_handler(int sig, siginfo_t* info, void* uctx) {
    void* addr = info ? info->si_addr : NULL;
    if (g_fault_on_fault && g_fault_on_fault(addr)) {
        // Manejado: el callback ya hizo _exit (contrato de nyx_os.h) -- este
        // return es solo defensivo, nunca debería alcanzarse en la práctica.
        return;
    }
    os_fault_chain_to_prev(sig, info, uctx);
}

// Snapshot de la disposición vigente de `sig` ANTES de pisarla. Si el dueño
// vigente ya somos nosotros (install repetido), conserva el snapshot anterior:
// guardarnos a nosotros mismos como "previo" sería recursión infinita.
// EN: snapshots the current disposition of `sig` BEFORE overwriting it. If the
// current owner is already us (repeated install), keeps the earlier snapshot:
// storing ourselves as "previous" would be infinite recursion.
static void os_fault_snapshot_prev(int sig, struct sigaction* slot) {
    struct sigaction cur;
    if (sigaction(sig, NULL, &cur) != 0) return;              // deja el SIG_DFL por defecto
    if ((cur.sa_flags & SA_SIGINFO) != 0 && cur.sa_sigaction == os_fault_guard_handler) return;
    *slot = cur;
}

// Idempotencia REAL (I1 del review), con la misma lección que el CAS de
// os_win32.c (M6): el flag no-atómico que el scheduler tiene del lado del
// caller NO alcanza. Un segundo install que SÍ reinstale es activamente
// peligroso, no solo redundante: si entre los dos installs otro dueño tomó la
// señal (el caso real: install -> GC_enable_incremental -> install), el segundo
// snapshot guarda a ESE dueño como previo mientras ese dueño ya nos tiene a
// nosotros como suyo -- y la cadena se cierra en un CICLO de 2 saltos
// (nosotros -> Boehm -> nosotros -> ...) que agota la pila alterna y muere en
// un SIGSEGV mudo. Medido antes de este fix: 50 re-entradas y subiendo.
// El exchange además evita la copia desgarrada del snapshot si dos threads
// llaman a la vez: exactamente uno escribe g_prev_*, el otro sale.
// EN: REAL idempotence (review I1), same lesson as os_win32.c's CAS (M6): the
// caller-side non-atomic flag in the scheduler is NOT enough. A second install
// that actually re-installs is actively dangerous, not merely redundant: if
// another owner took the signal between the two installs (the real case:
// install -> GC_enable_incremental -> install), the second snapshot records
// THAT owner as previous while that owner already holds us as its own -- and
// the chain closes into a 2-hop CYCLE (us -> Boehm -> us -> ...) that exhausts
// the alternate stack and dies in a silent SIGSEGV. Measured before this fix:
// 50 re-entries and climbing. The exchange also prevents a torn snapshot when
// two threads race: exactly one writes g_prev_*, the other returns.
static volatile int g_fault_installed = 0;

// Une `src` dentro de `dst`. Hecho a mano con sigismember/sigaddset (POSIX
// puro) en vez de `sigorset`, que es una extensión GNU: existe en glibc bajo
// _GNU_SOURCE y NO existe en macOS/BSD, y el build de producción no define esa
// macro (ver scripts/build_bootstrap.sh).
// EN: unions `src` into `dst` using plain POSIX sigismember/sigaddset instead of
// `sigorset`, a GNU extension absent on macOS/BSD (and the production build
// doesn't define _GNU_SOURCE anyway).
static void os_sigset_union_into(sigset_t* dst, const sigset_t* src) {
#ifdef NSIG
    const int top = NSIG;
#else
    const int top = 64;
#endif
    for (int s = 1; s < top; s++) {
        if (sigismember(src, s) == 1) sigaddset(dst, s);
    }
}

int os_fault_guard_install(int (*on_fault)(void* addr)) {
    // El callback se publica ANTES del once-only: un segundo install con otro
    // callback sigue actualizándolo (mismo comportamiento observable que antes),
    // lo que no se repite es el snapshot + sigaction.
    // EN: the callback is published BEFORE the once-only guard: a second install
    // with a different callback still updates it (same observable behaviour as
    // before); what is not repeated is the snapshot + sigaction.
    g_fault_on_fault = on_fault;
    if (__atomic_exchange_n(&g_fault_installed, 1, __ATOMIC_ACQ_REL)) return 0;

    // Snapshot + publicación ANTES de instalar: si se publicara después, un
    // fault de otro thread en la ventana intermedia encontraría g_prev_valid=0
    // y mataría el proceso justo por el camino que este fix elimina.
    // EN: snapshot + publish BEFORE installing: publishing afterwards would
    // leave a window where a fault on another thread sees g_prev_valid=0 and
    // dies through the very path this fix removes.
    os_fault_snapshot_prev(SIGSEGV, &g_prev_segv);
    os_fault_snapshot_prev(SIGBUS,  &g_prev_bus);
    __atomic_store_n(&g_prev_valid, 1, __ATOMIC_RELEASE);

    // Una disposición POR SEÑAL: la de SIGSEGV hereda la máscara del dueño
    // previo DE SIGSEGV, y la de SIGBUS la del suyo. Una sola `sa` compartida
    // uniría las dos máscaras y bloquearía de más en ambas — seguro, pero no es
    // lo que dice el contrato de abajo, y "seguro pero no lo que dice el
    // comentario" es justo la clase de deriva que este arco viene cazando.
    // EN: one disposition PER SIGNAL: SIGSEGV's inherits the mask of SIGSEGV's
    // previous owner, SIGBUS's inherits its own. A single shared `sa` would
    // union both masks and over-block on each — safe, but not what the contract
    // below says.
    struct sigaction sa_segv, sa_bus;
    memset(&sa_segv, 0, sizeof(sa_segv));
    sa_segv.sa_sigaction = os_fault_guard_handler;
    sa_segv.sa_flags = SA_SIGINFO | SA_ONSTACK;
    // HEREDAR la máscara del dueño previo, no empezar de cero. Encadenar la
    // llamada no alcanza: un handler puede depender de correr con ciertas
    // señales BLOQUEADAS, y esa garantía viaja en su `sa_mask`, que el kernel
    // aplica según la disposición del handler que efectivamente ATIENDE la
    // señal — o sea la nuestra. Con máscara vacía, el dueño previo termina
    // corriendo con señales que él había pedido postergar.
    //
    // Caso concreto medido (W3 paso 0b): Boehm instala su write-fault handler
    // de dirty-bits con su señal de suspensión en `sa_mask`, y su propio
    // comentario dice que así hace el handler ATÓMICO respecto al
    // stop-the-world (libgc 8.2.8 os_dep.c:3452). Con nuestra máscara vacía, un
    // stop-the-world podía suspender el thread en medio del UNPROTECT / set del
    // dirty bit; el heap quedaba con el protocolo de protección a mitad de
    // camino y Boehm abortaba después con "Unexpected bus error or segmentation
    // fault". Se une la máscara en vez de nombrar señales de Boehm: la capa no
    // conoce al GC, solo respeta el contrato de quien tenía la señal.
    //
    // EN: INHERIT the previous owner's mask instead of starting empty. Chaining
    // the call is not enough: a handler may depend on running with certain
    // signals BLOCKED, and that guarantee lives in its `sa_mask`, which the
    // kernel applies from the disposition of whoever actually FIELDS the signal
    // -- us. Measured case (W3 step 0b): Boehm installs its dirty-bit
    // write-fault handler with its suspend signal in sa_mask, which its own
    // comment says makes the handler ATOMIC w.r.t. stopping the world (libgc
    // 8.2.8 os_dep.c:3452). With our empty mask a stop-the-world could suspend
    // the thread mid UNPROTECT/dirty-bit-set, and Boehm later aborted with
    // "Unexpected bus error or segmentation fault". We union the mask rather
    // than naming Boehm's signals: the layer doesn't know the GC, it just
    // honours the contract of whoever owned the signal.
    //
    // El snapshot de arriba ya corrió incondicionalmente (y publicó
    // g_prev_valid=1) unas líneas más arriba, así que acá NO hay nada que
    // chequear: una guarda sobre g_prev_valid sería una rama muerta.
    // EN: the snapshot above already ran unconditionally (publishing
    // g_prev_valid=1) a few lines up, so there is nothing to check here: a
    // guard on g_prev_valid would be a dead branch.
    sigemptyset(&sa_segv.sa_mask);
    os_sigset_union_into(&sa_segv.sa_mask, &g_prev_segv.sa_mask);

    memcpy(&sa_bus, &sa_segv, sizeof(sa_bus));
    sigemptyset(&sa_bus.sa_mask);
    os_sigset_union_into(&sa_bus.sa_mask, &g_prev_bus.sa_mask);

    if (sigaction(SIGSEGV, &sa_segv, NULL) != 0) {
        // Falló sin dejar nada instalado: soltar el once-only para que un
        // reintento pueda reparar (si no, quedaría trabado en "ya instalado"
        // sin handler ninguno).
        // EN: failed with nothing installed: release the once-only so a retry
        // can repair it (otherwise it would latch as "already installed" with
        // no handler at all).
        int e = errno;
        __atomic_store_n(&g_fault_installed, 0, __ATOMIC_RELEASE);
        return -e;
    }
    if (sigaction(SIGBUS, &sa_bus, NULL) != 0) {
        // Sin estados a medias: si BUS falla tras que SEGV quedó instalado,
        // revertir SEGV antes de devolver el error -- el caller (scheduler.c)
        // puede seguir ignorando el rc porque nunca queda con SEGV manejado y
        // BUS crudo. Se restaura el DUEÑO PREVIO, no SIG_DFL: volver a SIG_DFL
        // acá reintroduciría el mismo bug de handler pisado por la puerta de
        // atrás (Boehm quedaría sin su write-fault handler).
        // EN: no half-installed state: if BUS fails after SEGV was already set,
        // revert SEGV before returning the error -- the caller (scheduler.c) can
        // keep ignoring the rc because it never ends up with SEGV handled and
        // BUS raw. It restores the PREVIOUS OWNER, not SIG_DFL: resetting to
        // SIG_DFL here would reintroduce the clobbered-handler bug through the
        // back door (Boehm would be left without its write-fault handler).
        int e = errno;
        sigaction(SIGSEGV, &g_prev_segv, NULL);
        __atomic_store_n(&g_fault_installed, 0, __ATOMIC_RELEASE);   // ver arriba: permite reintentar
        return -e;
    }
    return 0;
}

int os_fault_guard_thread_init(void) {
    // Pila alterna por thread: el fault ocurre con el stack AGOTADO, así que
    // el handler necesita la suya propia o faultea él mismo. TEXTUAL de
    // scheduler.c (incluido el mensaje F9 si malloc falla).
    // EN: per-thread alternate stack: the fault happens with the stack
    // EXHAUSTED, so the handler needs its own or it faults itself. VERBATIM
    // from scheduler.c (including the F9 message if malloc fails).
    static OS_THREAD_LOCAL char* alt = NULL;
    if (alt) return 0;
    size_t asz = SIGSTKSZ < 32768 ? 32768 : (size_t)SIGSTKSZ;
    alt = (char*)malloc(asz);
    if (!alt) {
        // F9: sin pila alterna, un overflow vuelve al SIGSEGV mudo — decirlo.
        fprintf(stderr, "[nyx] no se pudo reservar la pila alterna del worker: los overflows de stack no se diagnosticarán\n");
        return -ENOMEM;
    }
    stack_t ss;
    ss.ss_sp = alt;
    ss.ss_size = asz;
    ss.ss_flags = 0;
    if (sigaltstack(&ss, NULL) != 0) {
        // M3: si sigaltstack falla, liberar y dejar alt=NULL -- si no, el
        // `if (alt) return 0;` de arriba mentiría "ya inicializado" en
        // llamadas posteriores del mismo thread, y un retry nunca podría
        // repararlo.
        // EN: M3: if sigaltstack fails, free and reset alt=NULL -- otherwise
        // the `if (alt) return 0;` above would lie "already initialized" on
        // later calls from the same thread, and a retry could never fix it.
        int e = errno;
        free(alt);
        alt = NULL;
        return -e;
    }
    return 0;
}

// --- Filesystem / Sistema de archivos (dominio fs, W2 fase A) -- mecánica
// VERBATIM de la que runtime/file-io.c tenía inline antes de esta migración
// (stat/mkdir/opendir+readdir+closedir); contrato recortado al uso medido,
// ver nyx_os.h.
// EN: filesystem domain (W2 phase A) -- VERBATIM mechanics of what
// runtime/file-io.c had inline before this migration; contract trimmed to
// measured use, see nyx_os.h.
int os_fs_stat(const char* path, os_fs_info_t* out) {
    if (!out) return -EINVAL;
    out->exists = 0;
    if (!path) return -EINVAL;
    struct stat st;
    if (stat(path, &st) == 0) {
        out->exists = 1;
        return 0;
    }
    // ENOENT no es un error de esta capa -- es la respuesta "no existe" que
    // nyx_file_exists espera poder distinguir de un fallo real (EACCES,
    // ENOTDIR, etc), aunque el ÚNICO caller medido hoy (nyx_file_exists)
    // colapse ambos casos igual (ver file-io.c).
    // EN: ENOENT is not an error at this layer -- it's the "doesn't exist"
    // answer nyx_file_exists could distinguish from a real failure (EACCES,
    // ENOTDIR, etc), even though the ONLY caller measured today
    // (nyx_file_exists) collapses both cases anyway (see file-io.c).
    if (errno == ENOENT) return 0;
    return -errno;
}

int os_fs_mkdir(const char* path) {
    if (!path) return -EINVAL;
    return mkdir(path, 0755) == 0 ? 0 : -errno;
}

int64_t os_fs_listdir(const char* path,
                      void (*cb)(const char* name, void* ud),
                      void* ud) {
    if (!path) return -EINVAL;
    DIR* d = opendir(path);
    if (!d) return -errno;
    struct dirent* entry;
    int64_t n = 0;
    while ((entry = readdir(d)) != NULL) {
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) continue;
        if (cb) cb(entry->d_name, ud);
        n++;
    }
    closedir(d);
    return n;
}

// --- Terminal + fd crudos (dominio term+fd, W2 fase A) -- mecánica de la
// que runtime.c tenía inline antes de esta migración (termios raw mode +
// ioctl TIOCGWINSZ + self-pipe de señales); contrato recortado al uso
// medido, ver nyx_os.h. UNA divergencia DELIBERADA con el inline viejo
// (review de Task 2, M1): si tcsetattr falla sobre un tty (p.ej. EIO en
// process-group de fondo con SIGTTOU ignorado), raw_enter devuelve -errno
// y NO marca el modo activo — el viejo marcaba el flag incondicional y
// después «restauraba» un estado nunca aplicado. Más honesto; el caller
// (nyx_raw_mode_enter) entonces tampoco instala el no-op de SIGWINCH en
// ese camino angosto. / EN: ONE deliberate divergence: a failed tcsetattr
// on a real tty returns -errno without marking raw active (the old inline
// set the flag unconditionally and later "restored" a never-applied
// state); narrower and more honest. El estado previo de raw mode (termios guardado +
// flag activo) que runtime.c guardaba en sus propios estáticos
// (nyx_saved_termios/nyx_raw_mode_active) se muda ACÁ -- os_term_raw_enter/
// exit no toman parámetros, el estado vive en la impl.
// EN: terminal + raw fd domain (W2 phase A) -- VERBATIM mechanics of what
// runtime.c had inline before this migration (termios raw mode + ioctl
// TIOCGWINSZ + signal self-pipe); contract trimmed to measured use, see
// nyx_os.h. The previous raw-mode state (saved termios + active flag) that
// runtime.c kept in its own statics (nyx_saved_termios/nyx_raw_mode_active)
// moves HERE -- os_term_raw_enter/exit take no params, the state lives in
// the impl.
static struct termios g_term_saved;
static int g_term_raw_active = 0;

int os_term_isatty(int fd) {
    return isatty(fd);
}

int os_term_raw_enter(void) {
    if (!isatty(STDIN_FILENO)) return -ENOTTY;
    if (tcgetattr(STDIN_FILENO, &g_term_saved) < 0) return -errno;
    struct termios raw = g_term_saved;
    cfmakeraw(&raw);
    raw.c_cc[VMIN]  = 1;   // leer minimo 1 byte
    raw.c_cc[VTIME] = 0;   // sin timeout
    if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw) < 0) return -errno;
    g_term_raw_active = 1;
    return 0;
}

int os_term_raw_exit(void) {
    if (!g_term_raw_active) return 0;   // nada que restaurar -- no-op, no es error
    int rc = (tcsetattr(STDIN_FILENO, TCSAFLUSH, &g_term_saved) < 0) ? -errno : 0;
    g_term_raw_active = 0;
    return rc;
}

int os_term_winsize(int* rows, int* cols) {
    struct winsize ws;
    if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1) return -errno;
    if (rows) *rows = ws.ws_row;
    if (cols) *cols = ws.ws_col;
    return 0;
}

int os_fd_pipe(int fds[2]) {
    if (pipe(fds) != 0) return -errno;
    // CLOEXEC en ambos extremos -- el self-pipe de señales
    // (nyx_signal_handle, runtime.c) no debe filtrarse a un fork+exec del
    // programa. fcntl 2x en vez de pipe2(O_CLOEXEC): pipe2 es Linux-only,
    // esta capa POSIX también apunta a macOS/BSD.
    // EN: CLOEXEC on both ends -- the signal self-pipe (nyx_signal_handle,
    // runtime.c) must not leak across a fork+exec. fcntl 2x instead of
    // pipe2(O_CLOEXEC): pipe2 is Linux-only, this POSIX layer also targets
    // macOS/BSD.
    fcntl(fds[0], F_SETFD, FD_CLOEXEC);
    fcntl(fds[1], F_SETFD, FD_CLOEXEC);
    return 0;
}

int64_t os_fd_read(int fd, void* buf, int64_t n) {
    ssize_t r = read(fd, buf, (size_t)n);
    return r < 0 ? -errno : (int64_t)r;
}

// PASSTHROUGH puro de write(2) -- ver contrato completo en nyx_os.h (el
// trampolín de señales lo llama en contexto de señal; esta impl no agrega
// nada sobre el write(2) crudo salvo comparar el resultado y leer errno).
int64_t os_fd_write(int fd, const void* buf, int64_t n) {
    ssize_t r = write(fd, buf, (size_t)n);
    return r < 0 ? -errno : (int64_t)r;
}

int os_fd_close(int fd) {
    return close(fd) == 0 ? 0 : -errno;
}

// CARRY de Task 1 (file-io.c): fsync/fdatasync -- mecánica VERBATIM de
// nyx_fsync/nyx_fdatasync (file-io.c), que migran a llamar acá.
// EN: Task 1 carry (file-io.c): fsync/fdatasync -- VERBATIM mechanics of
// nyx_fsync/nyx_fdatasync (file-io.c), which migrate to call here.
int os_fd_sync(int fd) {
    return fsync(fd) == 0 ? 0 : -errno;
}

int os_fd_datasync(int fd) {
    return fdatasync(fd) == 0 ? 0 : -errno;
}
