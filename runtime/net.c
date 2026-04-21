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
        close(fd);
        return -1;
    }

    if (listen(fd, 128) < 0) {
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

        nyx_array_t* result = nyx_array_new(count);
        for (int i = 0; i < count; i++) {
            // Read $N\r\n
            char bh[64];
            int bhlen = buffered_read_line((int)fd, cb, bh, sizeof(bh));
            if (bhlen == 0 || bh[0] != '$') return nyx_array_new(0);

            int data_len = atoi(bh + 1);
            if (data_len < 0) {
                // Null bulk string
                nyx_array_push(result, (int64_t)nyx_string_from_cstr(""));
                continue;
            }

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

            nyx_array_push(result, (int64_t)nyx_string_from_ptr(buf, got));
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
        nyx_array_push(result, (int64_t)nyx_string_from_ptr(start, p - start));
    }
    return result;
}

nyx_array_t* nyx_http_parse_request_fast(int64_t fd) {
    nyx_conn_buf_t* cb = get_conn_buf((int)fd);
    if (!cb) {
        // Return empty request: ["request", "", "", [], ""]
        nyx_array_t* empty = nyx_array_new(5);
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr("request"));
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr(""));
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr(""));
        nyx_array_push(empty, (int64_t)nyx_array_new(0));
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr(""));
        return empty;
    }

    // Parse request line on stack
    char line[4096];
    int len = buffered_read_line((int)fd, cb, line, sizeof(line));
    if (len == 0) {
        // Client disconnected — return empty request
        nyx_array_t* empty = nyx_array_new(5);
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr("request"));
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr(""));
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr(""));
        nyx_array_push(empty, (int64_t)nyx_array_new(0));
        nyx_array_push(empty, (int64_t)nyx_string_from_cstr(""));
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
            nyx_array_push(headers, (int64_t)key);
            nyx_array_push(headers, (int64_t)val);

            // Check Content-Length
            if (colon - hdr == 14 && strncmp(hdr, "Content-Length", 14) == 0) {
                content_length = atoll(colon + 2);
            }
        }
    }

    // Read body if Content-Length > 0
    nyx_string* body_str;
    if (content_length > 0 && content_length < 1048576) {
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
        body_str = nyx_string_from_cstr("");
    }

    // Build result: ["request", method, path, headers, body]
    nyx_array_t* result = nyx_array_new(5);
    nyx_array_push(result, (int64_t)nyx_string_from_cstr("request"));
    nyx_array_push(result, (int64_t)method_str);
    nyx_array_push(result, (int64_t)path_str);
    nyx_array_push(result, (int64_t)headers);
    nyx_array_push(result, (int64_t)body_str);
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
        close(fd);
        return -1;
    }

    return (int64_t)fd;
}

int64_t nyx_udp_sendto(int64_t fd, nyx_string* data, const char* host, int64_t port) {
    if (!data || !host) return -1;
    const char* cstr = nyx_string_to_cstr(data);
    if (!cstr) return -1;

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons((uint16_t)port);
    inet_pton(AF_INET, host, &addr.sin_addr);

    ssize_t sent = sendto((int)fd, cstr, strlen(cstr), 0,
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
    if (n <= 0) return nyx_string_from_cstr("");
    buf[n] = '\0';
    return nyx_string_from_cstr(buf);
}

// ===== DNS =====

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
