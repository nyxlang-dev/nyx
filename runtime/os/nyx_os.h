// runtime/os/nyx_os.h — capa de plataforma de Nyx (spec W1). SIN #ifdef de plataforma.
//
// ES: Contrato único de threads/sync/tiempo/E-S que cada plataforma implementa
// en su propio .c (os_posix.c, os_wasm.c; W3/W4 agregan os_win32.c). Ningún
// archivo del runtime que NO sea os_*.c puede incluir pthread/epoll/unistd/
// socket/dlfcn/signal/mman directamente a partir de W1 (ratchet, Task 6) — el
// resto del runtime programa contra ESTE header.
//
// EN: Single contract for threads/sync/time/IO that each platform implements
// in its own .c file (os_posix.c, os_wasm.c; W3/W4 add os_win32.c). No file in
// the runtime other than os_*.c may include pthread/epoll/unistd/socket/
// dlfcn/signal/mman directly from W1 onward (ratchet, Task 6) — everything
// else programs against THIS header.
#ifndef NYX_OS_H
#define NYX_OS_H
#include <stdint.h>
#include <stddef.h>

// --- Tipos opacos de tamaño fijo. Cada impl hace _Static_assert(sizeof(nativo) <= sizeof(storage)).
// Init estático = todo ceros: válido en glibc (PTHREAD_*_INITIALIZER) y Win32 (SRWLOCK_INIT,
// CONDITION_VARIABLE_INIT, INIT_ONCE_STATIC_INIT). test_os_threads lo verifica con memcmp.
typedef struct { uint64_t storage[8]; } os_mutex_t;    // glibc x86_64: 40B, aarch64: 48B
typedef struct { uint64_t storage[8]; } os_cond_t;     // glibc: 48B
typedef struct { uint64_t storage[8]; } os_rwlock_t;   // glibc: 56B
typedef struct { uint64_t storage[1]; } os_once_t;     // pthread_once_t: int
typedef struct { uint64_t storage[1]; } os_thread_t;   // pthread_t: unsigned long
typedef struct { uint64_t storage[1]; } os_tls_key_t;  // pthread_key_t: unsigned int
#define OS_MUTEX_STATIC_INIT  {{0}}
#define OS_COND_STATIC_INIT   {{0}}
#define OS_ONCE_STATIC_INIT   {{0}}
#define OS_THREAD_LOCAL __thread   // MSVC: la impl win32 redefine vía -DOS_THREAD_LOCAL=__declspec(thread) (W3)

// --- Threads. Los threads creados acá quedan REGISTRADOS en Boehm GC (GC_pthread_create):
// es el único lugar del runtime que define GC_THREADS. fn corre con arg; el retorno se ignora
// salvo que el caller lo guarde él mismo (patrón nyx_thread_ctx_t de thread.c).
typedef void* (*os_thread_fn)(void* arg);
int  os_thread_create(os_thread_t* t, os_thread_fn fn, void* arg);   // 0 o -errno
int  os_thread_join(os_thread_t* t);                                 // 0 o -errno
// Espera hasta ms; devuelve 0 si terminó, -ETIMEDOUT si no, otro -errno si falla.
int  os_thread_timedjoin(os_thread_t* t, int64_t ms);
int  os_thread_detach(os_thread_t* t);
// Cancelación asíncrona best-effort (posix: pthread_cancel). Contrato: el thread puede NO
// terminar de inmediato; nunca usar sobre threads que tengan locks del runtime.
int  os_thread_cancel(os_thread_t* t);

// cede el resto del quantum al SO / yields the rest of the time slice;
// posix sched_yield; wasm no-op (single-thread, nadie más a quien cederle).
void os_yield(void);

// --- Mutex (no recursivo) / condvar / rwlock / once / TLS.
int  os_mutex_init(os_mutex_t* m);
void os_mutex_lock(os_mutex_t* m);
int  os_mutex_trylock(os_mutex_t* m);       // 0 o -EBUSY
void os_mutex_unlock(os_mutex_t* m);
void os_mutex_destroy(os_mutex_t* m);

int  os_cond_init(os_cond_t* c);             // SIEMPRE reloj monotónico (lección condvar_timedwait, thread.c)
void os_cond_wait(os_cond_t* c, os_mutex_t* m);
// deadline_ns ABSOLUTO en os_monotonic_ns(). 0 si señalada, -ETIMEDOUT si venció, otro -errno.
int  os_cond_timedwait(os_cond_t* c, os_mutex_t* m, int64_t deadline_ns);
void os_cond_signal(os_cond_t* c);
void os_cond_broadcast(os_cond_t* c);
void os_cond_destroy(os_cond_t* c);

int  os_rwlock_init(os_rwlock_t* r);
void os_rwlock_rdlock(os_rwlock_t* r);
int  os_rwlock_tryrdlock(os_rwlock_t* r);   // 0 o -EBUSY
void os_rwlock_wrlock(os_rwlock_t* r);
int  os_rwlock_trywrlock(os_rwlock_t* r);
void os_rwlock_unlock(os_rwlock_t* r);
void os_rwlock_destroy(os_rwlock_t* r);

void os_once(os_once_t* o, void (*fn)(void));

int   os_tls_key_create(os_tls_key_t* k);
void* os_tls_get(os_tls_key_t* k);
void  os_tls_set(os_tls_key_t* k, void* v);

// --- Tiempo.
int64_t os_monotonic_ns(void);     // CLOCK_MONOTONIC; nunca salta con NTP
int64_t os_realtime_ns(void);      // CLOCK_REALTIME (epoch) — solo para timestamps de usuario
void    os_sleep_ms(int64_t ms);   // bloquea el OS thread (el scheduler usa os_ev_timer, no esto)

// ES: parseo de fecha según formato (strptime), único caller medido:
// nyx_datetime_parse (time.c). `struct tm` se declara ADELANTE y se usa solo
// por puntero — nyx_os.h no arrastra <time.h> a todo el runtime; el caller y
// cada impl ya lo incluyen. El caller inicializa *out (memset + tm_isdst) y
// llama mktime DESPUÉS: esta capa hace SOLO el parseo.
// win32: la CRT de MSVC NO tiene strptime ni equivalente — devuelve -ENOSYS,
// y nyx_datetime_parse degrada a su valor de error YA documentado (-1), el
// mismo que devuelve hoy en posix cuando la fecha no matchea el formato.
// EN: date-per-format parsing (strptime); sole measured caller is time.c's
// nyx_datetime_parse. `struct tm` is forward-declared and used by pointer
// only, so nyx_os.h does not drag <time.h> into the whole runtime. The caller
// zero-inits *out and calls mktime AFTERWARDS: this layer only parses.
// win32: the MSVC CRT has no strptime — returns -ENOSYS, and
// nyx_datetime_parse degrades to its ALREADY documented error value (-1),
// the same one posix returns when the date does not match the format.
struct tm;
int os_time_parse(const char* date, const char* fmt, struct tm* out); // 0 / -EINVAL (no matchea) / -ENOSYS

// --- Memoria virtual / Virtual memory (dominio 4 de la spec §3).
// ES: mapear RW + proteger una guard + liberar. posix: mmap/mprotect/munmap;
// win32 (W2/W3): VirtualAlloc(MEM_RESERVE|MEM_COMMIT)/VirtualProtect(
// PAGE_NOACCESS)/VirtualFree(MEM_RELEASE). El split reserve/commit por
// página (forma 4-fn de la spec) llega con el arco de crecimiento on-demand
// (Track 5c inc 2) — YAGNI hasta que ese caller exista.
// OJO (W3, ctx v2): los stacks de goroutine YA NO se mapean por acá — desde
// ctx v2 el ctx es dueño de su stack y hace el mapeo+guard adentro (ver
// os_ctx_make abajo), porque una Fiber win32 no puede adoptar un stack
// ajeno. Este dominio queda como primitiva VM genérica: la consumen los
// tests de la capa (test_os_vm_ctx, test_os_fault_guard_chain) y cualquier
// caller futuro que necesite VA cruda sin semántica de stack.
// EN: map RW + protect a guard + release. The per-page reserve/commit split
// (the spec's 4-fn shape) arrives with the on-demand growth arc (its only
// measured caller) — YAGNI for now. NOTE (W3, ctx v2): goroutine stacks are
// NO LONGER mapped through here — as of ctx v2 the ctx owns its stack and
// maps it (plus guard) internally (see os_ctx_make below), because a win32
// Fiber cannot adopt a foreign stack. This domain stays a generic VM
// primitive consumed by the layer's own tests and any future caller needing
// raw VA with no stack semantics.
void* os_vm_map(size_t size);                       // RW anónimo; NULL si falla / anonymous RW; NULL on failure
int   os_vm_protect_none(void* base, size_t size);  // guard PROT_NONE; 0 o -errno
int   os_vm_release(void* base, size_t size);       // munmap/VirtualFree; 0 o -errno

// --- Contexto cooperativo / Cooperative context (scheduler M:N).
// ES: posix ucontext; win32 (W3): Fibers (CreateFiber/SwitchToFiber). El
// entry recibe UN void* — el hack hi/lo de makecontext (int args de 32 bits)
// es detalle INTERNO de os_posix.c, no del contrato.
// EN: posix ucontext; win32 (W3): Fibers. Entry takes ONE void* — the
// makecontext hi/lo split (32-bit int args) is os_posix.c's internal detail.
// ES: _Alignas(16) porque ucontext_t de glibc aarch64 lo exige (sigcontext
// __reserved[4096] queda aligned(16) — ahí glibc guarda los registros q de
// 128 bits con stp q8-q11). Sin esto storage quedaba a 8 mod 16: UB formal
// (UBSan -fsanitize=alignment lo marca), sin crash hoy solo porque el A-bit
// de aarch64/Linux está apagado. El 600 está dimensionado por aarch64
// (4560B, MEDIDO); en x86_64 (968B) es holgura deliberada.
// EN: _Alignas(16) because glibc's aarch64 ucontext_t requires it (sigcontext's
// __reserved[4096] is aligned(16) — that's where glibc stores the 128-bit q
// registers via stp q8-q11). Without this, storage sat at 8 mod 16: formal UB
// (caught by UBSan -fsanitize=alignment), no crash today only because
// aarch64/Linux's A-bit is off. The 600 is sized for aarch64 (4560B,
// MEASURED); on x86_64 (968B) it's deliberate slack.
// ES (W3, ctx v2): el storage aloja AHORA el contexto nativo MÁS los campos
// de propiedad del stack (base+tamaño del mapeo, área útil, guard: 6 campos
// = 48B en LP64). Sigue holgado: aarch64 4560+48=4608 <= 4800; x86_64
// 968+48=1016 <= 4800. Cada impl lo pina con su propio _Static_assert.
// EN (W3, ctx v2): the storage now holds the native context PLUS the stack
// ownership fields (mapping base+size, usable area, guard: 6 fields = 48B on
// LP64). Still slack: aarch64 4560+48=4608 <= 4800; x86_64 968+48=1016 <=
// 4800. Each impl pins it with its own _Static_assert.
typedef struct { _Alignas(16) uint64_t storage[600]; } os_ctx_t;  // glibc aarch64 ucontext_t: 4560B (MEDIDO); x86_64: 968B

/* ctx v2 (W3): el ctx ES dueño de su stack / the ctx OWNS its stack.
 * POSIX: mmap RW + guard multi-página adentro; win32: CreateFiberEx(commit==reserve);
 * wasm: -ENOSYS (sin scheduler M:N en wasm — igual que v1). */
int  os_ctx_thread_init(void);
     /* win32: ConvertThreadToFiber(NULL) en el worker (idempotente: si ya es fiber, 0).
      * posix/wasm: no-op 0. Llamar 1 vez por worker ANTES del primer swap. */
int  os_ctx_make(os_ctx_t* c, size_t stack_size, void (*entry)(void*), void* arg);
     /* Crea ctx + stack propio. 0 o -errno (win32: -ENOMEM si CreateFiberEx falla). */
int  os_ctx_remake(os_ctx_t* c, void (*entry)(void*), void* arg);
     /* Reusa el stack de un ctx ya hecho para una entry nueva (camino del pool).
      * posix: makecontext sobre el mismo stack (costo cero — preserva la medición
      * A/B de v0.26.0). win32: DeleteFiber + CreateFiberEx (sin reuso real —
      * trade-off documentado; pooling de fibers = ficha futura). 0 o -errno. */
void os_ctx_stack(const os_ctx_t* c, void** lo, size_t* size);
     /* Rango REAL utilizable del stack (para GC_add_roots y el registry).
      * posix: el área útil (sin guard). win32: el rango de la fiber. */
void os_ctx_guard(const os_ctx_t* c, void** lo, size_t* size);
     /* Rango de la guard region (para el diagnóstico de overflow del fault-guard).
      * posix: la guard multi-página. win32: lo=NULL,size=0 (commit==reserve no
      * tiene PAGE_GUARD; el overflow cae fuera de la reserva → AV → fault-guard). */
void os_ctx_swap(os_ctx_t* save, os_ctx_t* run);   /* sin cambios / unchanged */
void os_ctx_free(os_ctx_t* c);
     /* posix: munmap del mapeo completo (útil+guard). win32: DeleteFiber. */

// ES: CONTRATO DE INICIALIZACIÓN — un `os_ctx_t` debe estar en CERO antes del
// primer os_ctx_make, y por lo tanto antes de cualquier remake/stack/guard
// sobre él. Las tres impls guardan en el storage opaco los campos de propiedad
// del stack (puntero y tamaños del mapeo o el handle de la fiber), y los LEEN:
// sobre memoria sin inicializar, `os_ctx_stack`/`os_ctx_guard` devolverían
// basura y `os_ctx_free` liberaría un mapeo ajeno. Cumplen gratis las tres
// fuentes que el runtime usa: estático (BSS), GC_MALLOC (memoria en cero) y un
// `memset` explícito para un ctx de stack. `os_ctx_free` deja el ctx OTRA VEZ
// en cero, así que uno liberado se puede volver a hacer sin memset. El único
// que NO exige ceros es `os_ctx_remake`: pide justo lo contrario, un ctx ya
// HECHO (sobre uno en cero devuelve -EINVAL, no adivina un stack).
// EN: INITIALIZATION CONTRACT — an `os_ctx_t` must be ZEROED before its first
// os_ctx_make, and therefore before any remake/stack/guard on it. All three
// impls keep the stack-ownership fields in the opaque storage (mapping pointer
// and sizes, or the fiber handle) and READ them back: over uninitialized memory
// `os_ctx_stack`/`os_ctx_guard` would hand back garbage and `os_ctx_free` would
// release a foreign mapping. The three sources the runtime uses satisfy this
// for free: static (BSS), GC_MALLOC (zeroed memory) and an explicit `memset`
// for a stack-allocated ctx. `os_ctx_free` leaves the ctx zeroed AGAIN, so a
// freed ctx can be made again without a memset. The one call that does NOT want
// zeros is `os_ctx_remake`: it requires the opposite, an already-MADE ctx (over
// a zeroed one it returns -EINVAL rather than inventing a stack).
//
// ES: SEMÁNTICA DIFERIDA de os_ctx_stack/os_ctx_guard — leer antes de
// consumirlas. Sobre un ctx que todavía NO fue entrado por primera vez, una
// plataforma puede no conocer el rango de su stack: win32 aloca el stack
// dentro de CreateFiberEx y NO lo expone desde afuera (recién se lee desde
// ADENTRO de la fiber, en su primera entrada), así que devuelve lo=NULL /
// size=0. El caller DEBE tolerarlo y diferir lo que dependa del rango
// (GC_add_roots, registro de guards) al primer punto en que el rango exista.
// En POSIX nunca pasa: os_ctx_make hace el mapeo y conoce el rango antes de
// volver. Un size=0 en os_ctx_guard significa "esta plataforma no tiene guard
// region observable" (win32) — no registrar nada, no es un error.
// EN: DEFERRED SEMANTICS of os_ctx_stack/os_ctx_guard — read before consuming
// them. On a ctx not yet entered for the first time a platform may not know
// its stack range: win32 allocates the stack inside CreateFiberEx and does NOT
// expose it from outside (it is only readable from INSIDE the fiber, on its
// first entry), so it returns lo=NULL / size=0. The caller MUST tolerate that
// and defer whatever depends on the range (GC_add_roots, guard registry) to
// the first point where the range exists. On POSIX it never happens:
// os_ctx_make maps the stack and knows the range before returning. A size=0
// from os_ctx_guard means "this platform has no observable guard region"
// (win32) — register nothing; it is not an error.
// ES: `save` de os_ctx_swap puede estar SIN inicializar: se llena al suspender.
// EN: os_ctx_swap's `save` may be uninitialized: it is filled when suspending.

// --- Sockets IPv4 + resolución / IPv4 sockets + resolution (dominio 3, spec §3.3).
// ES: direcciones como blob opaco (>= sockaddr_storage) — el header no puede
// traer tipos de plataforma. Errores 0/-errno; resolución con códigos propios
// (los EAI_* de glibc son negativos y COLISIONAN con -errno) + err_str de
// plataforma para mensajes byte-exactos. win32 (W4): Winsock — WSAStartup
// lazy en la primera llamada, closesocket, ioctlsocket(FIONBIO), WSAPoll,
// WSASend; WSAGetLastError mapeado a errno-space (la familia try_ de E5
// sigue funcionando con los mismos codes).
// EN: addresses as opaque blobs (>= sockaddr_storage) — the header carries no
// platform types. Errors 0/-errno; resolution has its own code space (glibc
// EAI_* values are negative and COLLIDE with -errno) plus a platform err_str
// for byte-exact messages. win32 (W4): Winsock as described above.
typedef struct { uint64_t storage[16]; } os_addr_t;   // 128B
typedef struct { const void* base; size_t len; } os_iovec_t;

#define OS_RES_NOTFOUND (-1001)   // EAI_NONAME / WSAHOST_NOT_FOUND
#define OS_RES_AGAIN    (-1002)   // EAI_AGAIN  / WSATRY_AGAIN
#define OS_RES_OTHER    (-1003)   // cualquier otro fallo de resolución

// n>=1 direcciones IPv4 escritas en out (hasta max), o OS_RES_*; si err_str
// no es NULL, *err_str recibe el mensaje de plataforma (gai_strerror) — solo
// válido hasta la próxima llamada. / n>=1 IPv4 addresses written to out, or
// OS_RES_*; *err_str gets the platform message (valid until the next call).
int     os_addr_resolve4(const char* host, int port, os_addr_t* out, int max,
                         const char** err_str);
// Como resolve4 pero AF_UNSPEC: direcciones v4 Y v6 en el orden que el
// resolver las entrega (RFC 6724) — el caller itera con fallback. / Like
// resolve4 but AF_UNSPEC: v4 AND v6 addresses in resolver order.
int     os_addr_resolve_any(const char* host, int port, os_addr_t* out, int max,
                            const char** err_str);
int     os_addr_from_ip4(os_addr_t* a, const char* ip, int port);  // 0 / -EINVAL (inet_pton != 1)
int     os_addr_is_ip(const char* s);            // 1 si es IPv4 O IPv6 numérica / 1 if numeric v4 or v6
int     os_addr_ip(const os_addr_t* a, char* buf, int buflen);     // inet_ntop; 0 / -errno
int     os_addr_port(const os_addr_t* a);
// getnameinfo; require_name=1 => NI_NAMEREQD (falla si no hay PTR). 0 / OS_RES_*.
int     os_addr_hostname(const os_addr_t* a, char* buf, int buflen, int require_name);

int64_t os_sock_tcp4(void);                       // socket(AF_INET, SOCK_STREAM, 0); fd o -errno
int64_t os_sock_udp4(void);                       // socket(AF_INET, SOCK_DGRAM, 0)
// socket STREAM de la familia de la dirección (v4 o v6) / STREAM socket of
// the address's family. fd o -errno.
int64_t os_sock_stream_for(const os_addr_t* a);
int     os_sock_connect(int64_t fd, const os_addr_t* a);   // 0 / -errno (-EINPROGRESS visible)
int     os_sock_bind(int64_t fd, const os_addr_t* a);
int     os_sock_listen(int64_t fd, int backlog);
int64_t os_sock_accept(int64_t fd);               // fd o -errno
int64_t os_sock_send(int64_t fd, const void* buf, size_t len);   // MSG_NOSIGNAL adentro; n o -errno
int64_t os_sock_sendv(int64_t fd, const os_iovec_t* iov, int n); // posix: writev VERBATIM (sin NOSIGNAL — preexistente); máx 8 iovecs → -EINVAL / max 8 iovecs
int64_t os_sock_recv(int64_t fd, void* buf, size_t len);         // flags 0; n (0=EOF) o -errno
int64_t os_sock_sendto(int64_t fd, const void* buf, size_t len, const os_addr_t* a);
int64_t os_sock_recvfrom(int64_t fd, void* buf, size_t len, os_addr_t* from); // from puede ser NULL
int     os_sock_close(int64_t fd);                // close / closesocket
int     os_sock_shutdown(int64_t fd, int64_t how); // 0=RD, 1=WR, otro=RDWR (contrato medido de net.c)
int     os_sock_peer(int64_t fd, os_addr_t* out);  // getpeername
int     os_sock_set_reuseaddr(int64_t fd);
int     os_sock_set_nodelay(int64_t fd);
int     os_sock_set_timeout(int64_t fd, int64_t seconds); // RCVTIMEO+SNDTIMEO; <=0 desactiva; si el 1ro falla reporta ESE -errno
int     os_sock_set_nonblocking(int64_t fd, int on);      // fcntl O_NONBLOCK / ioctlsocket FIONBIO
int     os_sock_error(int64_t fd);                 // getsockopt SO_ERROR: errno pendiente (POSITIVO) o 0; -errno si el propio getsockopt falla / pending errno (POSITIVE) or 0; -errno if getsockopt itself fails

#define OS_POLLIN  1
#define OS_POLLOUT 2
#define OS_POLLERR 4
#define OS_POLLHUP 8
// Devuelve los revents REALES traducidos (IN/OUT/ERR/HUP; POLLNVAL colapsa en
// OS_POLLERR), sin sintetizar: >0 con cualquier bit seteado, 0 = timeout,
// -errno. UN solo fd — todos los polls medidos de net.c/tls.c son de 1 fd;
// multi-fd es del event loop (inc 4). Nota: un peer que escribe y cierra
// puede entregar OS_POLLIN|OS_POLLHUP en el MISMO wake — los callers que
// distinguen EOF deben chequear IN antes que HUP (contrato de
// nyx_tls_wait_readable).
// EN: returns the REAL translated revents (IN/OUT/ERR/HUP; POLLNVAL collapses
// into OS_POLLERR), no synthesis: >0 with any bit set, 0 = timeout, -errno.
// A SINGLE fd — every poll measured in net.c/tls.c is 1-fd; multi-fd belongs
// to the event loop (inc 4). Note: a peer that writes then closes can deliver
// OS_POLLIN|OS_POLLHUP in the SAME wake — callers that distinguish EOF must
// check IN before HUP (nyx_tls_wait_readable's contract).
int     os_sock_poll1(int64_t fd, int events, int timeout_ms);

// getifaddrs → cb(name, ip, mask) por interfaz IPv4 (loopback incluida);
// devuelve n interfaces o -errno. win32 (W4): GetAdaptersAddresses.
int64_t os_net_ifaces4(void (*cb)(const char* name, const char* ip,
                                  const char* mask, void* ud), void* ud);

// ES: formatea 16 bytes crudos como IPv6 textual (único caller medido: los
// SANs IP de certificados en tls.c — formateo de datos ASN.1, NO I/O de
// sockets). posix: inet_ntop(AF_INET6); win32: igual (ws2tcpip, Vista+).
// EN: formats 16 raw bytes as textual IPv6 (only measured caller: cert IP
// SANs in tls.c — ASN.1 data formatting, NOT socket I/O). 0 / -errno.
int     os_inet_ntop6(const unsigned char* bytes16, char* buf, int buflen);

// --- Procesos / Processes (dominio 5, spec §3.5).
// ES: SOLO lo que los callers internos medidos usan — exec()/exec_code()
// de runtime.c (popen/system). La forma spawn-style completa
// (os_proc_spawn/wait/kill, CreateProcess+pipes) llega en W5 con su
// caller; los builtins posix crudos de process.c (fork/execvp/...) son
// superficie Nyx pineada y NO pasan por la capa (destino Windows:
// win_forbidden_builtin). El caller acumula los chunks en SU memoria
// (GC o no) — esta capa no aloca para el caller.
// EN: ONLY what the measured internal callers use — runtime.c's
// exec()/exec_code() (popen/system). The full spawn-style shape arrives
// in W5 with its caller; process.c's raw posix builtins are pinned Nyx
// surface and bypass the layer (Windows fate: win_forbidden_builtin).
// The caller accumulates chunks in ITS OWN memory — this layer never
// allocates on the caller's behalf.
//
// Ejecuta cmd vía el shell de la plataforma capturando stdout por chunks
// (cb puede ser llamado 0+ veces; binary-safe). stderr NO se captura (va
// a la terminal del proceso). 0 = comando corrió (aunque su exit code sea
// !=0 — para el code usar run_status), -1 = no se pudo lanzar (popen).
// EN: runs cmd via the platform shell, streaming stdout chunks to cb
// (0+ calls; binary-safe). stderr is NOT captured. 0 = the command ran
// (regardless of its exit code), -1 = could not launch (popen failure).
int os_proc_run_capture(const char* cmd,
                        void (*cb)(const void* chunk, size_t len, void* ud),
                        void* ud);
// Ejecuta cmd vía el shell; devuelve el EXIT CODE del comando (decode
// WIFEXITED/WEXITSTATUS — plataforma), o -1 (fallo de system() o muerte
// por señal). EN: runs cmd via the shell; returns the command's exit code
// (platform WIFEXITED decode) or -1 (system() failure or killed by signal).
int64_t os_proc_run_status(const char* cmd);

// ES: variable de entorno del PROPIO proceso, con overwrite (único caller
// medido: nyx_setenv en runtime.c). posix: setenv(name, value, 1); win32:
// _putenv_s (la CRT de MSVC no tiene setenv; _putenv_s SÍ sobreescribe y
// acepta value="" — que en win32 BORRA la variable, diferencia semántica
// documentada contra posix, donde "" es una variable vacía existente).
// La LECTURA (getenv) no pasa por la capa: es C estándar, existe idéntica en
// las tres plataformas.
// EN: own-process environment variable, overwriting (sole measured caller:
// runtime.c's nyx_setenv). posix: setenv(...,1); win32: _putenv_s (the MSVC
// CRT lacks setenv). NOTE: on win32 value="" DELETES the variable, whereas
// posix keeps it as an existing empty one — documented divergence. Reading
// (getenv) stays out of the layer: it is standard C on all three platforms.
int os_env_set(const char* name, const char* value); // 0 / -errno

// --- Carga dinámica / Dynamic loading (dominio 6, spec §3.6).
// ES: los 3 adapters (zlib/sqlite/llama) migran acá. Los NOMBRES por
// plataforma son responsabilidad del CALLER (cada adapter tiene su cadena
// de fallback; W5/W6 le suman los .dll). global=0 mantiene la semántica
// RTLD_LOCAL de la que compress.c DEPENDE (dlsym por handle esquiva la
// colisión executable-wide de inflate); global=1 = RTLD_GLOBAL (sqlite y
// llama lo usan). Siempre lazy. win32 (W5): LoadLibraryA/GetProcAddress/
// FreeLibrary; os_dl_error formatea GetLastError.
// EN: the 3 adapters (zlib/sqlite/llama) migrate here. Per-platform NAMES
// are the CALLER's job (each adapter has its fallback chain; W5/W6 append
// the .dll names). global=0 keeps the RTLD_LOCAL semantics compress.c
// DEPENDS on; global=1 = RTLD_GLOBAL (sqlite, llama). Always lazy.
typedef void* os_dl_t;
os_dl_t     os_dl_open(const char* name, int global);  // NULL si falla / NULL on failure
void*       os_dl_sym(os_dl_t h, const char* name);    // NULL si el símbolo no está
// Mensaje de plataforma del ÚLTIMO fallo de open/sym (dlerror /
// FormatMessage) — válido hasta la próxima llamada dl. Puede ser NULL.
const char* os_dl_error(void);
// Sin caller posix hoy (los handles de los adapters viven para siempre);
// W5 lo usa en paths de error de carga. / No posix caller today; W5 uses
// it on load-error paths. 0 o -errno.
int         os_dl_close(os_dl_t h);

// --- os_ev: sección FIRMADA por el spike (inc 0, tests/spikes/w1-evloop) — implementada en
//     os_posix.c (inc 4), adaptada 1:1 del spike validado (20/20 corridas + 3/3 TSan, más 4
//     fixes de review). Incluye la precondición de O_NONBLOCK a cargo del CALLER.
// EN: os_ev section SIGNED by the spike (inc 0, tests/spikes/w1-evloop) — implemented in
//     os_posix.c (inc 4), adapted 1:1 from the validated spike (20/20 runs + 3/3 TSan, plus
//     4 review fixes). Includes the O_NONBLOCK precondition, owned by the CALLER.

// === os_ev — eventos de E/S, contrato completion-style (spec W1 §3.4) ===
typedef struct os_ev_loop os_ev_loop_t;          // opaco, heap
typedef int os_sock_t;                           // fd en posix; SOCKET en win32 (W4 lo vuelve opaco)
// cb(result, ud): result = bytes transferidos (>=0) o -errno. Para timers y
// wake, result = 0. El cb corre en el thread que llama a os_ev_run_once.
typedef void (*os_ev_cb)(int64_t result, void* ud);

os_ev_loop_t* os_ev_loop_new(void);
// CONTRATO: descarta toda op pendiente EN SILENCIO -- ningún cb corre para
// los reads/writes/timers que quedaban registrados. NO es thread-safe
// contra un os_ev_run_once en vuelo sobre el mismo loop: el caller debe
// detener el poller (dejar de llamar run_once desde cualquier thread) ANTES
// de liberar, o el free puede correr en paralelo con un epoll_wait/dispatch
// en curso.
// EN: CONTRACT: silently discards every pending op -- no cb runs for the
// reads/writes/timers still registered. NOT thread-safe against an
// os_ev_run_once in flight on the same loop: the caller must stop the
// poller (stop calling run_once from any thread) BEFORE freeing, or the
// free can race an epoll_wait/dispatch already in progress.
void  os_ev_loop_free(os_ev_loop_t* l);
// Dispara cb una vez tras ms milisegundos (deadline monotónico). Devuelve id>=0 o -errno.
int   os_ev_timer(os_ev_loop_t* l, int64_t ms, os_ev_cb cb, void* ud);
// Despertador cross-thread: hace retornar a os_ev_run_once aunque no haya eventos. Thread-safe.
int   os_ev_wake(os_ev_loop_t* l);
// PRECONDICIÓN (dura, no verificada en runtime): sock DEBE estar en modo no
// bloqueante (O_NONBLOCK) ANTES de llamar a os_ev_read/os_ev_write. Esta capa
// NUNCA lo setea como efecto de lado -- forzarlo rompería a cualquiera que
// comparta el fd en modo bloqueante (p.ej. un caller que hace un read()/
// write() directo sobre el mismo fd fuera de os_ev, como el lado cliente del
// spike). Es responsabilidad exclusiva de quien llama.
// OWNERSHIP (read y write): el loop guarda punteros a buf/ud en memoria
// calloc INVISIBLE para Boehm (el struct del slot no es un objeto GC) --
// el caller debe mantener buf y ud VIVOS Y ALCANZABLES POR EL GC hasta que
// el cb dispare (una referencia en su propio frame/estructura GC-visible),
// o registrar una raíz explícita. Si el caller los deja sin referencias
// GC-visibles, el colector puede recolectarlos mientras la op sigue
// pendiente -- use-after-free silencioso, no un crash inmediato.
// EN: OWNERSHIP (read and write): the loop stores raw pointers to buf/ud in
// calloc'd memory INVISIBLE to Boehm (the slot struct is not a GC object) --
// the caller must keep buf and ud ALIVE AND GC-REACHABLE until the cb fires
// (a reference in the caller's own frame/GC-visible structure), or register
// an explicit GC root. If the caller drops all GC-visible references, the
// collector can reclaim them while the op is still pending -- a silent
// use-after-free, not an immediate crash.
// Lee hasta len bytes de sock y entrega el resultado por cb (one-shot). No bloquea.
int   os_ev_read(os_ev_loop_t* l, os_sock_t sock, void* buf, int64_t len, os_ev_cb cb, void* ud);
// Mismo contrato de no bloqueo; a diferencia de read, os_ev_write completa
// SIEMPRE el buffer entero (result == len) o entrega error -- puede tomar
// varios despertares de EPOLLOUT (un solo write() real por despertar) antes
// de despachar el cb una única vez.
int   os_ev_write(os_ev_loop_t* l, os_sock_t sock, const void* buf, int64_t len, os_ev_cb cb, void* ud);
// Cancela toda operación pendiente sobre sock (sin invocar cbs). Necesario antes de cerrar el socket.
// CONTRATO: cancel no distingue si había op pendiente o no -- devuelve 0 en
// ambos casos (no-op silencioso si no había nada que cancelar). Además, los
// cbs que YA se resolvieron bajo el lock en la vuelta de os_ev_run_once EN
// CURSO (snapshot tomado antes de que este cancel corriera) se invocan
// igual -- cancel solo evita despachos FUTUROS. ud y los buffers de esa
// operación deben seguir vivos hasta el RETORNO de os_ev_run_once, no hasta
// el momento del cancel.
// EN: CONTRACT: cancel does not distinguish whether an op was pending or
// not -- it returns 0 either way (silent no-op if there was nothing to
// cancel). Also, cbs that were ALREADY resolved under the lock in the
// CURRENT os_ev_run_once round (snapshot taken before this cancel ran) are
// invoked anyway -- cancel only prevents FUTURE dispatches. ud and that
// operation's buffers must stay alive until os_ev_run_once RETURNS, not
// until the moment of the cancel call.
int   os_ev_cancel(os_ev_loop_t* l, os_sock_t sock);
// Espera hasta timeout_ms (-1 = infinito) y despacha los cbs listos. Devuelve cbs despachados (>=0) o -errno.
// CONTRATO: puede devolver 0 sin haber despachado nada aunque timeout_ms
// sea -1 (p.ej. epoll_wait interrumpido por EINTR, tratado como una vuelta
// vacía) -- los callers que esperan un evento puntual deben loopear, no
// asumir que -1 implica "bloqueó hasta que algo pasó".
// EN: CONTRACT: may return 0 having dispatched nothing even with
// timeout_ms == -1 (e.g. epoll_wait interrupted by EINTR, treated as an
// empty round) -- callers waiting on a specific event must loop, not
// assume -1 means "blocked until something happened".
int   os_ev_run_once(os_ev_loop_t* l, int timeout_ms);

// --- Señales / Signals (dominio 7, spec §3.7 — CIERRA W1).
// ES: registro crudo de handler de señal. El handler corre en contexto de
// señal (solo async-signal-safe). posix: signal(2); win32 (W5): las señales
// de consola van por SetConsoleCtrlHandler y se traducen a estos números.
// Constantes con valores POSIX/Linux (2/15 universales; 28 Linux/BSD) — la
// impl win32 traduce. Los consumers de ALTO nivel (self-pipe S2 de
// runtime.c, shutdown de persist.c) conservan su lógica y solo registran
// por acá.
// EN: raw signal-handler registration. The handler runs in signal context
// (async-signal-safe only). posix: signal(2); win32 (W5): console signals
// arrive via SetConsoleCtrlHandler translated to these numbers.
#define OS_SIGINT   2
#define OS_SIGTERM  15
#define OS_SIGWINCH 28
// ES: señales SÍNCRONAS reservadas para el fault handler de guard-pages
// (scheduler.c, os_fault_guard_install) — un caller NUNCA debe registrarlas
// vía os_sig_install (un fault no es diferible). Valores POSIX/Linux
// (uniformes en x86_64/aarch64/Linux, signal(7)); win32/macOS traducen en
// su propia impl — OJO macOS: SIGBUS=10 allá, no 7 (7 es SIGEMT en macOS;
// hardcodear el valor Linux acá reabriría el agujero de F15 en esa
// plataforma). Único caller hoy: runtime.c's nyx_signal_is_sync
// (comparación pura, nunca registro).
// EN: SYNCHRONOUS signals reserved for the guard-page fault handler
// (scheduler.c, os_fault_guard_install) — a caller must NEVER register
// these via os_sig_install (a fault isn't deferrable). POSIX/Linux values
// (uniform across x86_64/aarch64/Linux, signal(7)); win32/macOS translate
// in their own impl — WATCH OUT macOS: SIGBUS=10 there, not 7 (7 is
// SIGEMT on macOS; hardcoding the Linux value here would reopen F15's
// hole on that platform). Only caller today: runtime.c's
// nyx_signal_is_sync (pure comparison, never registration).
#define OS_SIGILL   4
#define OS_SIGBUS   7
#define OS_SIGFPE   8
#define OS_SIGSEGV  11
typedef void (*os_sig_fn)(int signum);
// signum fuera del rango que la plataforma soporta -> -EINVAL (la
// plataforma es quien valida, esta capa no reimplementa el rango).
// EN: signum outside the range the platform supports -> -EINVAL (the
// platform validates the range, this layer doesn't reimplement it).
int os_sig_install(int signum, os_sig_fn fn);          // 0 / -errno
// sigaction con flags exactos del caller que lo necesite (persist usa
// sigaction con sa_mask vacía y flags 0 — semántica idéntica a signal(2)
// moderna en Linux; se unifica en os_sig_install, ver os_posix.c).
// ES: variante SIN SA_RESTART -- signal() (usada por os_sig_install) agrega
// SA_RESTART + se auto-bloquea en su propio sa_mask (semántica BSD de
// glibc moderna); esta variante usa sigaction con sa_mask VACÍA y flags 0,
// la semántica EXACTA que SIGWINCH (raw-mode) y el shutdown de persist.c
// tenían antes de existir esta capa. Usar cuando el caller necesita que un
// syscall bloqueante (poll/read) SÍ se interrumpa con EINTR visible al
// recibir la señal -- os_sig_install (con SA_RESTART) hace que esos
// syscalls se reinicien solos y el caller nunca ve el EINTR.
// EN: variant WITHOUT SA_RESTART -- signal() (used by os_sig_install) adds
// SA_RESTART + self-masks in its own sa_mask (modern glibc's BSD
// semantics); this variant uses sigaction with an EMPTY sa_mask and flags
// 0, the EXACT semantics SIGWINCH (raw-mode) and persist.c's shutdown had
// before this layer existed. Use when the caller needs a blocking syscall
// (poll/read) to actually be interrupted with a visible EINTR on signal
// delivery -- os_sig_install (with SA_RESTART) makes those syscalls
// auto-restart and the caller never observes the EINTR. 0 / -errno.
int os_sig_install_no_restart(int signum, os_sig_fn fn);

// ES: restaurar la disposición default / ignorar la señal (SIG_DFL/SIG_IGN
// de <signal.h>). Separadas de os_sig_install porque SIG_DFL/SIG_IGN son
// sentinelas de plataforma, no funciones invocables — no caben en el tipo
// os_sig_fn. Únicos callers: nyx_signal_reset/nyx_signal_ignore de
// runtime.c (builtins Nyx signal_reset()/signal_ignore()). 0 / -errno.
// EN: restore the default disposition / ignore the signal (<signal.h>'s
// SIG_DFL/SIG_IGN). Kept apart from os_sig_install because SIG_DFL/SIG_IGN
// are platform sentinels, not callable functions — they don't fit the
// os_sig_fn type. Only callers: runtime.c's nyx_signal_reset/
// nyx_signal_ignore (Nyx builtins signal_reset()/signal_ignore()). 0 / -errno.
int os_sig_reset(int signum);
int os_sig_ignore(int signum);
// ES: 1 si la disposición actual de signum es la default (SIG_DFL), 0 si no,
// -errno si la consulta falla. NO modifica nada (sigaction con act=NULL).
// Único caller: nyx_raw_mode_enter (runtime.c) — instala su SIGWINCH no-op
// SOLO si nadie más (ni un signal_handle() del programa) ya se adueñó de la
// señal, para no pisar un handler de usuario.
// EN: 1 if signum's current disposition is the default (SIG_DFL), 0 if not,
// -errno if the query fails. Does NOT modify anything (sigaction with
// act=NULL). Only caller: nyx_raw_mode_enter (runtime.c) — installs its
// SIGWINCH no-op ONLY if nobody else (not even the program's own
// signal_handle()) already claimed the signal, so it never clobbers a
// user handler.
int os_sig_is_default(int signum);

// --- Filesystem / Sistema de archivos (dominio fs, W2 fase A).
// ES: SOLO lo que los 3 callers medidos de runtime/file-io.c consumen
// (nyx_file_exists/nyx_mkdir/nyx_readdir) -- YAGNI real, no de forma: el
// contrato original barajado para esta capa traía st_size/S_ISDIR/d_type,
// pero NINGÚN caller actual los toca (nyx_file_exists solo mira si stat()
// tuvo éxito, nunca lee buffer.st_size/st_mode; el loop opendir/readdir/
// closedir de nyx_readdir solo junta entry->d_name, nunca entry->d_type).
// Se agregan campos/parámetros el día que un caller real los necesite, no
// antes. mkdir/listdir tampoco filtran nada especial que el viejo código no
// filtrara ya: "." y ".." se descartan en la capa (mismo `strcmp` que tenía
// el loop de file-io.c), no hay delta de comportamiento ahí.
// win32 (Task 3, W2 fase B): GetFileAttributesExA (exists=0 si
// GetLastError() es ERROR_FILE_NOT_FOUND/ERROR_PATH_NOT_FOUND, -errno
// mapeado para cualquier otro fallo) / CreateDirectoryA (EEXIST <-
// ERROR_ALREADY_EXISTS) / FindFirstFileA+FindNextFileA+FindClose — DOS
// GOTCHAS del review de Task 1 (refinados por el de Task 2):
// (1) el patrón de búsqueda es `path + "\\*"` (con el wildcard; el path
// pelado matchea el directorio MISMO, no sus hijos);
// (2) un FindFirstFileA fallido NO es «0 entradas»: mapear GetLastError()
// — ERROR_PATH_NOT_FOUND/ERROR_FILE_NOT_FOUND → -ENOENT,
// ERROR_ACCESS_DENIED → -EACCES, ERROR_DIRECTORY → -ENOTDIR — como el
// contrato «-errno si no se pudo abrir» de abajo. (Un dir NORMAL vacío
// devuelve "."/".." — pero las RAÍCES de volumen (C:\*) no las tienen, así
// que no asumir imposibilidad: el mapeo por GetLastError cubre todo.)
// Saltea "."/".." como el loop de arriba. Paths UTF-8 (win32 convierte a
// wide internamente -- por ahora ANSI/CP crudo, cutover a wide es W6+).
// EN: TWO gotchas (Task 1 review, refined by Task 2's): (1) the search
// pattern is `path + "\\*"` (a bare path matches the directory ITSELF);
// (2) a failed FindFirstFileA is NOT "0 entries" — map GetLastError():
// PATH/FILE_NOT_FOUND → -ENOENT, ACCESS_DENIED → -EACCES, DIRECTORY →
// -ENOTDIR (volume roots like C:\* carry no "."/"..", so never assume
// their presence — the GetLastError mapping covers every case).
// EN: ONLY what file-io.c's 3 measured callers consume (nyx_file_exists/
// nyx_mkdir/nyx_readdir) -- real YAGNI, not a formality: this layer's
// originally sketched contract carried st_size/S_ISDIR/d_type, but NO
// current caller touches them (nyx_file_exists only checks whether stat()
// succeeded, never reads buffer.st_size/st_mode; nyx_readdir's opendir/
// readdir/closedir loop only collects entry->d_name, never entry->d_type).
// Fields/params get added the day a real caller needs them, not before.
// mkdir/listdir don't filter anything the old code didn't already filter:
// "." and ".." are dropped in the layer (same strcmp file-io.c's loop had),
// no behavior delta there. win32 (Task 3, W2 phase B): as described above.
// UTF-8 paths (win32 wide conversion internal -- ANSI/raw CP for now,
// documented, wide cutover is W6+).
typedef struct { int exists; } os_fs_info_t;
// 0 con out->exists=0/1 (incluye el caso ENOENT: "no existe" NO es un error
// de esta capa); -errno para un fallo real (EACCES, ENOTDIR, etc).
// EN: 0 with out->exists=0/1 (ENOENT included: "doesn't exist" is NOT an
// error at this layer); -errno for a real failure (EACCES, ENOTDIR, etc).
int os_fs_stat(const char* path, os_fs_info_t* out);
int os_fs_mkdir(const char* path);   // 0 / -errno (EEXIST pasa como -EEXIST)
// cb(name, ud) por entrada, SIN "." ni ".." -- n entradas (>=0) o -errno si
// no se pudo abrir el directorio (opendir/FindFirstFileA).
// EN: cb(name, ud) per entry, WITHOUT "." or ".." -- n entries (>=0) or
// -errno if the directory couldn't be opened.
int64_t os_fs_listdir(const char* path,
                      void (*cb)(const char* name, void* ud),
                      void* ud);

// Fault-guard de guard-pages (scheduler): instala el handler de
// SEGV/BUS de PROCESO con SA_SIGINFO. `on_fault(addr)` corre EN CONTEXTO
// DE SEÑAL sobre la pila alterna del thread (solo async-signal-safe);
// devuelve 1 si manejó el fault (no retorna normalmente: el caller hace
// _exit), 0 si NO es suyo → la capa ENCADENA a la disposición que había
// instalada antes; si no había ninguna, restaura la default y re-raisea
// (un SEGV genuino sigue siendo un SEGV).
// El encadenado NO es un detalle: SEGV/BUS pueden tener otro dueño legítimo
// cuyo mecanismo depende de recibirlos. En Linux, Boehm con
// GC_enable_incremental() usa SIGSEGV para sus dirty bits por mprotect;
// descartar su handler acá mataba el proceso en el primer write fault del GC
// (W3 paso 0 — ver os_posix.c y tests/runtime-unit/test_os_fault_guard.c).
// EN: process-wide SEGV/BUS handler with SA_SIGINFO. on_fault(addr) runs
// IN SIGNAL CONTEXT on the thread's alternate stack; return 1 = handled,
// 0 = not ours → the layer CHAINS to whatever disposition was installed
// before; with no previous owner it restores the default and re-raises.
// Chaining is NOT incidental: SEGV/BUS may have another legitimate owner
// whose mechanism depends on receiving them. On Linux, Boehm with
// GC_enable_incremental() uses SIGSEGV for its mprotect-based dirty bits;
// dropping its handler here killed the process on the GC's first write fault
// (W3 step 0 — see os_posix.c and tests/runtime-unit/test_os_fault_guard.c).
int  os_fault_guard_install(int (*on_fault)(void* addr));
// Pila alterna del thread llamante (idempotente por thread). 0 / -errno.
int  os_fault_guard_thread_init(void);

// --- Terminal + fd crudos / Raw terminal + raw fds (dominio term+fd, W2 fase A).
// ES: SOLO lo que runtime.c consume medido (Paso Cero): el bloque de raw mode
// del editor interactivo (termios + winsize) y el self-pipe de señales +
// nyx_read_byte (pipe/read/write/close). os_term_raw_enter/exit y
// os_term_winsize NO toman fd: SIEMPRE stdin/stdout respectivamente, igual
// que el código inline que reemplazan -- el estado previo (termios guardado +
// flag "estoy en raw mode") vive DENTRO de la impl (static en os_posix.c),
// no en el caller, porque exit() no recibe ningún handle para reconstruirlo.
// win32 (Task 3, W2 fase B): GetConsoleMode/SetConsoleMode (raw = apagar
// ENABLE_ECHO_INPUT|ENABLE_LINE_INPUT|ENABLE_PROCESSED_INPUT sobre el input
// handle), GetConsoleScreenBufferInfo (winsize <- srWindow.Bottom-Top+1 /
// Right-Left+1 del output handle), _isatty (CRT, sobre _get_osfhandle si el
// fd viene de la capa; stdin/stdout ya son fds CRT válidos acá).
// EN: ONLY what runtime.c's measured use (Step Zero) consumes: the
// interactive editor's raw-mode block (termios + winsize) and the signal
// self-pipe + nyx_read_byte (pipe/read/write/close). os_term_raw_enter/exit
// and os_term_winsize take NO fd: ALWAYS stdin/stdout respectively, same as
// the inline code they replace -- the previous state (saved termios + "am I
// in raw mode" flag) lives INSIDE the impl (static in os_posix.c), not in
// the caller, since exit() gets no handle to reconstruct it from. win32
// (Task 3, W2 phase B): as described above.
int os_term_isatty(int fd);                 // 1/0 (predicado -- isatty() ya devuelve esto crudo, sin negar)
int os_term_raw_enter(void);                // guarda termios previo + entra en raw sobre stdin; 0 / -errno (-ENOTTY si stdin no es tty)
int os_term_raw_exit(void);                 // restaura termios previo; 0 (no-op si no estaba activo, NO es error) / -errno
int os_term_winsize(int* rows, int* cols);  // ioctl TIOCGWINSZ sobre stdout; 0 / -errno

// ES: fd crudos -- self-pipe de señales (runtime.c nyx_signal_handle) +
// nyx_read_byte (editor en raw mode). posix: pipe/read/write/close; win32:
// _pipe/_read/_write/_close (CRT -- semántica idéntica salvo el tamaño de
// buffer del pipe, que win32 fija en _pipe()). Firmas int64 estilo capa,
// mismo patrón que os_sock_*.
// EN: raw fds -- signal self-pipe (runtime.c's nyx_signal_handle) +
// nyx_read_byte (editor raw mode). posix: pipe/read/write/close; win32:
// _pipe/_read/_write/_close (CRT -- identical semantics except the pipe
// buffer size, which win32 fixes via _pipe()'s own param). int64 signatures,
// same style as os_sock_*.
int     os_fd_pipe(int fds[2]);                          // 0 / -errno (CLOEXEC en ambos extremos -- ver os_posix.c)
int64_t os_fd_read(int fd, void* buf, int64_t n);        // n leidos (0 = EOF) / -errno
// PASSTHROUGH puro de write(2): el trampolín de señales (nyx_signal_trampoline,
// runtime.c) lo llama EN CONTEXTO DE SEÑAL (solo async-signal-safe). La impl
// posix NO agrega locks, allocs ni ninguna otra syscall sobre el write(2)
// crudo -- comparar el resultado y leer errno son las únicas operaciones
// extra, ambas async-signal-safe.
// EN: pure PASSTHROUGH of write(2): the signal trampoline
// (nyx_signal_trampoline, runtime.c) calls it IN SIGNAL CONTEXT
// (async-signal-safe only). The posix impl adds NO locks, allocation, or any
// other syscall over the raw write(2) -- comparing the result and reading
// errno are the only extra work, both async-signal-safe.
int64_t os_fd_write(int fd, const void* buf, int64_t n); // n escritos / -errno
int     os_fd_close(int fd);                             // 0 / -errno

// ES: CARRY de Task 1 (file-io.c) -- nyx_fsync/nyx_fdatasync migran acá,
// unistd.h muere de file-io.c. win32: _commit para AMBAS (la CRT de Windows
// no distingue "solo datos" de fdatasync -- no hay equivalente separado).
// EN: Task 1 carry (file-io.c) -- nyx_fsync/nyx_fdatasync migrate here,
// file-io.c's unistd.h dies. win32: _commit for BOTH (the Windows CRT has no
// data-only fdatasync equivalent).
int os_fd_sync(int fd);       // 0 / -errno
int os_fd_datasync(int fd);   // 0 / -errno

#endif
