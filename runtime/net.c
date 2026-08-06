// ============================================
// NET.C - Networking Runtime for Nyx v5.0
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/time.h>
#include <ifaddrs.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <fcntl.h>
#include <poll.h>
#include <netinet/tcp.h>
#include <sys/uio.h>
#include <gc.h>
#include "net.h"

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
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd < 0) return -1;

    int opt = 1;
    setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);

    if (host && strlen(host) > 0) {
        inet_pton(AF_INET, host, &addr.sin_addr);
    } else {
        addr.sin_addr.s_addr = INADDR_ANY;
    }

    if (bind(fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        /* Friction 2026-08-01: un bind fallido era MUDO — http_serve devolvía
         * -1, el ejemplo canónico descartaba el retorno, y el programa
         * "arrancaba" con exit 0 sin servidor (el usuario debuggeó contra el
         * proceso ajeno que ocupaba su puerto). El retorno -1 se mantiene
         * (ABI); el ruido va a stderr con puerto y causa. errno se captura
         * ANTES de close(), que puede pisarlo. */
        int bind_errno = errno;
        fprintf(stderr, "nyx: tcp_listen: cannot bind port %lld: %s\n",
                (long long)port, strerror(bind_errno));
        close(fd);
        return -1;
    }

    if (listen(fd, 128) < 0) {
        int listen_errno = errno;
        fprintf(stderr, "nyx: tcp_listen: listen failed on port %lld: %s\n",
                (long long)port, strerror(listen_errno));
        close(fd);
        return -1;
    }

    return (int64_t)fd;
}

int64_t nyx_tcp_accept(int64_t listen_fd) {
    struct sockaddr_in client_addr;
    socklen_t addr_len = sizeof(client_addr);
    int fd = accept((int)listen_fd, (struct sockaddr*)&client_addr, &addr_len);
    if (fd >= 0) {
        int opt = 1;
        setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &opt, sizeof(opt));
    }
    return (int64_t)fd;
}

nyx_string* nyx_getpeername(int64_t fd) {
    struct sockaddr_in addr;
    socklen_t len = sizeof(addr);
    if (getpeername((int)fd, (struct sockaddr*)&addr, &len) < 0) {
        return nyx_string_from_cstr("unknown");
    }
    char ip_buf[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &addr.sin_addr, ip_buf, sizeof(ip_buf));
    return nyx_string_from_cstr(ip_buf);
}

int64_t nyx_tcp_connect(const char* host, int64_t port) {
    if (!host) return -1;

    struct addrinfo hints, *result;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;

    char port_str[16];
    snprintf(port_str, sizeof(port_str), "%ld", (long)port);

    if (getaddrinfo(host, port_str, &hints, &result) != 0) return -1;

    int fd = socket(result->ai_family, result->ai_socktype, result->ai_protocol);
    if (fd < 0) {
        freeaddrinfo(result);
        return -1;
    }

    // Set non-blocking for connect with timeout
    int flags = fcntl(fd, F_GETFL, 0);
    fcntl(fd, F_SETFL, flags | O_NONBLOCK);

    int ret = connect(fd, result->ai_addr, result->ai_addrlen);
    freeaddrinfo(result);

    if (ret < 0) {
        if (errno != EINPROGRESS) {
            close(fd);
            return -1;
        }
        // Wait up to 5 seconds for connection
        struct pollfd pfd = { .fd = fd, .events = POLLOUT };
        ret = poll(&pfd, 1, 3000);
        if (ret <= 0) {
            close(fd);
            return -1;
        }
        // Check for connection error
        int err = 0;
        socklen_t len = sizeof(err);
        getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &len);
        if (err != 0) {
            close(fd);
            return -1;
        }
    }

    // Restore blocking mode
    fcntl(fd, F_SETFL, flags);

    return (int64_t)fd;
}

// Aplica SO_RCVTIMEO/SO_SNDTIMEO (en segundos) a un socket cliente. Evita que un
// host lento cuelgue tcp_read/tcp_write indefinidamente. seconds<=0 lo DESACTIVA
// (bloqueo indefinido, el default del SO). Devuelve 0 en éxito, -1 en error.
int64_t nyx_tcp_set_timeout(int64_t fd, int64_t seconds) {
    if (fd < 0) return -1;
    struct timeval tv;
    tv.tv_sec  = (time_t)(seconds > 0 ? seconds : 0);
    tv.tv_usec = 0;
    int r1 = setsockopt((int)fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
    int r2 = setsockopt((int)fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
    return (r1 == 0 && r2 == 0) ? 0 : -1;
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
        ssize_t n = recv((int)fd, out + total, max_bytes - total, 0);
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
        ssize_t n = recv((int)fd, out, max_bytes, 0);
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
    int sh = SHUT_RDWR;
    if (how == 0) sh = SHUT_RD;
    else if (how == 1) sh = SHUT_WR;
    return (int64_t)shutdown((int)fd, sh);
}

nyx_string* nyx_tcp_read_line(int64_t fd) {
    nyx_conn_buf_t* cb = get_conn_buf((int)fd);

    // Fallback to unbuffered if fd too large
    if (!cb) {
        char line[4096];
        int lpos = 0;
        char c;
        while (lpos < 4095) {
            ssize_t n = recv((int)fd, &c, 1, 0);
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
            ssize_t n = recv((int)fd, cb->buf, NYX_NET_BUF_SIZE, 0);
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
        ssize_t sent = send((int)fd, buf + total, len - total, MSG_NOSIGNAL);
        if (sent <= 0) break;
        total += sent;
    }
    return (int64_t)total;
}

// Write RESP bulk string directly to socket: $len\r\ndata\r\n
// Zero allocations — builds header on stack, uses writev for single syscall.
int64_t nyx_resp_write_bulk(int64_t fd, nyx_string* data) {
    if (!data || !data->data) {
        // Null bulk string
        const char* null_resp = "$-1\r\n";
        return (int64_t)send((int)fd, null_resp, 5, MSG_NOSIGNAL);
    }
    char header[32];
    int hlen = snprintf(header, sizeof(header), "$%ld\r\n", (long)data->length);
    struct iovec iov[3];
    iov[0].iov_base = header;
    iov[0].iov_len = hlen;
    iov[1].iov_base = data->data;
    iov[1].iov_len = data->length;
    iov[2].iov_base = (void*)"\r\n";
    iov[2].iov_len = 2;
    return (int64_t)writev((int)fd, iov, 3);
}

void nyx_tcp_close(int64_t fd) {
    reset_conn_buf((int)fd);
    close((int)fd);
}

// ===== Fast HTTP Request Parser (C-level, minimal GC allocs) =====

#include "runtime-arrays.h"

// Buffered line read into stack buffer — NO GC allocation
// Returns length of line read (0 = connection closed/error)
static int buffered_read_line(int fd, nyx_conn_buf_t* cb, char* out, int max_len) {
    int lpos = 0;
    while (lpos < max_len - 1) {
        if (cb->pos >= cb->len) {
            ssize_t n = recv(fd, cb->buf, NYX_NET_BUF_SIZE, 0);
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
            ssize_t r = recv(fd, cb->buf, NYX_NET_BUF_SIZE, 0);
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
            ssize_t r = recv((int)fd, out + got, (int)n - got, 0);
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
            ssize_t n = recv((int)fd, body_buf + total, content_length - total, 0);
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
    int fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (fd < 0) return -1;

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);

    if (host && strlen(host) > 0) {
        inet_pton(AF_INET, host, &addr.sin_addr);
    } else {
        addr.sin_addr.s_addr = INADDR_ANY;
    }

    if (bind(fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        /* Misma familia que el bind de tcp_listen (friction 2026-08-01):
         * fallo de bind ruidoso por stderr, retorno -1 intacto. */
        int bind_errno = errno;
        fprintf(stderr, "nyx: udp_bind: cannot bind port %lld: %s\n",
                (long long)port, strerror(bind_errno));
        close(fd);
        return -1;
    }

    return (int64_t)fd;
}

int64_t nyx_udp_sendto(int64_t fd, nyx_string* data, const char* host, int64_t port) {
    if (!data || !host) return -1;

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);
    inet_pton(AF_INET, host, &addr.sin_addr);

    // Binary-safe: usa data->length (el ABI ya lo trae), no strlen(cstr) --
    // un payload con bytes NUL (probes DNS/NTP/SNMP) se cortaba en el primer
    // '\0'. Sin loop de reintento: un sendto corto en un socket de datagramas
    // no es reintentable, es un error que el caller debe ver.
    size_t len = (size_t)data->length;
    ssize_t sent = sendto((int)fd, data->data, len, 0,
                          (struct sockaddr*)&addr, sizeof(addr));
    return (int64_t)sent;
}

nyx_string* nyx_udp_recvfrom(int64_t fd, int64_t max_bytes) {
    if (max_bytes <= 0) max_bytes = 4096;
    char* buf = (char*)GC_MALLOC(max_bytes + 1);
    if (!buf) return nyx_string_from_cstr("");

    struct sockaddr_in sender_addr;
    socklen_t addr_len = sizeof(sender_addr);
    ssize_t n = recvfrom((int)fd, buf, max_bytes, 0,
                         (struct sockaddr*)&sender_addr, &addr_len);
    if (n < 0) return nyx_string_from_cstr("");
    // Binary-safe: nyx_string_from_ptr hace memcpy de exactamente `n` bytes
    // (length real de recvfrom), no nyx_string_from_cstr(buf) que remedía con
    // strlen y truncaba en el primer NUL. n==0 es un datagrama vacío legítimo.
    return nyx_string_from_ptr(buf, (int64_t)n);
}

// ===== DNS =====

// Reverse DNS (IDEA del reporte MCP-stdio/lanpass, 2026-08-06): IP -> hostname.
// Fail-soft como nyx_resolve: "" si no hay PTR o la IP es inválida (NI_NAMEREQD
// evita devolver la IP misma como "nombre").
nyx_string* nyx_resolve_ptr(const char* ip) {
    if (!ip) return nyx_string_from_cstr("");
    struct sockaddr_in sa;
    memset(&sa, 0, sizeof(sa));
    sa.sin_family = AF_INET;
    if (inet_pton(AF_INET, ip, &sa.sin_addr) != 1) {
        return nyx_string_from_cstr("");
    }
    char host[NI_MAXHOST];
    if (getnameinfo((struct sockaddr*)&sa, sizeof(sa), host, sizeof(host),
                    NULL, 0, NI_NAMEREQD) != 0) {
        return nyx_string_from_cstr("");
    }
    return nyx_string_from_cstr(host);
}

// Enumeración de interfaces IPv4 (IDEA del mismo reporte): Array plano de
// TRIPLETAS String [nombre, ip, máscara, nombre, ip, máscara, ...] — stride 3.
// Solo AF_INET con dirección asignada; loopback incluida (el caller filtra).
nyx_array_t* nyx_net_interfaces() {
    nyx_array_t* out = nyx_array_new(8);
    struct ifaddrs* ifs = NULL;
    if (getifaddrs(&ifs) != 0) return out;
    for (struct ifaddrs* it = ifs; it != NULL; it = it->ifa_next) {
        if (!it->ifa_addr || it->ifa_addr->sa_family != AF_INET) continue;
        char ip[INET_ADDRSTRLEN] = "";
        char mask[INET_ADDRSTRLEN] = "";
        struct sockaddr_in* a = (struct sockaddr_in*)it->ifa_addr;
        inet_ntop(AF_INET, &a->sin_addr, ip, sizeof(ip));
        if (it->ifa_netmask) {
            struct sockaddr_in* m = (struct sockaddr_in*)it->ifa_netmask;
            inet_ntop(AF_INET, &m->sin_addr, mask, sizeof(mask));
        }
        nyx_array_push_tagged(out, (int64_t)(intptr_t)nyx_string_from_cstr(it->ifa_name), 2);
        nyx_array_push_tagged(out, (int64_t)(intptr_t)nyx_string_from_cstr(ip), 2);
        nyx_array_push_tagged(out, (int64_t)(intptr_t)nyx_string_from_cstr(mask), 2);
    }
    freeifaddrs(ifs);
    return out;
}

nyx_string* nyx_resolve(const char* hostname) {
    if (!hostname) return nyx_string_from_cstr("");

    struct addrinfo hints, *result;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET;

    if (getaddrinfo(hostname, NULL, &hints, &result) != 0) {
        return nyx_string_from_cstr("");
    }

    struct sockaddr_in* addr = (struct sockaddr_in*)result->ai_addr;
    char ip[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &addr->sin_addr, ip, sizeof(ip));
    freeaddrinfo(result);

    return nyx_string_from_cstr(ip);
}
