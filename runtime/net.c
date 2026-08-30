// ============================================
// NET.C - Networking Runtime for Nyx v5.0
// ============================================
//
// W1 inc 3 (Task 2, 2026-08-24): migrado ENTERO a las primitivas
// os_sock_*/os_addr_* de runtime/os/nyx_os.h (Task 1, commit 1420ecd) --
// CERO cambios de comportamiento observable. Este archivo ya NO incluye
// <sys/socket.h>/<netinet/*.h>/<arpa/inet.h>/<netdb.h>/<fcntl.h>/<poll.h>/
// <ifaddrs.h>/<sys/uio.h>: cada llamada a socket()/connect()/bind()/
// listen()/accept()/send()/recv()/sendto()/recvfrom()/close()/shutdown()/
// setsockopt()/getpeername()/getaddrinfo()/getnameinfo()/inet_pton()/
// inet_ntop()/poll()/fcntl()/getifaddrs()/writev() pasa por la capa
// os_sock_*/os_addr_* (contrato en runtime/os/nyx_os.h).

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <gc.h>
#include "net.h"
#include "os/nyx_os.h"

// Tamaños de buffer heredados de <netinet/in.h>/<netdb.h> -- esas headers
// salen del include set en esta migración (el contrato os_addr_* no impone
// tamaño de buffer, lo define el caller). Valores IDÉNTICOS a los de esas
// headers en este target (glibc: INET_ADDRSTRLEN=16, NI_MAXHOST=1025) --
// preservan el tamaño exacto de los buffers que ya usaba este archivo.
#define NYX_NET_IP_STRLEN 16
#define NYX_NET_MAXHOST   1025

// ===== Per-fd read buffer (transparent buffering for tcp_read_line) =====

#define NYX_NET_BUF_SIZE 8192
#define NYX_MAX_CONN_BUFS 4096

typedef struct {
    char buf[NYX_NET_BUF_SIZE];
    int pos;    // current read position
    int len;    // valid bytes in buf
} nyx_conn_buf_t;

static nyx_conn_buf_t conn_bufs[NYX_MAX_CONN_BUFS];
static int conn_buf_active[NYX_MAX_CONN_BUFS];

static nyx_conn_buf_t* get_conn_buf(int fd) {
    if (fd < 0 || fd >= NYX_MAX_CONN_BUFS) return NULL;
    if (!conn_buf_active[fd]) {
        conn_bufs[fd].pos = 0;
        conn_bufs[fd].len = 0;
        conn_buf_active[fd] = 1;
    }
    return &conn_bufs[fd];
}

static void reset_conn_buf(int fd) {
    if (fd >= 0 && fd < NYX_MAX_CONN_BUFS) {
        conn_buf_active[fd] = 0;
    }
}

// ===== TCP =====

int64_t nyx_tcp_listen(const char* host, int64_t port) {
    int64_t fd = os_sock_tcp4();
    if (fd < 0) return -1;

    os_sock_set_reuseaddr(fd);

    os_addr_t addr;
    if (host && strlen(host) > 0) {
        // Mismo comportamiento que la centinela vieja: el retorno de la
        // resolución de IP NO se chequea acá (a diferencia de los *_result,
        // ver abajo) -- un host no-numérico deja `addr` en el estado que
        // dejó os_addr_from_ip4 al fallar temprano (family/port seteados,
        // dirección en 0 por el memset interno), mismo bind mudo a
        // INADDR_ANY que ya tenía esta centinela.
        os_addr_from_ip4(&addr, host, (int)port);
    } else {
        os_addr_from_ip4(&addr, "0.0.0.0", (int)port);
    }

    int rc = os_sock_bind(fd, &addr);
    if (rc < 0) {
        /* Friction 2026-08-01: un bind fallido era MUDO — http_serve devolvía
         * -1, el ejemplo canónico descartaba el retorno, y el programa
         * "arrancaba" con exit 0 sin servidor (el usuario debuggeó contra el
         * proceso ajeno que ocupaba su puerto). El retorno -1 se mantiene
         * (ABI); el ruido va a stderr con puerto y causa. */
        int bind_errno = -rc;
        fprintf(stderr, "nyx: tcp_listen: cannot bind port %lld: %s\n",
                (long long)port, strerror(bind_errno));
        os_sock_close(fd);
        return -1;
    }

    rc = os_sock_listen(fd, 128);
    if (rc < 0) {
        int listen_errno = -rc;
        fprintf(stderr, "nyx: tcp_listen: listen failed on port %lld: %s\n",
                (long long)port, strerror(listen_errno));
        os_sock_close(fd);
        return -1;
    }

    return fd;
}

int64_t nyx_tcp_accept(int64_t listen_fd) {
    int64_t fd = os_sock_accept(listen_fd);
    if (fd < 0) return -1; // la centinela vieja siempre devolvía -1 (accept()
                            // crudo nunca da -errno) -- se preserva ese valor
                            // exacto, os_sock_accept da -errno internamente.
    os_sock_set_nodelay(fd);
    return fd;
}

nyx_string* nyx_getpeername(int64_t fd) {
    os_addr_t addr;
    if (os_sock_peer(fd, &addr) < 0) {
        return nyx_string_from_cstr("unknown");
    }
    char ip_buf[NYX_NET_IP_STRLEN];
    os_addr_ip(&addr, ip_buf, sizeof(ip_buf));
    return nyx_string_from_cstr(ip_buf);
}

int64_t nyx_tcp_connect(const char* host, int64_t port) {
    if (!host) return -1;

    os_addr_t addr[1];
    int n = os_addr_resolve4(host, (int)port, addr, 1, NULL);
    if (n < 1) return -1;

    int64_t fd = os_sock_tcp4();
    if (fd < 0) return -1;

    // Set non-blocking for connect with timeout
    os_sock_set_nonblocking(fd, 1);

    int ret = os_sock_connect(fd, &addr[0]);
    if (ret < 0) {
        if (ret != -EINPROGRESS) {
            os_sock_close(fd);
            return -1;
        }
        // Wait up to 3 seconds for connection
        int pret = os_sock_poll1(fd, OS_POLLOUT, 3000);
        if (pret <= 0) {
            os_sock_close(fd);
            return -1;
        }
        // Check for connection error
        int err = os_sock_error(fd);
        if (err != 0) {
            os_sock_close(fd);
            return -1;
        }
    }

    // Restore blocking mode
    os_sock_set_nonblocking(fd, 0);

    return fd;
}

// Aplica SO_RCVTIMEO/SO_SNDTIMEO (en segundos) a un socket cliente. Evita que un
// host lento cuelgue tcp_read/tcp_write indefinidamente. seconds<=0 lo DESACTIVA
// (bloqueo indefinido, el default del SO). Devuelve 0 en éxito, -1 en error.
int64_t nyx_tcp_set_timeout(int64_t fd, int64_t seconds) {
    if (fd < 0) return -1;
    int rc = os_sock_set_timeout(fd, seconds);
    return rc == 0 ? 0 : -1;
}

nyx_string* nyx_tcp_read(int64_t fd, int64_t max_bytes) {
    if (max_bytes <= 0) max_bytes = 4096;
    char* out = (char*)GC_malloc_atomic(max_bytes + 1);
    if (!out) return nyx_string_from_cstr("");
    int64_t total = 0;

    // Drain connection buffer first (if any buffered data from read_line)
    nyx_conn_buf_t* cb = (fd >= 0 && fd < NYX_MAX_CONN_BUFS && conn_buf_active[(int)fd])
                         ? &conn_bufs[(int)fd] : NULL;
    if (cb && cb->pos < cb->len) {
        int avail = cb->len - cb->pos;
        int64_t to_copy = (max_bytes < avail) ? max_bytes : avail;
        memcpy(out, cb->buf + cb->pos, to_copy);
        cb->pos += (int)to_copy;
        total = to_copy;
    }

    // Read remaining from socket
    while (total < max_bytes) {
        int64_t n = os_sock_recv(fd, out + total, max_bytes - total);
        if (n <= 0) break;
        total += n;
    }

    if (total == 0) return nyx_string_from_cstr("");
    out[total] = '\0';
    return nyx_string_from_ptr(out, (size_t)total);
}

// Partial read: retorna tras el PRIMER recv() (los datos disponibles ahora), sin
// bloquear hasta llenar max_bytes. Para relays de túnel (WebSocket/streaming) donde
// bloquear-hasta-lleno estanca el tráfico interactivo. Drena el buffer de conexión
// primero si hay. Devuelve "" en EOF/error.
nyx_string* nyx_tcp_read_partial(int64_t fd, int64_t max_bytes) {
    if (max_bytes <= 0) max_bytes = 4096;
    char* out = (char*)GC_malloc_atomic(max_bytes + 1);
    if (!out) return nyx_string_from_cstr("");
    int64_t total = 0;

    // Drenar buffer de conexión (datos bufferizados por read_line)
    nyx_conn_buf_t* cb = (fd >= 0 && fd < NYX_MAX_CONN_BUFS && conn_buf_active[(int)fd])
                         ? &conn_bufs[(int)fd] : NULL;
    if (cb && cb->pos < cb->len) {
        int avail = cb->len - cb->pos;
        int64_t to_copy = (max_bytes < avail) ? max_bytes : avail;
        memcpy(out, cb->buf + cb->pos, to_copy);
        cb->pos += (int)to_copy;
        total = to_copy;
    }

    // Si el buffer no dio nada, UN solo recv (retorna con lo que haya llegado)
    if (total == 0) {
        int64_t n = os_sock_recv(fd, out, max_bytes);
        if (n > 0) total = n;
    }

    if (total == 0) return nyx_string_from_cstr("");
    out[total] = '\0';
    return nyx_string_from_ptr(out, (size_t)total);
}

// Half/full close de un socket. A diferencia de nyx_tcp_close (que solo hace close()),
// llama shutdown() → un recv() bloqueado en OTRO thread se despierta (EOF). Para
// desarmar la dirección opuesta de un túnel bidireccional. how: 0=RD, 1=WR, 2=RDWR.
int64_t nyx_tcp_shutdown(int64_t fd, int64_t how) {
    // os_sock_shutdown mapea how con el mismo contrato que esta centinela ya
    // tenía (0=RD, 1=WR, cualquier otro valor -> RDWR) -- ver nyx_os.h.
    int rc = os_sock_shutdown(fd, how);
    // shutdown() crudo siempre da -1 en error (nunca -errno) -- la centinela
    // vieja reenviaba ese valor tal cual; se preserva el -1 exacto.
    return rc < 0 ? -1 : (int64_t)rc;
}

nyx_string* nyx_tcp_read_line(int64_t fd) {
    nyx_conn_buf_t* cb = get_conn_buf((int)fd);

    // Fallback to unbuffered if fd too large
    if (!cb) {
        char line[4096];
        int lpos = 0;
        char c;
        while (lpos < 4095) {
            int64_t n = os_sock_recv(fd, &c, 1);
            if (n <= 0) break;
            if (c == '\n') break;
            if (c != '\r') line[lpos++] = c;
        }
        line[lpos] = '\0';
        return nyx_string_from_cstr(line);
    }

    // Buffered readline — typically 1 recv() call serves many lines
    char line[4096];
    int lpos = 0;

    while (lpos < 4095) {
        // Refill buffer if exhausted
        if (cb->pos >= cb->len) {
            int64_t n = os_sock_recv(fd, cb->buf, NYX_NET_BUF_SIZE);
            if (n <= 0) break;
            cb->pos = 0;
            cb->len = (int)n;
        }

        char c = cb->buf[cb->pos++];
        if (c == '\n') break;
        if (c != '\r') {
            line[lpos++] = c;
        }
    }
    line[lpos] = '\0';
    return nyx_string_from_cstr(line);
}

int64_t nyx_tcp_write(int64_t fd, nyx_string* data) {
    if (!data || !data->data || data->length == 0) return 0;
    size_t total = 0;
    size_t len = data->length;
    const char* buf = data->data;
    while (total < len) {
        int64_t sent = os_sock_send(fd, buf + total, len - total); // MSG_NOSIGNAL adentro
        if (sent <= 0) break;
        total += sent;
    }
    return (int64_t)total;
}

// Write RESP bulk string directly to socket: $len\r\ndata\r\n
// Zero allocations — builds header on stack, uses os_sock_sendv (writev) for
// a single syscall.
int64_t nyx_resp_write_bulk(int64_t fd, nyx_string* data) {
    if (!data || !data->data) {
        // Null bulk string
        const char* null_resp = "$-1\r\n";
        int64_t r = os_sock_send(fd, null_resp, 5);
        // send() crudo siempre da -1 en error; se preserva ese valor exacto
        // (os_sock_send da -errno internamente).
        return r < 0 ? -1 : r;
    }
    char header[32];
    int hlen = snprintf(header, sizeof(header), "$%ld\r\n", (long)data->length);
    os_iovec_t iov[3];
    iov[0].base = header;
    iov[0].len = hlen;
    iov[1].base = data->data;
    iov[1].len = data->length;
    iov[2].base = "\r\n";
    iov[2].len = 2;
    int64_t r = os_sock_sendv(fd, iov, 3);
    // writev() crudo siempre da -1 en error; mismo cuidado que arriba.
    return r < 0 ? -1 : r;
}

void nyx_tcp_close(int64_t fd) {
    reset_conn_buf((int)fd);
    os_sock_close(fd);
}

// ===== Fast HTTP Request Parser (C-level, minimal GC allocs) =====

#include "runtime-arrays.h"

// Buffered line read into stack buffer — NO GC allocation
// Returns length of line read (0 = connection closed/error)
static int buffered_read_line(int fd, nyx_conn_buf_t* cb, char* out, int max_len) {
    int lpos = 0;
    while (lpos < max_len - 1) {
        if (cb->pos >= cb->len) {
            int64_t n = os_sock_recv(fd, cb->buf, NYX_NET_BUF_SIZE);
            if (n <= 0) break;
            cb->pos = 0;
            cb->len = (int)n;
        }
        char c = cb->buf[cb->pos++];
        if (c == '\n') break;
        if (c != '\r') out[lpos++] = c;
    }
    out[lpos] = '\0';
    return lpos;
}

// Read exactly n bytes from buffered connection into out. Returns bytes read.
static int buffered_read_exact(int fd, nyx_conn_buf_t* cb, char* out, int n) {
    int total = 0;
    while (total < n) {
        if (cb->pos >= cb->len) {
            int64_t r = os_sock_recv(fd, cb->buf, NYX_NET_BUF_SIZE);
            if (r <= 0) return total;
            cb->pos = 0;
            cb->len = (int)r;
        }
        int avail = cb->len - cb->pos;
        int want = n - total;
        int take = avail < want ? avail : want;
        memcpy(out + total, cb->buf + cb->pos, take);
        cb->pos += take;
        total += take;
    }
    return total;
}

// Read exactly n bytes from a buffered TCP connection, exposed to Nyx.
nyx_string* nyx_tcp_read_exact(int64_t fd, int64_t n) {
    if (n <= 0) return nyx_string_from_cstr("");
    nyx_conn_buf_t* cb = get_conn_buf((int)fd);
    char* out = (char*)GC_malloc_atomic(n + 1);
    if (!out) return nyx_string_from_cstr("");
    int got = 0;
    if (cb) {
        got = buffered_read_exact((int)fd, cb, out, (int)n);
    } else {
        // Fallback: unbuffered read loop
        while (got < (int)n) {
            int64_t r = os_sock_recv(fd, out + got, (int)n - got);
            if (r <= 0) break;
            got += (int)r;
        }
    }
    if (got == 0) return nyx_string_from_cstr("");
    out[got] = '\0';
    return nyx_string_from_ptr(out, (size_t)got);
}

// Cota del bulk RESP (bytes). Configurable con NYX_RESP_MAX_BULK; default
// 16 MiB — el MISMO valor que RESP_MAX_BULK en std/resp.nx:12, que hasta
// ahora era la única cota y no cubría este camino (el builtin
// resp_read_command_fast). Deliberadamente más bajo que el 512 MB de Redis:
// el lector PRE-ALOCA el tamaño anunciado antes de recibir el cuerpo, así que
// un tope grande es amplificación de memoria pre-auth.
// EN: RESP bulk cap, env-configurable, read per call.
int64_t nyx_resp_max_bulk(void) {
    const char* env = getenv("NYX_RESP_MAX_BULK");
    if (env && *env) {
        char* end = NULL;
        long long v = strtoll(env, &end, 10);
        if (end && *end == '\0' && v > 0) return (int64_t)v;
    }
    return 16777216;
}

// Cota del conteo de elementos del array RESP (*N). Configurable con
// NYX_RESP_MAX_ARRAY; default 1048576 — el MISMO valor que RESP_MAX_ARRAY
// en std/resp.nx:12, que hasta ahora era la única cota y no cubría este
// camino (el builtin resp_read_command_fast). El *N lo dicta el peer y
// nyx_array_new(count) reserva memoria para `count` slots INMEDIATAMENTE,
// antes de leer un solo elemento del array — es la misma amplificación de
// memoria pre-auth que el bulk ($N) de nyx_resp_max_bulk: catorce bytes
// (*2000000000\r\n) bastan para forzar un intento de reserva de ~16 GB, y
// si GC_malloc devuelve NULL, nyx_array_new hace exit(1) — un peer remoto
// no autenticado podría matar el proceso.
// EN: RESP array-count cap, env-configurable, read per call.
int64_t nyx_resp_max_array(void) {
    const char* env = getenv("NYX_RESP_MAX_ARRAY");
    if (env && *env) {
        char* end = NULL;
        long long v = strtoll(env, &end, 10);
        if (end && *end == '\0' && v > 0) return (int64_t)v;
    }
    return 1048576;
}

// Fast RESP command parser — zero intermediate GC allocations.
// Parses *N\r\n$len\r\ndata\r\n... and returns nyx_array of nyx_strings.
// Also handles inline commands (PING\r\n).
nyx_array_t* nyx_resp_read_command(int64_t fd) {
    nyx_conn_buf_t* cb = get_conn_buf((int)fd);
    if (!cb) return nyx_array_new(0);

    char line[256];
    int len = buffered_read_line((int)fd, cb, line, sizeof(line));
    if (len == 0) return nyx_array_new(0);

    // RESP array: *N\r\n
    if (line[0] == '*') {
        int count = atoi(line + 1);
        if (count <= 0) return nyx_array_new(0);
        // El peer dicta count. nyx_array_new(count) reserva memoria para
        // `count` slots ANTES de leer un solo elemento — guard por resta
        // (no por suma: count ya es int, no hay overflow que envolver acá)
        // antes de cualquier allocación que dependa del conteo.
        if ((int64_t)count > nyx_resp_max_array()) return nyx_array_new(0);

        nyx_array_t* result = nyx_array_new(count);
        // Hoisteado fuera del loop: nyx_resp_max_bulk() hace getenv() (scan
        // lineal de environ) y antes se llamaba una vez POR ELEMENTO del
        // comando, rompiendo el paralelismo con nyx_http_max_body() (una
        // sola vez por request) y con nyx_resp_max_array() (ya hoisteado
        // arriba). El valor no cambia durante la vida del proceso, así que
        // una sola lectura antes del loop es cero cambio semántico.
        // EN: hoisted out of the loop — see comment above.
        int64_t max_bulk = nyx_resp_max_bulk();
        for (int i = 0; i < count; i++) {
            // Read $N\r\n
            char bh[64];
            int bhlen = buffered_read_line((int)fd, cb, bh, sizeof(bh));
            if (bhlen == 0 || bh[0] != '$') return nyx_array_new(0);

            int data_len = atoi(bh + 1);
            if (data_len < 0) {
                // Null bulk string
                nyx_array_push_tagged(result, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
                continue;
            }
            // El peer dicta data_len. Sin cota: $2147483647 hace que
            // data_len + 1 desborde a INT_MIN (GC_malloc_atomic recibe un
            // size_t enorme, devuelve NULL, y el memcpy siguiente escribe
            // sobre NULL); valores menores reservan gigabytes por comando.
            if ((int64_t)data_len > max_bulk) return nyx_array_new(0);

            // Read exactly data_len bytes + \r\n
            char stack_buf[512];
            char* buf;
            if (data_len < (int)sizeof(stack_buf)) {
                buf = stack_buf;
            } else {
                buf = (char*)GC_malloc_atomic(data_len + 1);
            }
            int got = buffered_read_exact((int)fd, cb, buf, data_len);
            buf[got] = '\0';

            // Consume trailing \r\n
            char crlf[2];
            buffered_read_exact((int)fd, cb, crlf, 2);

            nyx_array_push_tagged(result, (int64_t)nyx_string_from_ptr(buf, got), NYX_TAG_STRING);
        }
        return result;
    }

    // Inline command: split by spaces
    nyx_array_t* result = nyx_array_new(4);
    char* p = line;
    while (*p) {
        while (*p == ' ') p++;
        if (!*p) break;
        char* start = p;
        while (*p && *p != ' ') p++;
        nyx_array_push_tagged(result, (int64_t)nyx_string_from_ptr(start, p - start), NYX_TAG_STRING);
    }
    return result;
}

// Cap del body del parser HTTP (bytes). Configurable con NYX_HTTP_MAX_BODY;
// default 1 MiB. getenv POR LLAMADA (coste despreciable frente al parseo de
// una request) — ajustable sin recompilar y testeable con setenv.
// EN: HTTP body cap, env-configurable, read per call.
int64_t nyx_http_max_body(void) {
    const char* env = getenv("NYX_HTTP_MAX_BODY");
    if (env && *env) {
        char* end = NULL;
        long long v = strtoll(env, &end, 10);
        if (end && *end == '\0' && v > 0) return (int64_t)v;
    }
    return 1048576;
}

nyx_array_t* nyx_http_parse_request_fast(int64_t fd) {
    nyx_conn_buf_t* cb = get_conn_buf((int)fd);
    if (!cb) {
        // Return empty request: ["request", "", "", [], "", 0]
        nyx_array_t* empty = nyx_array_new(6);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr("request"), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, (int64_t)nyx_array_new(0), NYX_TAG_ARRAY);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, 0, NYX_TAG_INT);
        return empty;
    }

    // Parse request line on stack
    char line[4096];
    int len = buffered_read_line((int)fd, cb, line, sizeof(line));
    if (len == 0) {
        // Client disconnected — return empty request
        nyx_array_t* empty = nyx_array_new(6);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr("request"), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, (int64_t)nyx_array_new(0), NYX_TAG_ARRAY);
        nyx_array_push_tagged(empty, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        nyx_array_push_tagged(empty, 0, NYX_TAG_INT);
        return empty;
    }

    // Split request line: "GET /path HTTP/1.1"
    char* method_end = strchr(line, ' ');
    char* path_start = method_end ? method_end + 1 : NULL;
    char* path_end = path_start ? strchr(path_start, ' ') : NULL;

    nyx_string* method_str;
    nyx_string* path_str;
    if (method_end && path_start && path_end) {
        method_str = nyx_string_from_ptr(line, method_end - line);
        path_str = nyx_string_from_ptr(path_start, path_end - path_start);
    } else {
        method_str = nyx_string_from_cstr("GET");
        path_str = nyx_string_from_cstr("/");
    }

    // Parse headers — flat array [key1, val1, key2, val2, ...]
    nyx_array_t* headers = nyx_array_new(16);
    int64_t content_length = 0;
    char hdr[4096];
    while (1) {
        int hlen = buffered_read_line((int)fd, cb, hdr, sizeof(hdr));
        if (hlen == 0) break; // empty line = end of headers

        // Find ": " separator
        char* colon = strstr(hdr, ": ");
        if (colon) {
            nyx_string* key = nyx_string_from_ptr(hdr, colon - hdr);
            nyx_string* val = nyx_string_from_ptr(colon + 2, hlen - (colon + 2 - hdr));
            nyx_array_push_tagged(headers, (int64_t)key, NYX_TAG_STRING);
            nyx_array_push_tagged(headers, (int64_t)val, NYX_TAG_STRING);

            // Check Content-Length
            if (colon - hdr == 14 && strncmp(hdr, "Content-Length", 14) == 0) {
                content_length = atoll(colon + 2);
            }
        }
    }

    // Read body if Content-Length > 0 (cap configurable NYX_HTTP_MAX_BODY,
    // default 1MiB, INCLUSIVO). Sobre el cap NO se lee ni drena el body
    // (drenar un Content-Length arbitrario del peer sería un vector DoS):
    // se señala err=413 en el slot 6 — el server debe responder 413 y
    // CERRAR la conexión (el socket queda con el body sin consumir).
    // Antes: >= 1MiB dejaba body "" SIN señal (silencioso, TASKS 2026-07-20).
    nyx_string* body_str;
    int64_t req_err = 0;
    int64_t max_body = nyx_http_max_body();
    if (content_length > 0 && content_length <= max_body) {
        char* body_buf = (char*)GC_malloc_atomic(content_length + 1);
        int64_t total = 0;
        // Drain from connection buffer first
        if (cb->pos < cb->len) {
            int avail = cb->len - cb->pos;
            int64_t to_copy = (content_length < avail) ? content_length : avail;
            memcpy(body_buf, cb->buf + cb->pos, to_copy);
            cb->pos += (int)to_copy;
            total = to_copy;
        }
        while (total < content_length) {
            int64_t n = os_sock_recv(fd, body_buf + total, content_length - total);
            if (n <= 0) break;
            total += n;
        }
        body_buf[total] = '\0';
        body_str = nyx_string_from_ptr(body_buf, total);
    } else {
        if (content_length > max_body) req_err = 413;
        body_str = nyx_string_from_cstr("");
    }

    // Build result: ["request", method, path, headers, body, err]
    nyx_array_t* result = nyx_array_new(6);
    nyx_array_push_tagged(result, (int64_t)nyx_string_from_cstr("request"), NYX_TAG_STRING);
    nyx_array_push_tagged(result, (int64_t)method_str, NYX_TAG_STRING);
    nyx_array_push_tagged(result, (int64_t)path_str, NYX_TAG_STRING);
    nyx_array_push_tagged(result, (int64_t)headers, NYX_TAG_ARRAY);
    nyx_array_push_tagged(result, (int64_t)body_str, NYX_TAG_STRING);
    nyx_array_push_tagged(result, req_err, NYX_TAG_INT);
    return result;
}

// ===== UDP =====

int64_t nyx_udp_bind(const char* host, int64_t port) {
    int64_t fd = os_sock_udp4();
    if (fd < 0) return -1;

    os_addr_t addr;
    if (host && strlen(host) > 0) {
        os_addr_from_ip4(&addr, host, (int)port);
    } else {
        os_addr_from_ip4(&addr, "0.0.0.0", (int)port);
    }

    int rc = os_sock_bind(fd, &addr);
    if (rc < 0) {
        /* Misma familia que el bind de tcp_listen (friction 2026-08-01):
         * fallo de bind ruidoso por stderr, retorno -1 intacto. */
        int bind_errno = -rc;
        fprintf(stderr, "nyx: udp_bind: cannot bind port %lld: %s\n",
                (long long)port, strerror(bind_errno));
        os_sock_close(fd);
        return -1;
    }

    return fd;
}

int64_t nyx_udp_sendto(int64_t fd, nyx_string* data, const char* host, int64_t port) {
    if (!data || !host) return -1;

    os_addr_t addr;
    // Mismo comportamiento que la centinela vieja: el retorno de la
    // resolución de IP NO se chequea (host no-numérico deja `addr` con la
    // dirección en 0.0.0.0, el datagrama sale mudo hacia ahí).
    os_addr_from_ip4(&addr, host, (int)port);

    // Binary-safe: usa data->length (el ABI ya lo trae), no strlen(cstr) --
    // un payload con bytes NUL (probes DNS/NTP/SNMP) se cortaba en el primer
    // '\0'. Sin loop de reintento: un sendto corto en un socket de datagramas
    // no es reintentable, es un error que el caller debe ver.
    size_t len = (size_t)data->length;
    int64_t sent = os_sock_sendto(fd, data->data, len, &addr);
    // sendto() crudo siempre da -1 en error; se preserva ese valor exacto.
    return sent < 0 ? -1 : sent;
}

nyx_string* nyx_udp_recvfrom(int64_t fd, int64_t max_bytes) {
    if (max_bytes <= 0) max_bytes = 4096;
    char* buf = (char*)GC_MALLOC(max_bytes + 1);
    if (!buf) return nyx_string_from_cstr("");

    // from=NULL: el remitente se descarta, igual que la centinela vieja.
    int64_t n = os_sock_recvfrom(fd, buf, max_bytes, NULL);
    if (n < 0) return nyx_string_from_cstr("");
    // Binary-safe: nyx_string_from_ptr hace memcpy de exactamente `n` bytes
    // (length real de recvfrom), no nyx_string_from_cstr(buf) que remedía con
    // strlen y truncaba en el primer NUL. n==0 es un datagrama vacío legítimo.
    return nyx_string_from_ptr(buf, n);
}

// ===== DNS =====

// Reverse DNS (IDEA del reporte MCP-stdio/lanpass, 2026-08-06): IP -> hostname.
// Fail-soft como nyx_resolve: "" si no hay PTR o la IP es inválida (require_name=1
// evita devolver la IP misma como "nombre").
nyx_string* nyx_resolve_ptr(const char* ip) {
    if (!ip) return nyx_string_from_cstr("");
    os_addr_t addr;
    if (os_addr_from_ip4(&addr, ip, 0) != 0) {
        return nyx_string_from_cstr("");
    }
    char host[NYX_NET_MAXHOST];
    if (os_addr_hostname(&addr, host, sizeof(host), 1) != 0) {
        return nyx_string_from_cstr("");
    }
    return nyx_string_from_cstr(host);
}

// Enumeración de interfaces IPv4 (IDEA del mismo reporte): Array plano de
// TRIPLETAS String [nombre, ip, máscara, nombre, ip, máscara, ...] — stride 3.
// Solo AF_INET con dirección asignada; loopback incluida (el caller filtra).
static void nyx_net_ifaces4_cb(const char* name, const char* ip, const char* mask, void* ud) {
    nyx_array_t* out = (nyx_array_t*)ud;
    nyx_array_push_tagged(out, (int64_t)(intptr_t)nyx_string_from_cstr(name), NYX_TAG_STRING);
    nyx_array_push_tagged(out, (int64_t)(intptr_t)nyx_string_from_cstr(ip), NYX_TAG_STRING);
    nyx_array_push_tagged(out, (int64_t)(intptr_t)nyx_string_from_cstr(mask), NYX_TAG_STRING);
}

nyx_array_t* nyx_net_interfaces() {
    nyx_array_t* out = nyx_array_new(8);
    // Fallo de os_net_ifaces4 (-errno) nunca invoca el callback -- `out`
    // queda vacío, mismo comportamiento que la centinela vieja ante un
    // getifaddrs() fallido.
    os_net_ifaces4(nyx_net_ifaces4_cb, out);
    return out;
}

nyx_string* nyx_resolve(const char* hostname) {
    if (!hostname) return nyx_string_from_cstr("");

    os_addr_t addr[1];
    int n = os_addr_resolve4(hostname, 0, addr, 1, NULL);
    if (n < 1) return nyx_string_from_cstr("");

    char ip[NYX_NET_IP_STRLEN];
    os_addr_ip(&addr[0], ip, sizeof(ip));
    return nyx_string_from_cstr(ip);
}

// ===== E5.1 — trío *_result: errno como valor de retorno, sin stderr =====
//
// Espejo de nyx_tcp_connect/nyx_tcp_listen/nyx_udp_bind de arriba: MISMA
// mecánica (resolve/socket/setsockopt/connect/bind/listen sobre la capa
// os_sock_*/os_addr_*), pero:
//   - `host` llega como `nyx_string*` (ABI real de extern "C" fn(host: String),
//     lección del arco E4 — NUNCA char* crudo).
//   - Retorno `int64_t`: éxito = fd (≥ 0), fallo = -errno (negativo). JAMÁS
//     `long` (rompe wasm ILP32, ver Global Constraints del plan).
//   - CERO stderr — las centinelas viejas gritan por stderr (friction
//     2026-08-01); estas reportan el fallo únicamente por el valor de
//     retorno, para que el caller Nyx (Task 2, capa `?`) decida.
//   - os_sock_*/os_addr_* YA capturan errno EN EL MISMO INSTANTE que la
//     syscall que falla (antes de cualquier close() que pueda pisarlo) y
//     devuelven -errno directo (sin el fallback ":5"/EIO explícito de las
//     versiones viejas — ver runtime/os/os_posix.c; un -errno siempre viene
//     de una syscall que YA seteó errno, así que el fallback nunca se
//     alcanzaba en la práctica). Se reenvía ese valor tal cual.
//   - host == NULL (puntero nulo, defensive check de ABI, no "sin host") →
//     -22 (EINVAL) en las 3 funciones. Un nyx_string* NO-nulo con length==0
//     ("") sigue significando "sin host" en listen/bind (bind-all →
//     INADDR_ANY, igual que las centinelas viejas con `host && strlen(host)
//     > 0`); connect SÍ necesita un host real para resolver.

int64_t nyx_tcp_listen_result(nyx_string* host, int64_t port) {
    if (!host) return -22; // EINVAL — puntero nulo (ABI), no "sin host"

    int64_t fd = os_sock_tcp4();
    if (fd < 0) return fd; // ya es -errno

    os_sock_set_reuseaddr(fd);

    os_addr_t addr;
    if (host->data && host->length > 0) {
        // os_addr_from_ip4 devuelve -EINVAL si `host` no es una IP numérica
        // válida (ej. "localhost") SIN tocar la dirección -- que queda en
        // 0.0.0.0. Sin este guard, un hostname bindeaba en silencio a
        // INADDR_ANY (todas las interfaces) y devolvía Ok: exposición
        // silenciosa de un listener que el caller pidió atar a una IP
        // puntual.
        if (os_addr_from_ip4(&addr, host->data, (int)port) != 0) {
            os_sock_close(fd); // el socket ya existe (se creó antes de este chequeo)
            return -22; // EINVAL
        }
    } else {
        os_addr_from_ip4(&addr, "0.0.0.0", (int)port);
    }

    int rc = os_sock_bind(fd, &addr);
    if (rc < 0) {
        os_sock_close(fd); // tras capturar rc — close() puede pisar errno
        return rc;
    }

    rc = os_sock_listen(fd, 128);
    if (rc < 0) {
        os_sock_close(fd);
        return rc;
    }

    return fd;
}

int64_t nyx_tcp_connect_result(nyx_string* host, int64_t port) {
    if (!host || !host->data) return -22; // EINVAL

    os_addr_t addr[1];
    int n = os_addr_resolve4(host->data, (int)port, addr, 1, NULL);
    if (n < 1) {
        // os_addr_resolve4 ya NO distingue EAI_SYSTEM del resto de fallos de
        // resolución (colapsa a OS_RES_OTHER, igual que EAI_NONAME/EAI_AGAIN
        // -- decisión de Task 1, runtime/os/os_posix.c). La centinela vieja
        // mapeaba EAI_SYSTEM -> errno real, resto -> -113 (EHOSTUNREACH);
        // esa distinción ya no es recuperable desde este contrato. Sin
        // impacto medido: ningún test (test_net_result) ejercita el camino
        // EAI_SYSTEM -- es un fallo de recursos del propio getaddrinfo()
        // (ENOMEM/EMFILE internos), no reproducible con un host inválido.
        // Ver task-2-report.md, sección "Concerns".
        return -113; // EHOSTUNREACH
    }

    int64_t fd = os_sock_tcp4();
    if (fd < 0) return fd; // ya es -errno

    // Set non-blocking for connect with timeout (misma mecánica que la
    // centinela nyx_tcp_connect)
    os_sock_set_nonblocking(fd, 1);

    int ret = os_sock_connect(fd, &addr[0]);
    if (ret < 0) {
        if (ret != -EINPROGRESS) {
            os_sock_close(fd);
            return ret; // ya es -errno
        }
        // Wait up to 3 seconds for connection (mismo timeout que la centinela)
        int pret = os_sock_poll1(fd, OS_POLLOUT, 3000);
        if (pret < 0) {
            os_sock_close(fd);
            return pret; // ya es -errno
        }
        if (pret == 0) {
            // Timeout: os_sock_poll1 no distingue esto con -errno (0 es el
            // contrato de "timeout") -- ETIMEDOUT es el código estable para
            // "no respondió a tiempo".
            os_sock_close(fd);
            return -(int64_t)ETIMEDOUT;
        }
        // Check for connection error
        int err = os_sock_error(fd);
        if (err != 0) {
            // os_sock_error entrega el errno pendiente EN POSITIVO (SO_ERROR
            // directo, no pasa por -errno) -- se niega para el retorno. PERO
            // si el getsockopt() INTERNO de os_sock_error falló, la propia
            // primitiva devuelve -errno (YA negativo) -- negarlo de nuevo lo
            // volvería positivo (un "fd fantasma" que Nyx leería como éxito).
            // Fix review round 1 (H2): distinguir ambos casos por el signo.
            os_sock_close(fd);
            return err < 0 ? err : -(int64_t)err;
        }
    }

    // Restore blocking mode
    os_sock_set_nonblocking(fd, 0);

    return fd;
}

int64_t nyx_udp_bind_result(nyx_string* host, int64_t port) {
    if (!host) return -22; // EINVAL — puntero nulo (ABI), no "sin host"

    int64_t fd = os_sock_udp4();
    if (fd < 0) return fd; // ya es -errno

    os_addr_t addr;
    if (host->data && host->length > 0) {
        // Mismo guard que nyx_tcp_listen_result arriba: sin él, un host
        // NO-numérico ("localhost") bindea en silencio a INADDR_ANY.
        if (os_addr_from_ip4(&addr, host->data, (int)port) != 0) {
            os_sock_close(fd); // el socket ya existe (se creó antes de este chequeo)
            return -22; // EINVAL
        }
    } else {
        os_addr_from_ip4(&addr, "0.0.0.0", (int)port);
    }

    int rc = os_sock_bind(fd, &addr);
    if (rc < 0) {
        os_sock_close(fd);
        return rc;
    }

    return fd;
}

// ===== E5.2 — las 6 `*_result` de E/S y resolución =====
//
// Espejo de mecánica de las centinelas de arriba (nyx_tcp_accept,
// nyx_tcp_read, nyx_tcp_write, nyx_udp_sendto, nyx_udp_recvfrom,
// nyx_resolve), mismas reglas del trío E5.1: int64_t (jamás long),
// nyx_string* (jamás char* crudo), CERO stderr, -errno de os_sock_*/os_addr_*
// reenviado tal cual (ya capturado en el momento exacto de la syscall que
// falló, ver nota de sección E5.1 arriba).
//
// SONDAS (por función, mecánica que la `_result` copia o documenta que se
// aparta):
//   - accept: la centinela no chequea fd<0 antes de accept() -- un fd
//     negativo simplemente le da EBADF al syscall igual. La `_result`
//     adelanta ese chequeo (devuelve -9 SIN llamar accept()) porque el
//     plan lo pide explícito como contrato, no como optimización.
//   - read: la centinela drena el conn_buf (buffer transparente de
//     tcp_read_line) y despues hace un LOOP de recv() hasta llenar
//     max_bytes o hasta que recv <= 0 corte. La `_result` copia ese loop
//     pero separa la semántica de la interrupción: n==0 (peer cerró) es
//     EOF limpio -- Ok con lo que se haya juntado hasta ahí, JAMÁS Err;
//     n<0 (fallo real) es Err SOLO si todavía no se había juntado nada
//     (total==0) -- si ya había datos (del conn_buf o de un recv previo
//     en el mismo loop) se devuelven esos datos como Ok, igual que la
//     centinela (que también los devuelve, sin reportar el error).
//   - write: la centinela YA tiene el loop de short-write (`while (total
//     < len) { sent = os_sock_send(...); if (sent <= 0) break; ... }`) --
//     se copia tal cual. Único agregado: si el PRIMER send falla (total==0
//     al momento del fallo) se reporta -errno; si falla DESPUÉS de haber
//     mandado algo, se devuelven los bytes ya enviados (mismo criterio
//     que write(2) POSIX: un short-write con error a mitad de camino
//     reporta lo escrito, no un error que perdería esa información).
//   - sendto: la centinela usa os_addr_from_ip4 DIRECTO sobre `host` (no
//     os_addr_resolve4) y NO chequea su retorno -- un host no-numérico
//     ("localhost") deja `addr` en 0.0.0.0 y el datagrama sale mudo hacia
//     esa dirección. Mismo guard que nyx_tcp_listen_result/
//     nyx_udp_bind_result (lección E5.1): retorno de os_addr_from_ip4 != 0
//     -> -22 (EINVAL), documentado, sin sendto().
//   - recvfrom: un solo recv (la centinela no loopea, un datagrama es una
//     unidad atómica). n==0 es un datagrama vacío LEGÍTIMO (mismo
//     comentario que la centinela) -- Ok con data="", errno=0; SOLO n<0
//     es Err. from=NULL, igual que nyx_udp_recvfrom (el remitente se
//     descarta).
//   - resolve: la centinela usa os_addr_resolve4(host, 0, ..., max=1) y
//     toma la PRIMERA dirección. Mapeo del plan: OS_RES_AGAIN -> 110
//     (ETIMEDOUT); cualquier otro fallo (OS_RES_NOTFOUND/OS_RES_OTHER) ->
//     113 (EHOSTUNREACH), MISMO código que ya usa nyx_tcp_connect_result
//     para "no resuelve" (E5.1). El *kind* Nyx (not_found/timeout/io) lo
//     decide Task 2 (`std/net.nx`) a partir de este code -- acá solo viaja
//     el número.

int64_t nyx_tcp_accept_result(int64_t listen_fd) {
    if (listen_fd < 0) return -9; // EBADF -- fd inválido, sin llamar accept()

    int64_t fd = os_sock_accept(listen_fd);
    if (fd < 0) return fd; // ya es -errno
    os_sock_set_nodelay(fd);
    return fd;
}

nyx_array_t* nyx_tcp_read_result(int64_t fd, int64_t max_bytes) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    if (max_bytes <= 0) max_bytes = 4096;
    char* out_buf = (char*)GC_malloc_atomic(max_bytes + 1);
    if (!out_buf) {
        nyx_array_push_tagged(out, 12 /* ENOMEM */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    int64_t total = 0;

    // Drena el conn_buf primero -- mismo mecanismo que nyx_tcp_read (buffer
    // transparente que llena tcp_read_line).
    nyx_conn_buf_t* cb = (fd < NYX_MAX_CONN_BUFS && conn_buf_active[(int)fd])
                         ? &conn_bufs[(int)fd] : NULL;
    if (cb && cb->pos < cb->len) {
        int avail = cb->len - cb->pos;
        int64_t to_copy = (max_bytes < avail) ? max_bytes : avail;
        memcpy(out_buf, cb->buf + cb->pos, to_copy);
        cb->pos += (int)to_copy;
        total = to_copy;
    }

    // Mismo loop que la centinela (recv hasta llenar max_bytes o hasta que
    // recv() corte), pero acá SÍ distinguimos EOF (n==0, Ok) de error real
    // (n<0, Err -- solo si todavía no se había juntado nada).
    while (total < max_bytes) {
        int64_t n = os_sock_recv(fd, out_buf + total, max_bytes - total);
        if (n < 0) {
            if (total == 0) {
                nyx_array_push_tagged(out, (int64_t)(-n), NYX_TAG_INT);
                nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
                return out;
            }
            break; // ya había datos parciales -- se devuelven como Ok
        }
        if (n == 0) break; // EOF limpio: el peer cerró
        total += n;
    }

    // errno 0 + datos vacíos ("") = EOF limpio -- contrato documentado en
    // Task 2 (std/net.nx) y LLM.md, NO es un error.
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(out_buf, total), NYX_TAG_STRING);
    return out;
}

int64_t nyx_tcp_write_result(int64_t fd, nyx_string* data) {
    if (fd < 0) return -9; // EBADF
    if (!data || !data->data) return -22; // EINVAL -- puntero nulo (ABI)
    if (data->length == 0) return 0; // nada que escribir -- éxito trivial, igual que la centinela

    size_t total = 0;
    size_t len = (size_t)data->length;
    const char* buf = data->data;
    // Mismo loop de short-write que nyx_tcp_write (la centinela YA lo
    // tenía -- se copia tal cual, sin reinventar mecánica nueva).
    while (total < len) {
        int64_t sent = os_sock_send(fd, buf + total, len - total);
        if (sent <= 0) {
            if (total == 0) {
                // sent<0: ya es -errno, se reenvía tal cual. sent==0 (caso
                // patológico, send() no debería dar 0 para un len>0): la
                // centinela vieja no llamaba a este primer send con errno ya
                // seteado, así que `errno ? errno : 5` caía SIEMPRE al
                // fallback EIO -- fix review round 1 (H1), valor -5 exacto
                // del baseline, no el 0 que este código devolvía antes.
                return sent < 0 ? sent : -5; /* EIO */
            }
            break; // ya se mandó algo -- se reportan los bytes reales, no el error
        }
        total += (size_t)sent;
    }
    return (int64_t)total;
}

int64_t nyx_udp_sendto_result(int64_t fd, nyx_string* data, nyx_string* host, int64_t port) {
    if (fd < 0) return -9; // EBADF
    if (!data || !data->data) return -22; // EINVAL
    if (!host || !host->data) return -22; // EINVAL

    // Guard E5.1 (lección inet_pton/os_addr_from_ip4): la centinela
    // (nyx_udp_sendto) NO chequea este retorno -- un host no-numérico deja
    // la dirección en 0.0.0.0 y el datagrama sale mudo. Acá se rechaza.
    os_addr_t addr;
    if (os_addr_from_ip4(&addr, host->data, (int)port) != 0) {
        return -22; // EINVAL
    }

    size_t len = (size_t)data->length;
    int64_t sent = os_sock_sendto(fd, data->data, len, &addr);
    return sent; // ya es -errno en fallo
}

nyx_array_t* nyx_udp_recvfrom_result(int64_t fd, int64_t max_bytes) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    if (max_bytes <= 0) max_bytes = 4096;
    char* buf = (char*)GC_MALLOC(max_bytes + 1); // GC_MALLOC (no _atomic) -- espejo de la centinela
    if (!buf) {
        nyx_array_push_tagged(out, 12 /* ENOMEM */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    // from=NULL: el remitente se descarta -- la centinela lo capturaba en un
    // sockaddr_in local pero nunca lo usaba en el resultado (mismo discard).
    int64_t n = os_sock_recvfrom(fd, buf, max_bytes, NULL);
    if (n < 0) {
        nyx_array_push_tagged(out, (int64_t)(-n), NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    // n==0 es un datagrama vacío LEGÍTIMO (mismo comentario que la
    // centinela nyx_udp_recvfrom) -- Ok con data="", no un error.
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(buf, n), NYX_TAG_STRING);
    return out;
}

nyx_array_t* nyx_resolve_result(nyx_string* host) {
    nyx_array_t* out = nyx_array_new(2);
    if (!host || !host->data) {
        nyx_array_push_tagged(out, 22 /* EINVAL */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    os_addr_t addr[1];
    int n = os_addr_resolve4(host->data, 0, addr, 1, NULL);
    if (n < 1) {
        // OS_RES_AGAIN -> 110 (ETIMEDOUT, "resolvedor ocupado, reintentar");
        // OS_RES_NOTFOUND/OS_RES_OTHER (incluye lo que antes era EAI_SYSTEM,
        // ya no distinguible -- ver nota en nyx_tcp_connect_result) -> 113
        // (EHOSTUNREACH), mismo mapeo estable que E5.1.
        int code = (n == OS_RES_AGAIN) ? 110 : 113;
        nyx_array_push_tagged(out, code, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    char ip[NYX_NET_IP_STRLEN] = ""; // init defensivo (fixwave docs review final E5.2, M4):
                                      // si os_addr_ip() fallara devolvería sin tocar
                                      // `ip`, y el nyx_string_from_cstr() de abajo leería
                                      // stack sin inicializar en vez de "".
    os_addr_ip(&addr[0], ip, sizeof(ip));

    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(ip), NYX_TAG_STRING);
    return out;
}

// ===== E5.2b — las 7 `*_result` restantes de red =====
//
// Espejo de mecánica de las centinelas de arriba (nyx_tcp_read_line,
// nyx_tcp_read_partial, nyx_tcp_read_exact, nyx_tcp_shutdown,
// nyx_tcp_set_timeout, nyx_getpeername, nyx_resolve_ptr), mismas reglas de
// E5.1/E5.2: int64_t (jamás long), nyx_string* (jamás char* crudo), CERO
// stderr, -errno de os_sock_*/os_addr_* reenviado tal cual, arrays [code,
// payload] con code 0 = éxito (NYX_TAG_INT/NYX_TAG_STRING, ver net.h).
//
// SONDAS (por función, mecánica que la `_result` copia o documenta que se
// aparta):
//   - read_line: la centinela hace un char a la vez sobre el conn_buf,
//     corta en '\n' (SIN incluirlo en la línea) y descarta TODO '\r' que
//     encuentre en el camino -- no solo el que precede a un '\n' inmediato.
//     Recorte EXACTO copiado acá: `if (c != '\r') line[lpos++] = c;`. La
//     centinela vieja devuelve "" tanto si vio un '\n' pegado al inicio
//     (línea vacía real) como si el peer cerró sin mandar nada -- ESA es la
//     ambigüedad que esta función existe para resolver: separa "vi un '\n'"
//     (Ok, code 0, incluso con línea "") de "corté sin ver '\n'" (recv
//     devolvió <=0). Dentro de ese segundo caso: n==0 (EOF limpio) -> code
//     NYX_NET_EOF (1000); n<0 (error real) -> code = -n (positivo). En
//     AMBOS sub-casos se descarta lo acumulado en `line` -- un fragmento
//     sin terminador no es una línea válida (mismo criterio que read_exact,
//     ver abajo). Si el loop llega al cap de 4095 bytes SIN ver '\n' (línea
//     patológicamente larga), se devuelve igual como Ok con lo juntado --
//     mismo comportamiento que la centinela vieja, fuera del alcance de las
//     sondas del plan.
//   - read_partial: la centinela drena el conn_buf y si no dio nada hace
//     UN solo recv() (nunca espera a max_bytes) -- se copia tal cual.
//     Contrato DISTINTO al de read_line/read_exact (asimetría deliberada,
//     documentada en el plan): acá Ok("") ES EOF, igual que
//     nyx_udp_recvfrom_result -- code 0 siempre que no haya un error real
//     (recv<0), sin el sentinel NYX_NET_EOF.
//   - read_exact: la centinela (vía buffered_read_exact) acumula hasta
//     completar n bytes o hasta que recv() corte. La `_result` usa una
//     variante de ese helper que además reporta si el corte fue EOF limpio
//     (r==0) o error real (r<0, con su -errno) -- necesario para no
//     confundir "peer cerró a mitad de los n bytes" con un fallo real. Si
//     no se completan los n bytes por CUALQUIER motivo, los bytes parciales
//     se descartan (documentado en el plan): EOF -> code NYX_NET_EOF
//     (1000); error real -> code = errno positivo.
//   - shutdown: la centinela mapea how: 0->RD, 1->WR, cualquier otro valor
//     (incl. 2) -> RDWR -- os_sock_shutdown hace el mismo mapeo interno
//     (ver nyx_os.h), se pasa `how` directo sin traducir.
//   - set_timeout: la centinela aplica SO_RCVTIMEO/SO_SNDTIMEO en SEGUNDOS
//     enteros (tv_usec siempre 0) y seconds<=0 DESACTIVA el timeout
//     (bloqueo indefinido) -- no lo rechaza. os_sock_set_timeout reproduce
//     ese mismo contrato (ver os_posix.c); si el primer setsockopt falla se
//     reporta ESE errno sin intentar el segundo (mismo cuidado que el trío
//     E5.1).
//   - getpeername: la centinela devuelve el string "unknown" en cualquier
//     fallo -- muere acá, se reporta el errno real.
//   - resolve_ptr: la centinela usa os_addr_from_ip4 para validar la IP
//     (AF_INET únicamente) y os_addr_hostname con require_name=1 (nunca
//     devuelve la IP misma como "nombre" cuando no hay PTR) --
//     OS_RES_NOTFOUND (sin PTR, el caso común) / OS_RES_AGAIN / OS_RES_OTHER
//     (incluye lo que antes era EAI_SYSTEM, ya no distinguible) -> 113
//     (EHOSTUNREACH), el *kind* Nyx ("not_found") lo decide Task 2. IP
//     inválida (os_addr_from_ip4 falla) -> 22 (EINVAL), sin llamar
//     os_addr_hostname -- no es un fallo de resolución, es un argumento
//     malformado.

nyx_array_t* nyx_tcp_read_line_result(int64_t fd) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    nyx_conn_buf_t* cb = get_conn_buf((int)fd);
    char line[4096];
    int lpos = 0;
    int got_newline = 0;
    int fail_code = -1; // -1 = sin fallo (se llegó al '\n' o al cap de 4095)

    if (!cb) {
        // Fallback sin buffer (fd fuera de NYX_MAX_CONN_BUFS) -- mismo
        // camino que la centinela, recv() de a un byte.
        char c;
        while (lpos < 4095) {
            int64_t n = os_sock_recv(fd, &c, 1);
            if (n < 0) { fail_code = (int)(-n); break; }
            if (n == 0) { fail_code = NYX_NET_EOF; break; }
            if (c == '\n') { got_newline = 1; break; }
            if (c != '\r') line[lpos++] = c;
        }
    } else {
        while (lpos < 4095) {
            if (cb->pos >= cb->len) {
                int64_t n = os_sock_recv(fd, cb->buf, NYX_NET_BUF_SIZE);
                if (n < 0) { fail_code = (int)(-n); break; }
                if (n == 0) { fail_code = NYX_NET_EOF; break; }
                cb->pos = 0;
                cb->len = (int)n;
            }
            char c = cb->buf[cb->pos++];
            if (c == '\n') { got_newline = 1; break; }
            if (c != '\r') line[lpos++] = c;
        }
    }

    if (!got_newline && fail_code != -1) {
        nyx_array_push_tagged(out, fail_code, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    line[lpos] = '\0';
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    // Binary-safe: nyx_string_from_ptr copia exactamente `lpos` bytes (el
    // largo real de la línea), no nyx_string_from_cstr(line) que remedía con
    // strlen y truncaba silenciosamente ante un NUL embebido en el payload.
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(line, lpos), NYX_TAG_STRING);
    return out;
}

nyx_array_t* nyx_tcp_read_partial_result(int64_t fd, int64_t max_bytes) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    if (max_bytes <= 0) max_bytes = 4096;
    char* out_buf = (char*)GC_malloc_atomic(max_bytes + 1);
    if (!out_buf) {
        nyx_array_push_tagged(out, 12 /* ENOMEM */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    int64_t total = 0;

    // Drena el conn_buf primero -- mismo mecanismo que la centinela.
    nyx_conn_buf_t* cb = (fd < NYX_MAX_CONN_BUFS && conn_buf_active[(int)fd])
                         ? &conn_bufs[(int)fd] : NULL;
    if (cb && cb->pos < cb->len) {
        int avail = cb->len - cb->pos;
        int64_t to_copy = (max_bytes < avail) ? max_bytes : avail;
        memcpy(out_buf, cb->buf + cb->pos, to_copy);
        cb->pos += (int)to_copy;
        total = to_copy;
    }

    // Si el buffer no dio nada, UN solo recv (nunca espera a max_bytes,
    // mismo contrato que nyx_udp_recvfrom_result). n==0 es EOF -- Ok con
    // data="", NO el sentinel NYX_NET_EOF (asimetría deliberada con
    // read_line/read_exact, ver comentario de sección arriba).
    if (total == 0) {
        int64_t n = os_sock_recv(fd, out_buf, max_bytes);
        if (n < 0) {
            nyx_array_push_tagged(out, (int64_t)(-n), NYX_TAG_INT);
            nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
            return out;
        }
        if (n > 0) total = n;
    }

    out_buf[total] = '\0';
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(out_buf, total), NYX_TAG_STRING);
    return out;
}

// Variante de buffered_read_exact que además reporta si el corte fue EOF
// limpio (r==0, *out_errno queda 0) o error real (r<0, *out_errno = errno
// positivo). Necesaria para que read_exact_result no confunda "peer cerró a
// mitad de los n bytes" con un fallo real -- buffered_read_exact colapsa
// ambos casos en "return total", que es exactamente lo que la centinela
// vieja necesita pero la `_result` no puede.
static int buffered_read_exact_result(int fd, nyx_conn_buf_t* cb, char* out, int n,
                                       int* out_errno) {
    int total = 0;
    *out_errno = 0;
    while (total < n) {
        if (cb->pos >= cb->len) {
            int64_t r = os_sock_recv(fd, cb->buf, NYX_NET_BUF_SIZE);
            if (r < 0) { *out_errno = (int)(-r); return total; }
            if (r == 0) return total; // EOF limpio -- *out_errno queda 0
            cb->pos = 0;
            cb->len = (int)r;
        }
        int avail = cb->len - cb->pos;
        int want = n - total;
        int take = avail < want ? avail : want;
        memcpy(out + total, cb->buf + cb->pos, take);
        cb->pos += take;
        total += take;
    }
    return total;
}

nyx_array_t* nyx_tcp_read_exact_result(int64_t fd, int64_t n) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    if (n <= 0) {
        // Espejo de la centinela: n<=0 es Ok trivial vacío, no un error.
        nyx_array_push_tagged(out, 0, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    nyx_conn_buf_t* cb = get_conn_buf((int)fd);
    char* buf = (char*)GC_malloc_atomic(n + 1);
    if (!buf) {
        nyx_array_push_tagged(out, 12 /* ENOMEM */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    int got, e = 0;
    if (cb) {
        got = buffered_read_exact_result((int)fd, cb, buf, (int)n, &e);
    } else {
        // Fallback sin buffer (fd fuera de NYX_MAX_CONN_BUFS).
        got = 0;
        while (got < (int)n) {
            int64_t r = os_sock_recv(fd, buf + got, (int)n - got);
            if (r < 0) { e = (int)(-r); break; }
            if (r == 0) break;
            got += (int)r;
        }
    }

    if (got == (int)n) {
        buf[got] = '\0';
        nyx_array_push_tagged(out, 0, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(buf, got), NYX_TAG_STRING);
        return out;
    }

    // Corto: EOF o error real antes de completar los n bytes -- se
    // descartan los bytes parciales (documentado en el plan).
    int code = (e != 0) ? e : NYX_NET_EOF;
    nyx_array_push_tagged(out, code, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
    return out;
}

int64_t nyx_tcp_shutdown_result(int64_t fd, int64_t how) {
    if (fd < 0) return -9; // EBADF
    int rc = os_sock_shutdown(fd, how);
    return rc < 0 ? rc : 0; // ya es -errno en fallo
}

int64_t nyx_tcp_set_timeout_result(int64_t fd, int64_t seconds) {
    if (fd < 0) return -9; // EBADF
    int rc = os_sock_set_timeout(fd, seconds);
    return rc < 0 ? rc : 0; // ya es -errno en fallo
}

nyx_array_t* nyx_getpeername_result(int64_t fd) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    os_addr_t addr;
    int rc = os_sock_peer(fd, &addr);
    if (rc < 0) {
        nyx_array_push_tagged(out, (int64_t)(-rc), NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    char ip_buf[NYX_NET_IP_STRLEN] = ""; // init defensivo, mismo cuidado que nyx_resolve_result
    os_addr_ip(&addr, ip_buf, sizeof(ip_buf));
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(ip_buf), NYX_TAG_STRING);
    return out;
}

nyx_array_t* nyx_resolve_ptr_result(nyx_string* ip) {
    nyx_array_t* out = nyx_array_new(2);
    if (!ip || !ip->data) {
        nyx_array_push_tagged(out, 22 /* EINVAL */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    os_addr_t addr;
    if (os_addr_from_ip4(&addr, ip->data, 0) != 0) {
        // IP inválida -- argumento malformado, no un fallo de resolución.
        nyx_array_push_tagged(out, 22 /* EINVAL */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    char host[NYX_NET_MAXHOST];
    int rc = os_addr_hostname(&addr, host, sizeof(host), 1);
    if (rc != 0) {
        // OS_RES_NOTFOUND (sin PTR -- el caso común) / OS_RES_AGAIN /
        // OS_RES_OTHER -- mismo mapeo estable 113 (EHOSTUNREACH) que
        // nyx_resolve_result usa para "no resuelve" (documentado en el
        // plan; el *kind* Nyx "not_found" lo decide Task 2).
        nyx_array_push_tagged(out, 113, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(host), NYX_TAG_STRING);
    return out;
}
