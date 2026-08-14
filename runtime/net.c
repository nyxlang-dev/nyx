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

// ===== E5.1 — trío *_result: errno como valor de retorno, sin stderr =====
//
// Espejo de nyx_tcp_connect/nyx_tcp_listen/nyx_udp_bind de arriba: MISMA
// mecánica (getaddrinfo/socket/setsockopt/connect/bind/listen), pero:
//   - `host` llega como `nyx_string*` (ABI real de extern "C" fn(host: String),
//     lección del arco E4 — NUNCA char* crudo).
//   - Retorno `int64_t`: éxito = fd (≥ 0), fallo = -errno (negativo). JAMÁS
//     `long` (rompe wasm ILP32, ver Global Constraints del plan).
//   - CERO stderr — las centinelas viejas gritan por stderr (friction
//     2026-08-01); estas reportan el fallo únicamente por el valor de
//     retorno, para que el caller Nyx (Task 2, capa `?`) decida.
//   - errno se captura EN UNA VARIABLE LOCAL inmediatamente tras el syscall
//     que falló, ANTES de cualquier close()/freeaddrinfo() que pueda
//     pisarlo (mismo cuidado que ya tenían las centinelas con bind_errno/
//     listen_errno). Si quedó 0 (syscall que no setea errno en ese camino)
//     se usa EIO (5) como fallback estable — mismo patrón que
//     nyx_file_read_result/nyx_file_write_result en file-io.c.
//   - host == NULL (puntero nulo, defensive check de ABI, no "sin host") →
//     -22 (EINVAL) en las 3 funciones. Un nyx_string* NO-nulo con length==0
//     ("") sigue significando "sin host" en listen/bind (bind-all →
//     INADDR_ANY, igual que las centinelas viejas con `host && strlen(host)
//     > 0`); connect SÍ necesita un host real para resolver.

int64_t nyx_tcp_listen_result(nyx_string* host, int64_t port) {
    if (!host) return -22; // EINVAL — puntero nulo (ABI), no "sin host"

    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }

    int opt = 1;
    setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);

    if (host->data && host->length > 0) {
        // inet_pton devuelve 0 (no 1) si `host` no es una IP numérica
        // válida (ej. "localhost") SIN tocar addr.sin_addr — que el
        // memset de arriba dejó en 0.0.0.0. Sin este guard, un hostname
        // bindeaba en silencio a INADDR_ANY (todas las interfaces) y
        // devolvía Ok: exposición silenciosa de un listener que el
        // caller pidió atar a una IP puntual. -1 (error de sistema, no
        // "no es IP") también cae acá — mismo -EINVAL, ninguna dirección
        // válida quedó armada en ningún caso.
        if (inet_pton(AF_INET, host->data, &addr.sin_addr) != 1) {
            close(fd); // el socket ya existe (se creó antes de este chequeo)
            return -22; // EINVAL
        }
    } else {
        addr.sin_addr.s_addr = INADDR_ANY;
    }

    errno = 0;
    if (bind(fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        close(fd); // tras capturar e — close() puede pisar errno
        return -(int64_t)e;
    }

    errno = 0;
    if (listen(fd, 128) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        close(fd);
        return -(int64_t)e;
    }

    return (int64_t)fd;
}

int64_t nyx_tcp_connect_result(nyx_string* host, int64_t port) {
    if (!host || !host->data) return -22; // EINVAL

    struct addrinfo hints, *result;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;

    char port_str[16];
    snprintf(port_str, sizeof(port_str), "%lld", (long long)port);

    int gai = getaddrinfo(host->data, port_str, &hints, &result);
    if (gai != 0) {
        // ⚠️ getaddrinfo NO setea errno: devuelve códigos EAI_* en un
        // namespace propio. Solo EAI_SYSTEM delega a un errno real (lo
        // setea la syscall interna que falló); el resto de fallos de
        // resolución (EAI_NONAME/EAI_AGAIN/EAI_NODATA/...) se mapean a un
        // código estable y documentado: EHOSTUNREACH (113) — "no se pudo
        // alcanzar/resolver el host", medido en este entorno con un host
        // inexistente (gai=EAI_NONAME=-2, errno=0, ver task-1-report.md).
        if (gai == EAI_SYSTEM) {
            int e = errno ? errno : 5 /* EIO */;
            return -(int64_t)e;
        }
        return -113; // EHOSTUNREACH
    }

    int fd = socket(result->ai_family, result->ai_socktype, result->ai_protocol);
    if (fd < 0) {
        int e = errno ? errno : 5 /* EIO */;
        freeaddrinfo(result);
        return -(int64_t)e;
    }

    // Set non-blocking for connect with timeout (misma mecánica que la
    // centinela nyx_tcp_connect)
    int flags = fcntl(fd, F_GETFL, 0);
    fcntl(fd, F_SETFL, flags | O_NONBLOCK);

    errno = 0;
    int ret = connect(fd, result->ai_addr, result->ai_addrlen);
    int connect_errno = errno; // capturado ANTES de freeaddrinfo/close
    freeaddrinfo(result);

    if (ret < 0) {
        if (connect_errno != EINPROGRESS) {
            int e = connect_errno ? connect_errno : 5 /* EIO */;
            close(fd);
            return -(int64_t)e;
        }
        // Wait up to 3 seconds for connection (mismo timeout que la centinela)
        struct pollfd pfd = { .fd = fd, .events = POLLOUT };
        errno = 0;
        ret = poll(&pfd, 1, 3000);
        if (ret < 0) {
            int e = errno ? errno : 5 /* EIO */;
            close(fd);
            return -(int64_t)e;
        }
        if (ret == 0) {
            // Timeout: poll() no setea errno en este caso — ETIMEDOUT es
            // el código estable para "no respondió a tiempo".
            close(fd);
            return -(int64_t)ETIMEDOUT;
        }
        // Check for connection error
        int err = 0;
        socklen_t len = sizeof(err);
        getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &len);
        if (err != 0) {
            // `err` YA es un valor errno-like (lo entrega SO_ERROR directo,
            // no pasa por la variable global errno) — se usa tal cual.
            close(fd);
            return -(int64_t)err;
        }
    }

    // Restore blocking mode
    fcntl(fd, F_SETFL, flags);

    return (int64_t)fd;
}

int64_t nyx_udp_bind_result(nyx_string* host, int64_t port) {
    if (!host) return -22; // EINVAL — puntero nulo (ABI), no "sin host"

    int fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (fd < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);

    if (host->data && host->length > 0) {
        // Mismo guard que nyx_tcp_listen_result arriba: sin él, un host
        // NO-numérico ("localhost") bindea en silencio a INADDR_ANY.
        if (inet_pton(AF_INET, host->data, &addr.sin_addr) != 1) {
            close(fd); // el socket ya existe (se creó antes de este chequeo)
            return -22; // EINVAL
        }
    } else {
        addr.sin_addr.s_addr = INADDR_ANY;
    }

    errno = 0;
    if (bind(fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        close(fd);
        return -(int64_t)e;
    }

    return (int64_t)fd;
}

// ===== E5.2 — las 6 `*_result` de E/S y resolución =====
//
// Espejo de mecánica de las centinelas de arriba (nyx_tcp_accept:99,
// nyx_tcp_read:188, nyx_tcp_write:300, nyx_udp_sendto:676,
// nyx_udp_recvfrom:695, nyx_resolve:757), mismas reglas del trío E5.1:
// int64_t (jamás long), nyx_string* (jamás char* crudo), CERO stderr,
// errno capturado ANTES de close()/free, fallback EIO (5) si el syscall
// no dejó errno.
//
// SONDAS (por función, mecánica que la `_result` copia o documenta que
// se aparta):
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
//     < len) { sent = send(...); if (sent <= 0) break; ... }`) -- se
//     copia tal cual. Único agregado: si el PRIMER send falla (total==0
//     al momento del fallo) se reporta -errno; si falla DESPUÉS de haber
//     mandado algo, se devuelven los bytes ya enviados (mismo criterio
//     que write(2) POSIX: un short-write con error a mitad de camino
//     reporta lo escrito, no un error que perdería esa información).
//   - sendto: la centinela usa inet_pton DIRECTO sobre `host` (no
//     getaddrinfo) y NO chequea su retorno -- un host no-numérico
//     ("localhost") deja `addr.sin_addr` en 0.0.0.0 (el memset previo) y
//     el datagrama sale mudo hacia esa dirección. Mismo guard que
//     nyx_tcp_listen_result/nyx_udp_bind_result (lección E5.1): retorno
//     de inet_pton != 1 -> -22 (EINVAL), documentado, sin sendto().
//   - recvfrom: un solo recvfrom() (la centinela no loopea, un datagrama
//     es una unidad atómica). n==0 es un datagrama vacío LEGÍTIMO (mismo
//     comentario que la centinela) -- Ok con data="", errno=0; SOLO n<0
//     es Err.
//   - resolve: la centinela usa `getaddrinfo(hostname, NULL, &hints,
//     ...)` con `hints.ai_family = AF_INET` y toma el PRIMER resultado.
//     getaddrinfo() NO setea errno -- devuelve códigos EAI_* propios.
//     Mapeo del plan: EAI_SYSTEM -> errno real (el único caso donde
//     errno es significativo); EAI_AGAIN -> 110 (ETIMEDOUT); el resto
//     (incluye EAI_NONAME, y EAI_NODATA que en este glibc/flags de build
//     ni siquiera está definido -- deprecated, requiere _GNU_SOURCE que
//     el Makefile de producción no define) -> 113 (EHOSTUNREACH), MISMO
//     código que ya usa nyx_tcp_connect_result para "no resuelve" (E5.1).
//     El *kind* Nyx (not_found/timeout/io) lo decide Task 2 (`std/net.nx`)
//     a partir de este code -- acá solo viaja el número.

int64_t nyx_tcp_accept_result(int64_t listen_fd) {
    if (listen_fd < 0) return -9; // EBADF -- fd inválido, sin llamar accept()

    struct sockaddr_in client_addr;
    socklen_t addr_len = sizeof(client_addr);
    errno = 0;
    int fd = accept((int)listen_fd, (struct sockaddr*)&client_addr, &addr_len);
    if (fd < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }
    int opt = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &opt, sizeof(opt));
    return (int64_t)fd;
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
        errno = 0;
        ssize_t n = recv((int)fd, out_buf + total, max_bytes - total, 0);
        if (n < 0) {
            if (total == 0) {
                int e = errno ? errno : 5 /* EIO */;
                nyx_array_push_tagged(out, e, NYX_TAG_INT);
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
    // Mismo loop de short-write que nyx_tcp_write:300 (la centinela YA lo
    // tenía -- se copia tal cual, sin reinventar mecánica nueva).
    while (total < len) {
        errno = 0;
        ssize_t sent = send((int)fd, buf + total, len - total, MSG_NOSIGNAL);
        if (sent <= 0) {
            if (total == 0) {
                int e = errno ? errno : 5 /* EIO */;
                return -(int64_t)e;
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

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);

    // Guard E5.1 (lección inet_pton): la centinela (nyx_udp_sendto:676) NO
    // chequea este retorno -- un host no-numérico deja sin_addr en 0.0.0.0
    // (el memset de arriba) y el datagrama sale mudo. Acá se rechaza.
    if (inet_pton(AF_INET, host->data, &addr.sin_addr) != 1) {
        return -22; // EINVAL
    }

    size_t len = (size_t)data->length;
    errno = 0;
    ssize_t sent = sendto((int)fd, data->data, len, 0,
                          (struct sockaddr*)&addr, sizeof(addr));
    if (sent < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }
    return (int64_t)sent;
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

    struct sockaddr_in sender_addr;
    socklen_t addr_len = sizeof(sender_addr);
    errno = 0;
    ssize_t n = recvfrom((int)fd, buf, max_bytes, 0,
                         (struct sockaddr*)&sender_addr, &addr_len);
    if (n < 0) {
        int e = errno ? errno : 5 /* EIO */;
        nyx_array_push_tagged(out, e, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    // n==0 es un datagrama vacío LEGÍTIMO (mismo comentario que la
    // centinela nyx_udp_recvfrom:695) -- Ok con data="", no un error.
    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_ptr(buf, (int64_t)n), NYX_TAG_STRING);
    return out;
}

nyx_array_t* nyx_resolve_result(nyx_string* host) {
    nyx_array_t* out = nyx_array_new(2);
    if (!host || !host->data) {
        nyx_array_push_tagged(out, 22 /* EINVAL */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    struct addrinfo hints, *result;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET;

    errno = 0;
    int gai = getaddrinfo(host->data, NULL, &hints, &result);
    if (gai != 0) {
        int code;
        if (gai == EAI_SYSTEM) {
            code = errno ? errno : 5 /* EIO */;
        } else if (gai == EAI_AGAIN) {
            code = 110; // ETIMEDOUT -- mapeo del plan para "resolvedor ocupado, reintentar"
        } else {
            // EAI_NONAME, EAI_NODATA (deprecated -- ni siquiera está
            // definido en este glibc sin _GNU_SOURCE, cae acá igual por
            // el default) y cualquier otro EAI_* no listado en el plan.
            code = 113; // EHOSTUNREACH -- mismo código que nyx_tcp_connect_result (E5.1)
        }
        nyx_array_push_tagged(out, code, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    struct sockaddr_in* addr = (struct sockaddr_in*)result->ai_addr;
    char ip[INET_ADDRSTRLEN] = ""; // init defensivo (fixwave docs review final E5.2, M4):
                                    // si inet_ntop() fallara devolvería NULL sin tocar
                                    // `ip`, y el nyx_string_from_cstr() de abajo leería
                                    // stack sin inicializar en vez de "".
    inet_ntop(AF_INET, &addr->sin_addr, ip, sizeof(ip));
    freeaddrinfo(result);

    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(ip), NYX_TAG_STRING);
    return out;
}

// ===== E5.2b — las 7 `*_result` restantes de red =====
//
// Espejo de mecánica de las centinelas de arriba (nyx_tcp_read_line:259,
// nyx_tcp_read_partial:221, nyx_tcp_read_exact:382, nyx_tcp_shutdown:252,
// nyx_tcp_set_timeout:178, nyx_getpeername:110, nyx_resolve_ptr:716), mismas
// reglas de E5.1/E5.2: int64_t (jamás long), nyx_string* (jamás char*
// crudo), CERO stderr, errno capturado ANTES de close()/free, fallback EIO
// (5) si el syscall no dejó errno, arrays [code, payload] con code 0 = éxito
// (NYX_TAG_INT/NYX_TAG_STRING, ver net.h).
//
// SONDAS (por función, mecánica que la `_result` copia o documenta que se
// aparta):
//   - read_line: la centinela (net.c:259) hace un char a la vez sobre el
//     conn_buf, corta en '\n' (SIN incluirlo en la línea) y descarta TODO
//     '\r' que encuentre en el camino -- no solo el que precede a un '\n'
//     inmediato. Recorte EXACTO copiado acá: `if (c != '\r') line[lpos++] =
//     c;`. La centinela vieja devuelve "" tanto si vio un '\n' pegado al
//     inicio (línea vacía real) como si el peer cerró sin mandar nada --
//     ESA es la ambigüedad que esta función existe para resolver: separa
//     "vi un '\n'" (Ok, code 0, incluso con línea "") de "corté sin ver
//     '\n'" (recv devolvió <=0). Dentro de ese segundo caso: n==0 (EOF
//     limpio) -> code NYX_NET_EOF (1000); n<0 (error real) -> code = errno
//     real (fallback EIO). En AMBOS sub-casos se descarta lo acumulado en
//     `line` -- un fragmento sin terminador no es una línea válida (mismo
//     criterio que read_exact, ver abajo). Si el loop llega al cap de 4095
//     bytes SIN ver '\n' (línea patológicamente larga), se devuelve igual
//     como Ok con lo juntado -- mismo comportamiento que la centinela vieja,
//     fuera del alcance de las sondas del plan.
//   - read_partial: la centinela (net.c:221) drena el conn_buf y si no dio
//     nada hace UN solo recv() (nunca espera a max_bytes) -- se copia tal
//     cual. Contrato DISTINTO al de read_line/read_exact (asimetría
//     deliberada, documentada en el plan): acá Ok("") ES EOF, igual que
//     nyx_udp_recvfrom_result -- code 0 siempre que no haya un error real
//     (recv<0), sin el sentinel NYX_NET_EOF.
//   - read_exact: la centinela (net.c:382, vía buffered_read_exact:362)
//     acumula hasta completar n bytes o hasta que recv() corte. La
//     `_result` usa una variante de ese helper que además reporta si el
//     corte fue EOF limpio (r==0) o error real (r<0, con su errno) --
//     necesario para no confundir "peer cerró a mitad de los n bytes" con
//     un fallo real. Si no se completan los n bytes por CUALQUIER motivo,
//     los bytes parciales se descartan (documentado en el plan): EOF ->
//     code NYX_NET_EOF (1000); error real -> code = errno.
//   - shutdown: la centinela (net.c:252) mapea how: 0->SHUT_RD, 1->SHUT_WR,
//     cualquier otro valor (incl. 2) -> SHUT_RDWR. Mismo mapeo acá, sin
//     validar `how` -- documentado, no un fallback silencioso nuevo (ya
//     era el comportamiento de la centinela).
//   - set_timeout: la centinela (net.c:178) aplica SO_RCVTIMEO/SO_SNDTIMEO
//     en SEGUNDOS enteros (tv_usec siempre 0) y seconds<=0 DESACTIVA el
//     timeout (tv_sec=0, bloqueo indefinido) -- no lo rechaza. Mismo
//     mapeo acá; si el primer setsockopt falla se reporta ESE errno sin
//     intentar el segundo (evita que un r2 exitoso pise el errno del r1
//     fallido, mismo cuidado que el trío E5.1 con bind_errno/listen_errno).
//   - getpeername: la centinela (net.c:110) devuelve el string "unknown" en
//     cualquier fallo -- muere acá, se reporta el errno real.
//   - resolve_ptr: la centinela (net.c:716) usa inet_pton para validar la
//     IP (AF_INET únicamente) y getnameinfo con NI_NAMEREQD (nunca devuelve
//     la IP misma como "nombre" cuando no hay PTR) -- getnameinfo() NO
//     setea errno, devuelve códigos EAI_* propios, mismo mapeo que
//     nyx_resolve_result: EAI_SYSTEM -> errno real, cualquier otro EAI_*
//     (incl. EAI_NONAME, el caso común de "sin PTR") -> 113 (EHOSTUNREACH),
//     el *kind* Nyx ("not_found") lo decide Task 2. IP inválida (inet_pton
//     falla) -> 22 (EINVAL), sin llamar getnameinfo -- no es un fallo de
//     resolución, es un argumento malformado.

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
            errno = 0;
            ssize_t n = recv((int)fd, &c, 1, 0);
            if (n < 0) { fail_code = errno ? errno : 5 /* EIO */; break; }
            if (n == 0) { fail_code = NYX_NET_EOF; break; }
            if (c == '\n') { got_newline = 1; break; }
            if (c != '\r') line[lpos++] = c;
        }
    } else {
        while (lpos < 4095) {
            if (cb->pos >= cb->len) {
                errno = 0;
                ssize_t n = recv((int)fd, cb->buf, NYX_NET_BUF_SIZE, 0);
                if (n < 0) { fail_code = errno ? errno : 5 /* EIO */; break; }
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
        errno = 0;
        ssize_t n = recv((int)fd, out_buf, max_bytes, 0);
        if (n < 0) {
            int e = errno ? errno : 5 /* EIO */;
            nyx_array_push_tagged(out, e, NYX_TAG_INT);
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
// limpio (r==0, *out_errno queda 0) o error real (r<0, *out_errno = errno).
// Necesaria para que read_exact_result no confunda "peer cerró a mitad de
// los n bytes" con un fallo real -- buffered_read_exact (net.c:362) colapsa
// ambos casos en "return total", que es exactamente lo que la centinela
// vieja necesita pero la `_result` no puede.
static int buffered_read_exact_result(int fd, nyx_conn_buf_t* cb, char* out, int n,
                                       int* out_errno) {
    int total = 0;
    *out_errno = 0;
    while (total < n) {
        if (cb->pos >= cb->len) {
            errno = 0;
            ssize_t r = recv(fd, cb->buf, NYX_NET_BUF_SIZE, 0);
            if (r < 0) { *out_errno = errno ? errno : 5 /* EIO */; return total; }
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
        // Espejo de la centinela (net.c:383): n<=0 es Ok trivial vacío, no
        // un error.
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
            errno = 0;
            ssize_t r = recv((int)fd, buf + got, (int)n - got, 0);
            if (r < 0) { e = errno ? errno : 5 /* EIO */; break; }
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
    int sh = SHUT_RDWR;
    if (how == 0) sh = SHUT_RD;
    else if (how == 1) sh = SHUT_WR;
    errno = 0;
    if (shutdown((int)fd, sh) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }
    return 0;
}

int64_t nyx_tcp_set_timeout_result(int64_t fd, int64_t seconds) {
    if (fd < 0) return -9; // EBADF
    struct timeval tv;
    tv.tv_sec  = (time_t)(seconds > 0 ? seconds : 0);
    tv.tv_usec = 0;
    errno = 0;
    if (setsockopt((int)fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }
    errno = 0;
    if (setsockopt((int)fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv)) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        return -(int64_t)e;
    }
    return 0;
}

nyx_array_t* nyx_getpeername_result(int64_t fd) {
    nyx_array_t* out = nyx_array_new(2);
    if (fd < 0) {
        nyx_array_push_tagged(out, 9 /* EBADF */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    struct sockaddr_in addr;
    socklen_t len = sizeof(addr);
    errno = 0;
    if (getpeername((int)fd, (struct sockaddr*)&addr, &len) < 0) {
        int e = errno ? errno : 5 /* EIO */;
        nyx_array_push_tagged(out, e, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }
    char ip_buf[INET_ADDRSTRLEN] = ""; // init defensivo, mismo cuidado que nyx_resolve_result
    inet_ntop(AF_INET, &addr.sin_addr, ip_buf, sizeof(ip_buf));
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

    struct sockaddr_in sa;
    memset(&sa, 0, sizeof(sa));
    sa.sin_family = AF_INET;
    if (inet_pton(AF_INET, ip->data, &sa.sin_addr) != 1) {
        // IP inválida -- argumento malformado, no un fallo de resolución.
        nyx_array_push_tagged(out, 22 /* EINVAL */, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    char host[NI_MAXHOST];
    errno = 0;
    int gni = getnameinfo((struct sockaddr*)&sa, sizeof(sa), host, sizeof(host),
                          NULL, 0, NI_NAMEREQD);
    if (gni != 0) {
        int code;
        if (gni == EAI_SYSTEM) {
            code = errno ? errno : 5 /* EIO */;
        } else {
            // EAI_NONAME (sin PTR -- el caso común) y cualquier otro EAI_*
            // -- mismo mapeo estable 113 (EHOSTUNREACH) que nyx_resolve_result
            // usa para "no resuelve" (documentado en el plan; el *kind*
            // Nyx "not_found" lo decide Task 2).
            code = 113;
        }
        nyx_array_push_tagged(out, code, NYX_TAG_INT);
        nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(""), NYX_TAG_STRING);
        return out;
    }

    nyx_array_push_tagged(out, 0, NYX_TAG_INT);
    nyx_array_push_tagged(out, (int64_t)nyx_string_from_cstr(host), NYX_TAG_STRING);
    return out;
}
