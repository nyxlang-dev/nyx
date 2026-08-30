// runtime/os/os_wasm.c — impl wasm32-wasi de nyx_os.h. wasi es single-thread:
// los dominios 1-7 (threads, mutex, condvar, rwlock, once, TLS) están prohibidos
// en wasm por `wasm_forbidden_builtin` (ningún .nx compilado a wasm los ejecuta,
// el subset portable de WASM_RUNTIME_SRCS ni siquiera linkea scheduler/thread.c);
// este stub existe para que el link no falle si algún día una fuente NO exclusiva
// de wasm referencia estos símbolos. Tiempo (dominio 8) SÍ es real: wasi expone
// clock_gettime/nanosleep vía su libc.
//
// EN: wasm32-wasi implementation of nyx_os.h. wasi is single-threaded: domains
// 1-7 (threads, mutex, condvar, rwlock, once, TLS) are forbidden in wasm by
// `wasm_forbidden_builtin` (no .nx compiled to wasm ever calls them, and the
// portable subset in WASM_RUNTIME_SRCS doesn't even link scheduler.c/thread.c);
// this stub exists so linking never fails if a non-wasm-exclusive source ever
// references these symbols. Time (domain 8) IS real: wasi's libc provides
// clock_gettime/nanosleep.
#define _GNU_SOURCE     // strptime (os_time_parse) -- aditivo, igual que en os_posix.c
#include "nyx_os.h"
#include <errno.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>     // setenv (os_env_set) -- wasi-libc lo soporta real (W2 fase C)
#include <sys/stat.h>   // stat/mkdir (os_fs_stat/os_fs_mkdir) -- wasi-libc los soporta real
#include <dirent.h>     // opendir/readdir/closedir (os_fs_listdir) -- idem
#include <unistd.h>     // read/write/close/fsync/fdatasync (os_fd_*) -- wasi-libc los soporta real (W2 fase A term+fd)

int  os_thread_create(os_thread_t* t, os_thread_fn fn, void* arg) { (void)t; (void)fn; (void)arg; return -ENOSYS; }
int  os_thread_join(os_thread_t* t) { (void)t; return -ENOSYS; }
int  os_thread_timedjoin(os_thread_t* t, int64_t ms) { (void)t; (void)ms; return -ENOSYS; }
int  os_thread_detach(os_thread_t* t) { (void)t; return -ENOSYS; }
int  os_thread_cancel(os_thread_t* t) { (void)t; return -ENOSYS; }

void os_yield(void) { }   // no-op: single-thread, nadie más a quien cederle el quantum

int  os_mutex_init(os_mutex_t* m) { (void)m; return 0; }               // no-op: single-thread, no hace falta serializar
void os_mutex_lock(os_mutex_t* m) { (void)m; }
int  os_mutex_trylock(os_mutex_t* m) { (void)m; return 0; }
void os_mutex_unlock(os_mutex_t* m) { (void)m; }
void os_mutex_destroy(os_mutex_t* m) { (void)m; }

int  os_cond_init(os_cond_t* c) { (void)c; return 0; }
void os_cond_wait(os_cond_t* c, os_mutex_t* m) { (void)c; (void)m; }   // no hay otro thread que señale: no-op
int  os_cond_timedwait(os_cond_t* c, os_mutex_t* m, int64_t deadline_ns) { (void)c; (void)m; (void)deadline_ns; return -ENOSYS; }
void os_cond_signal(os_cond_t* c) { (void)c; }
void os_cond_broadcast(os_cond_t* c) { (void)c; }
void os_cond_destroy(os_cond_t* c) { (void)c; }

int  os_rwlock_init(os_rwlock_t* r) { (void)r; return 0; }
void os_rwlock_rdlock(os_rwlock_t* r) { (void)r; }
int  os_rwlock_tryrdlock(os_rwlock_t* r) { (void)r; return 0; }
void os_rwlock_wrlock(os_rwlock_t* r) { (void)r; }
int  os_rwlock_trywrlock(os_rwlock_t* r) { (void)r; return 0; }
void os_rwlock_unlock(os_rwlock_t* r) { (void)r; }
void os_rwlock_destroy(os_rwlock_t* r) { (void)r; }

void os_once(os_once_t* o, void (*fn)(void)) {
    // Sin CAS ni pthread_once: single-thread alcanza con un flag propio en storage[0].
    if (o->storage[0] == 0) { o->storage[0] = 1; fn(); }
}

int   os_tls_key_create(os_tls_key_t* k) { (void)k; return -ENOSYS; }
void* os_tls_get(os_tls_key_t* k) { (void)k; return NULL; }
void  os_tls_set(os_tls_key_t* k, void* v) { (void)k; (void)v; }

int64_t os_monotonic_ns(void) { struct timespec ts; clock_gettime(CLOCK_MONOTONIC, &ts); return (int64_t)ts.tv_sec * 1000000000LL + ts.tv_nsec; }
int64_t os_realtime_ns(void)  { struct timespec ts; clock_gettime(CLOCK_REALTIME,  &ts); return (int64_t)ts.tv_sec * 1000000000LL + ts.tv_nsec; }
void    os_sleep_ms(int64_t ms) { struct timespec ts = { (time_t)(ms / 1000), (long)((ms % 1000) * 1000000L) }; while (nanosleep(&ts, &ts) == -1 && errno == EINTR) {} }
// strptime/setenv: wasi-libc (musl) los provee REALES — time.c y runtime.c los
// llamaban directo antes de W2 fase C y el build wasm los linkeaba; migrarlos a
// la capa no cambia nada del lado wasm.
// EN: strptime/setenv are REAL in wasi-libc (musl) — time.c and runtime.c called
// them directly before W2 phase C and the wasm build linked fine; moving them
// onto the layer changes nothing on the wasm side.
int os_time_parse(const char* date, const char* fmt, struct tm* out) {
    if (!date || !fmt || !out) return -EINVAL;
    if (strptime(date, fmt, out) == NULL) return -EINVAL;
    return 0;
}
int os_env_set(const char* name, const char* value) {
    if (!name || !value) return -EINVAL;
    if (setenv(name, value, 1) != 0) return -errno;
    return 0;
}

// --- vm/ctx: sin scheduler en wasm — stubs por simetría del header.
// EN: no scheduler on wasm — header-symmetry stubs.
void* os_vm_map(size_t size) { (void)size; return NULL; }
int   os_vm_protect_none(void* base, size_t size) { (void)base; (void)size; return -ENOSYS; }
int   os_vm_release(void* base, size_t size) { (void)base; (void)size; return -ENOSYS; }
// ctx v2 (W3): mismas firmas que posix/win32, todo -ENOSYS. wasm no tiene
// scheduler M:N (ni threads), así que ningún ctx se crea nunca; os_ctx_stack/
// guard devuelven el rango vacío (lo=NULL, size=0), que es exactamente lo que
// el contrato manda tolerar al caller (ver la SEMÁNTICA DIFERIDA en nyx_os.h).
// EN: ctx v2 (W3): same signatures as posix/win32, all -ENOSYS. wasm has no
// M:N scheduler (no threads), so no ctx is ever created; os_ctx_stack/guard
// hand back the empty range (lo=NULL, size=0), exactly what the contract
// requires callers to tolerate (see DEFERRED SEMANTICS in nyx_os.h).
// thread_init devuelve 0, NO -ENOSYS: el contrato del header dice "posix/wasm:
// no-op 0" y el header es la fuente de verdad. No es una concesión — es
// coherente: no hay nada que convertir en un mundo sin threads, igual que en
// posix. Lo que no existe en wasm es CREAR un ctx (make/remake -> -ENOSYS).
// EN: thread_init returns 0, NOT -ENOSYS: the header's contract says
// "posix/wasm: no-op 0" and the header is the source of truth. It is coherent
// rather than a concession — there is nothing to convert in a world without
// threads, same as posix. What wasm lacks is CREATING a ctx (make/remake).
int   os_ctx_thread_init(void) { return 0; }
int   os_ctx_make(os_ctx_t* c, size_t stack_size, void (*entry)(void*), void* arg)
      { (void)c; (void)stack_size; (void)entry; (void)arg; return -ENOSYS; }
int   os_ctx_remake(os_ctx_t* c, void (*entry)(void*), void* arg)
      { (void)c; (void)entry; (void)arg; return -ENOSYS; }
void  os_ctx_stack(const os_ctx_t* c, void** lo, size_t* size)
      { (void)c; if (lo) *lo = NULL; if (size) *size = 0; }
void  os_ctx_guard(const os_ctx_t* c, void** lo, size_t* size)
      { (void)c; if (lo) *lo = NULL; if (size) *size = 0; }
void  os_ctx_free(os_ctx_t* c) { (void)c; }
void  os_ctx_swap(os_ctx_t* save, os_ctx_t* run) { (void)save; (void)run; }

// --- Sockets: net está PROHIBIDO en wasm (wasm_forbidden_builtin guarda en
// tiempo de compilación) -- estos stubs existen únicamente para que el link
// nunca falle si algo referencia los símbolos; ningún .nx compilado a wasm
// los ejecuta. Todo -ENOSYS; cb de ifaces4 nunca se llama.
// EN: networking is FORBIDDEN in wasm (wasm_forbidden_builtin guards at
// compile time) -- these stubs exist only so linking never fails if
// something references the symbols; no .nx compiled to wasm ever calls
// them. All -ENOSYS; ifaces4's cb is never invoked.
int  os_addr_resolve4(const char* host, int port, os_addr_t* out, int max, const char** err_str) { (void)host; (void)port; (void)out; (void)max; (void)err_str; return -ENOSYS; }
int  os_addr_resolve_any(const char* host, int port, os_addr_t* out, int max, const char** err_str) { (void)host; (void)port; (void)out; (void)max; (void)err_str; return -ENOSYS; }
int  os_addr_from_ip4(os_addr_t* a, const char* ip, int port) { (void)a; (void)ip; (void)port; return -ENOSYS; }
// Predicado 1/0 -- -ENOSYS es truthy y rompería a cualquier caller que trate
// el resultado como bool ("es IP numérica?"). No hay ambigüedad posible: wasm
// nunca ejecuta este camino (wasm_forbidden_builtin), así que "no es IP" es
// una respuesta tan segura como cualquier otra.
// EN: 1/0 predicate -- -ENOSYS is truthy and would break any caller treating
// the result as a bool ("is this a numeric IP?"). No ambiguity possible: wasm
// never executes this path (wasm_forbidden_builtin), so "not an IP" is as
// safe an answer as any other.
int  os_addr_is_ip(const char* s) { (void)s; return 0; }
int  os_addr_ip(const os_addr_t* a, char* buf, int buflen) { (void)a; (void)buf; (void)buflen; return -ENOSYS; }
int  os_addr_port(const os_addr_t* a) { (void)a; return -ENOSYS; }
int  os_addr_hostname(const os_addr_t* a, char* buf, int buflen, int require_name) { (void)a; (void)buf; (void)buflen; (void)require_name; return -ENOSYS; }

int64_t os_sock_tcp4(void) { return -ENOSYS; }
int64_t os_sock_udp4(void) { return -ENOSYS; }
int64_t os_sock_stream_for(const os_addr_t* a) { (void)a; return -ENOSYS; }
int     os_sock_connect(int64_t fd, const os_addr_t* a) { (void)fd; (void)a; return -ENOSYS; }
int     os_sock_bind(int64_t fd, const os_addr_t* a) { (void)fd; (void)a; return -ENOSYS; }
int     os_sock_listen(int64_t fd, int backlog) { (void)fd; (void)backlog; return -ENOSYS; }
int64_t os_sock_accept(int64_t fd) { (void)fd; return -ENOSYS; }
int64_t os_sock_send(int64_t fd, const void* buf, size_t len) { (void)fd; (void)buf; (void)len; return -ENOSYS; }
int64_t os_sock_sendv(int64_t fd, const os_iovec_t* iov, int n) { (void)fd; (void)iov; (void)n; return -ENOSYS; }
int64_t os_sock_recv(int64_t fd, void* buf, size_t len) { (void)fd; (void)buf; (void)len; return -ENOSYS; }
int64_t os_sock_sendto(int64_t fd, const void* buf, size_t len, const os_addr_t* a) { (void)fd; (void)buf; (void)len; (void)a; return -ENOSYS; }
int64_t os_sock_recvfrom(int64_t fd, void* buf, size_t len, os_addr_t* from) { (void)fd; (void)buf; (void)len; (void)from; return -ENOSYS; }
int     os_sock_close(int64_t fd) { (void)fd; return -ENOSYS; }
int     os_sock_shutdown(int64_t fd, int64_t how) { (void)fd; (void)how; return -ENOSYS; }
int     os_sock_peer(int64_t fd, os_addr_t* out) { (void)fd; (void)out; return -ENOSYS; }
int     os_sock_set_reuseaddr(int64_t fd) { (void)fd; return -ENOSYS; }
int     os_sock_set_nodelay(int64_t fd) { (void)fd; return -ENOSYS; }
int     os_sock_set_timeout(int64_t fd, int64_t seconds) { (void)fd; (void)seconds; return -ENOSYS; }
int     os_sock_set_nonblocking(int64_t fd, int on) { (void)fd; (void)on; return -ENOSYS; }
int     os_sock_error(int64_t fd) { (void)fd; return -ENOSYS; }
int     os_sock_poll1(int64_t fd, int events, int timeout_ms) { (void)fd; (void)events; (void)timeout_ms; return -ENOSYS; }
int64_t os_net_ifaces4(void (*cb)(const char* name, const char* ip, const char* mask, void* ud), void* ud) { (void)cb; (void)ud; return -ENOSYS; }
int     os_inet_ntop6(const unsigned char* bytes16, char* buf, int buflen) { (void)bytes16; (void)buf; (void)buflen; return -ENOSYS; }

// --- Procesos (W1 inc 5) -- WASI no tiene shell ni popen/system: hereda el
// contrato EXACTO que runtime.c le daba a exec()/exec_code() bajo su viejo
// #ifdef __wasi__ (ahora muerto): run_capture nunca llama a cb y devuelve -1
// (runtime.c lo traduce a "" — comando "no lanzado"); run_status devuelve -1.
// EN: WASI has no shell or popen/system: this inherits the EXACT contract
// runtime.c gave exec()/exec_code() under its old (now dead) #ifdef
// __wasi__: run_capture never calls cb and returns -1 (runtime.c maps that
// to "" — "could not launch"); run_status returns -1.
int     os_proc_run_capture(const char* cmd, void (*cb)(const void* chunk, size_t len, void* ud), void* ud) { (void)cmd; (void)cb; (void)ud; return -1; }
int64_t os_proc_run_status(const char* cmd) { (void)cmd; return -1; }

// --- dl: wasi no tiene dlopen/dlsym (linkeo estático) -- stubs por simetría
// del header, mismo espíritu que los bloques de arriba. os_dl_error NULL:
// el contrato dice "puede ser NULL", no hace falta una string estática.
// EN: dl: wasi has no dlopen/dlsym (static linking) -- header-symmetry
// stubs, same spirit as the blocks above. os_dl_error NULL: the contract
// says "may be NULL", no need for a static string.
os_dl_t     os_dl_open(const char* name, int global) { (void)name; (void)global; return NULL; }
void*       os_dl_sym(os_dl_t h, const char* name) { (void)h; (void)name; return NULL; }
const char* os_dl_error(void) { return NULL; }
int         os_dl_close(os_dl_t h) { (void)h; return -ENOSYS; }

// --- Señales (W1 inc 7) -- wasi no tiene señales: stubs por simetría del
// header, mismo espíritu que los bloques de arriba. -ENOSYS/no-op: ningún
// .nx compilado a wasm ejecuta este camino.
// EN: signals (W1 inc 7) -- wasi has no signals: header-symmetry stubs,
// same spirit as the blocks above. -ENOSYS/no-op: no .nx compiled to wasm
// ever executes this path.
int os_sig_install(int signum, os_sig_fn fn) { (void)signum; (void)fn; return -ENOSYS; }
int os_sig_install_no_restart(int signum, os_sig_fn fn) { (void)signum; (void)fn; return -ENOSYS; }
int os_sig_reset(int signum) { (void)signum; return -ENOSYS; }
int os_sig_ignore(int signum) { (void)signum; return -ENOSYS; }
int os_sig_is_default(int signum) { (void)signum; return -ENOSYS; }
int os_fault_guard_install(int (*on_fault)(void* addr)) { (void)on_fault; return -ENOSYS; }
int os_fault_guard_thread_init(void) { return -ENOSYS; }

// --- os_ev: eventos de E/S completion-style (W1 inc 4) -- epoll no existe en
// wasi (single-thread, sin sockets -- ver el bloque de arriba). loop_new
// devuelve NULL (ningún caller wasm puede tener un loop válido); el resto son
// -ENOSYS/no-op con la MISMA firma que os_posix.c, por simetría del header y
// para que el link nunca falle si algo llegara a referenciarlos.
// EN: os_ev: completion-style I/O events (W1 inc 4) -- epoll doesn't exist on
// wasi (single-threaded, no sockets -- see the block above). loop_new returns
// NULL (no wasm caller can ever hold a valid loop); everything else is
// -ENOSYS/no-op with the SAME signature as os_posix.c, for header symmetry
// and so linking never fails if something ever references them.
os_ev_loop_t* os_ev_loop_new(void) { return NULL; }
void  os_ev_loop_free(os_ev_loop_t* l) { (void)l; }
int   os_ev_timer(os_ev_loop_t* l, int64_t ms, os_ev_cb cb, void* ud) { (void)l; (void)ms; (void)cb; (void)ud; return -ENOSYS; }
int   os_ev_wake(os_ev_loop_t* l) { (void)l; return -ENOSYS; }
int   os_ev_read(os_ev_loop_t* l, os_sock_t sock, void* buf, int64_t len, os_ev_cb cb, void* ud) { (void)l; (void)sock; (void)buf; (void)len; (void)cb; (void)ud; return -ENOSYS; }
int   os_ev_write(os_ev_loop_t* l, os_sock_t sock, const void* buf, int64_t len, os_ev_cb cb, void* ud) { (void)l; (void)sock; (void)buf; (void)len; (void)cb; (void)ud; return -ENOSYS; }
int   os_ev_cancel(os_ev_loop_t* l, os_sock_t sock) { (void)l; (void)sock; return -ENOSYS; }
int   os_ev_run_once(os_ev_loop_t* l, int timeout_ms) { (void)l; (void)timeout_ms; return -ENOSYS; }

// --- Filesystem (W2 fase A) -- a diferencia de los bloques -ENOSYS de
// arriba, esta es una impl REAL: wasi-libc SÍ soporta stat/mkdir/opendir/
// readdir/closedir (WASI preview1 tiene path_filestat_get/path_create_
// directory/fd_readdir por debajo). runtime/file-io.c está en
// WASM_RUNTIME_SRCS (Makefile), así que estas llamadas SÍ corren bajo
// wasmtime -- no son código muerto. Mecánica IDÉNTICA a os_posix.c.
// EN: filesystem (W2 phase A) -- unlike the -ENOSYS blocks above, this is a
// REAL impl: wasi-libc DOES support stat/mkdir/opendir/readdir/closedir
// (WASI preview1 backs them with path_filestat_get/path_create_directory/
// fd_readdir). runtime/file-io.c is in WASM_RUNTIME_SRCS (Makefile), so
// these calls DO run under wasmtime -- not dead code. IDENTICAL mechanics
// to os_posix.c.
int os_fs_stat(const char* path, os_fs_info_t* out) {
    if (!out) return -EINVAL;
    out->exists = 0;
    if (!path) return -EINVAL;
    struct stat st;
    if (stat(path, &st) == 0) {
        out->exists = 1;
        return 0;
    }
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

// --- Terminal + fd crudos (W2 fase A term+fd) -- mixto, a diferencia de los
// bloques -ENOSYS de arriba: term es -ENOSYS puro (WASI no tiene termios ni
// ioctl TIOCGWINSZ -- ningún .nx compilado a wasm los ejecuta, runtime.c usa
// su propio branch #else con tamaño fijo 80x24 y no llama a estos), pero
// os_fd_read/write/close SÍ son reales (wasi-libc los soporta sobre
// cualquier fd ya abierto, incl. stdin/stdout) y os_fd_sync/datasync
// también (wasi-libc envuelve fd_sync/fd_datasync de WASI preview1).
// os_fd_pipe es el único -ENOSYS del grupo fd: WASI no tiene el concepto de
// pipe anónimo (sin fork, sin pipe(2)) -- ningún caller wasm puede
// alcanzarlo (el self-pipe de señales vive bajo el #ifndef __wasi__ de
// runtime.c).
// EN: terminal + raw fd (W2 phase A term+fd) -- mixed, unlike the -ENOSYS
// blocks above: term is pure -ENOSYS (WASI has no termios or ioctl
// TIOCGWINSZ -- no .nx compiled to wasm ever calls these, runtime.c uses
// its own #else branch with a fixed 80x24 size instead), but
// os_fd_read/write/close ARE real (wasi-libc supports them on any already-
// open fd, incl. stdin/stdout) and so are os_fd_sync/datasync (wasi-libc
// wraps WASI preview1's fd_sync/fd_datasync). os_fd_pipe is the only
// -ENOSYS in the fd group: WASI has no anonymous-pipe concept (no fork, no
// pipe(2)) -- no wasm caller can ever reach it (the signal self-pipe lives
// under runtime.c's #ifndef __wasi__).
int os_term_isatty(int fd) { (void)fd; return 0; }  // predicado 1/0 — -ENOSYS es truthy y mentiría "es tty" / 1-0 predicate: -ENOSYS is truthy
int os_term_raw_enter(void) { return -ENOSYS; }
int os_term_raw_exit(void) { return -ENOSYS; }
int os_term_winsize(int* rows, int* cols) { (void)rows; (void)cols; return -ENOSYS; }

int os_fd_pipe(int fds[2]) { (void)fds; return -ENOSYS; }
int64_t os_fd_read(int fd, void* buf, int64_t n) {
    ssize_t r = read(fd, buf, (size_t)n);
    return r < 0 ? -errno : (int64_t)r;
}
int64_t os_fd_write(int fd, const void* buf, int64_t n) {
    ssize_t r = write(fd, buf, (size_t)n);
    return r < 0 ? -errno : (int64_t)r;
}
int os_fd_close(int fd) { return close(fd) == 0 ? 0 : -errno; }

int os_fd_sync(int fd) { return fsync(fd) == 0 ? 0 : -errno; }
int os_fd_datasync(int fd) { return fdatasync(fd) == 0 ? 0 : -errno; }
