// ============================================
// TLS.C - TLS/HTTPS Runtime for Nyx
// ============================================
// Provides HTTPS GET/POST and a raw TLS connection API via OpenSSL.
// Link with: -lssl -lcrypto
//
// Design notes:
// - All heap allocations go through Boehm GC (GC_MALLOC / GC_MALLOC_ATOMIC).
//   Never call free() on GC-managed memory.
// - The SSL* and SSL_CTX* objects are OpenSSL-managed (not GC-managed).
//   They must be released explicitly with SSL_free / SSL_CTX_free and the
//   underlying socket must be closed with close().  nyx_tls_close() does all
//   of this; the https_* helpers also clean up after themselves.
// - A single SSL_CTX (TLS client mode, peer verification disabled for
//   simplicity) is created once at first use and reused across calls.
//   Peer verification is intentionally skipped here to keep the runtime
//   dependency-free (no CA bundle path required); callers that need strict
//   verification should use the raw nyx_tls_connect API and configure OpenSSL
//   directly from Nyx FFI.
// - 10-second socket timeouts (SO_RCVTIMEO / SO_SNDTIMEO) are applied to
//   every new socket.
// - Chunked transfer encoding: DECODED here. read_http_response inspects the
//   response headers for `Transfer-Encoding: chunked` and, if present, strips
//   the chunk framing via nyx_http_dechunk before returning the body. (A prior
//   version returned the raw body with chunk-size lines embedded, which split a
//   number mid-value on multi-chunk responses and aborted nyx-venezuelainfo in
//   production on 2026-07-16 — criptoya.com/bolsadecaracas.com respond chunked.)
// ============================================

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>
#include <errno.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <poll.h>
#include <time.h>
#include <fcntl.h>

#include <openssl/ssl.h>
#include <openssl/err.h>

#include <gc.h>
#include "strings.h"
#include "tls.h"

// ===== SSL context (lazy-initialised, shared across calls) =====

// The context is intentionally file-static so it is created at most once
// per process.  SSL_CTX is thread-safe for concurrent SSL_new() calls after
// initialisation, so no mutex is needed here.
static SSL_CTX* g_ssl_ctx = NULL;

static SSL_CTX* get_ssl_ctx(void) {
    if (g_ssl_ctx) return g_ssl_ctx;

    // OpenSSL 1.1+ initialises itself automatically; the explicit
    // SSL_library_init / OpenSSL_add_all_algorithms calls are no-ops but
    // kept for compatibility with older distributions.
#if OPENSSL_VERSION_NUMBER < 0x10100000L
    SSL_library_init();
    SSL_load_error_strings();
    OpenSSL_add_all_algorithms();
#else
    OPENSSL_init_ssl(0, NULL);
#endif

    g_ssl_ctx = SSL_CTX_new(TLS_client_method());
    if (!g_ssl_ctx) return NULL;

    // Disable peer certificate verification so the runtime works without
    // a CA bundle.  See design note at the top of the file.
    SSL_CTX_set_verify(g_ssl_ctx, SSL_VERIFY_NONE, NULL);

    return g_ssl_ctx;
}

// ===== Internal helpers =====

// Apply a 10-second timeout to both send and receive on fd.
static void set_socket_timeout(int fd) {
    struct timeval tv;
    tv.tv_sec  = 10;
    tv.tv_usec = 0;
    setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
    setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
}

// Connect a TCP socket to host:port.  Returns fd >= 0 on success, -1 on error.
static int tcp_connect_fd(const char* host, int port) {
    char port_str[16];
    snprintf(port_str, sizeof(port_str), "%d", port);

    struct addrinfo hints, *res;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family   = AF_UNSPEC;   // accept IPv4 and IPv6
    hints.ai_socktype = SOCK_STREAM;

    if (getaddrinfo(host, port_str, &hints, &res) != 0) return -1;

    int fd = -1;
    for (struct addrinfo* rp = res; rp != NULL; rp = rp->ai_next) {
        fd = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
        if (fd < 0) continue;

        set_socket_timeout(fd);

        if (connect(fd, rp->ai_addr, rp->ai_addrlen) == 0) break; // success

        close(fd);
        fd = -1;
    }

    freeaddrinfo(res);
    return fd;
}

// Parse a URL of the form https://host[:port]/path
// Fills host_out (must be >= 256 bytes), port_out, path_out (must be >= 2048 bytes).
// Returns 1 on success, 0 if the URL cannot be parsed.
static int parse_https_url(const char* url,
                            char* host_out, int* port_out,
                            char* path_out) {
    // Skip scheme
    const char* p = url;
    if (strncmp(p, "https://", 8) == 0) {
        p += 8;
    } else if (strncmp(p, "http://", 7) == 0) {
        // Allow plain http:// — we will still use TLS (caller's responsibility)
        p += 7;
    }
    // else: treat the whole string as host[/path]

    // Split host and path at the first '/'
    const char* slash = strchr(p, '/');
    const char* host_end;
    if (slash) {
        host_end = slash;
        strncpy(path_out, slash, 2047);
        path_out[2047] = '\0';
    } else {
        host_end = p + strlen(p);
        path_out[0] = '/';
        path_out[1] = '\0';
    }

    // Extract host and optional :port
    *port_out = 443;
    const char* colon = memchr(p, ':', (size_t)(host_end - p));
    if (colon) {
        size_t host_len = (size_t)(colon - p);
        if (host_len >= 256) host_len = 255;
        memcpy(host_out, p, host_len);
        host_out[host_len] = '\0';
        *port_out = atoi(colon + 1);
    } else {
        size_t host_len = (size_t)(host_end - p);
        if (host_len >= 256) host_len = 255;
        memcpy(host_out, p, host_len);
        host_out[host_len] = '\0';
    }

    return (host_out[0] != '\0') ? 1 : 0;
}

// ===== Chunked transfer-encoding decoding =====

// Find the first CRLF ("\r\n") in [p, p+n); return its offset or -1. Portable
// (no memmem / _GNU_SOURCE dependency), byte-based (NUL-safe).
static long find_crlf(const char* p, size_t n) {
    if (n < 2) return -1;
    for (size_t i = 0; i + 1 < n; i++) {
        if (p[i] == '\r' && p[i + 1] == '\n') return (long)i;
    }
    return -1;
}

// See tls.h. Decodes chunked framing: <hex-size>[;ext]CRLF <size bytes> CRLF …
// until a 0-size chunk. Best-effort on malformed/truncated input. The decoded
// body is never longer than the input, so we allocate len bytes.
nyx_string* nyx_http_dechunk(const char* body, size_t len) {
    if (!body || len == 0) return nyx_string_from_cstr("");
    char* out = (char*)GC_MALLOC_ATOMIC(len + 1);
    if (!out) return nyx_string_from_cstr("");
    size_t opos = 0;
    size_t pos = 0;
    while (pos < len) {
        long crlf = find_crlf(body + pos, len - pos);
        if (crlf < 0) break;                    // no size-line terminator
        size_t line_len = (size_t)crlf;
        // Parse the hex chunk size; stop at ';' (chunk extension) or non-hex.
        size_t sz = 0;
        for (size_t i = 0; i < line_len; i++) {
            char c = body[pos + i];
            int d;
            if (c >= '0' && c <= '9') d = c - '0';
            else if (c >= 'a' && c <= 'f') d = c - 'a' + 10;
            else if (c >= 'A' && c <= 'F') d = c - 'A' + 10;
            else break;                          // ';' extension or invalid
            sz = sz * 16 + (size_t)d;
        }
        size_t data_start = pos + line_len + 2;  // skip the CRLF
        if (sz == 0) break;                      // terminating 0-size chunk
        size_t data_end = data_start + sz;
        if (data_end > len) break;               // truncated → stop, keep what we have
        memcpy(out + opos, body + data_start, sz);
        opos += sz;
        pos = data_end + 2;                      // skip the CRLF after the data
    }
    return nyx_string_from_ptr(out, opos);
}

// See tls.h. Case-insensitive scan of the header block for a
// `Transfer-Encoding:` header whose value contains `chunked`.
int nyx_http_headers_chunked(const char* headers, size_t len) {
    if (!headers || len == 0) return 0;
    static const char* KEY = "transfer-encoding";
    const size_t KEYLEN = 17;   // strlen("transfer-encoding")
    size_t pos = 0;
    while (pos < len) {
        long crlf = find_crlf(headers + pos, len - pos);
        size_t line_len = (crlf < 0) ? (len - pos) : (size_t)crlf;
        // Does this line start (case-insensitively) with the header name + ':'?
        if (line_len > KEYLEN && headers[pos + KEYLEN] == ':') {
            int name_ok = 1;
            for (size_t i = 0; i < KEYLEN; i++) {
                char c = headers[pos + i];
                if (c >= 'A' && c <= 'Z') c = (char)(c - 'A' + 'a');
                if (c != KEY[i]) { name_ok = 0; break; }
            }
            if (name_ok) {
                // Scan the value for "chunked" (case-insensitive).
                for (size_t i = KEYLEN + 1; i + 7 <= line_len; i++) {
                    int match = 1;
                    static const char* CH = "chunked";
                    for (size_t j = 0; j < 7; j++) {
                        char c = headers[pos + i + j];
                        if (c >= 'A' && c <= 'Z') c = (char)(c - 'A' + 'a');
                        if (c != CH[j]) { match = 0; break; }
                    }
                    if (match) return 1;
                }
            }
        }
        if (crlf < 0) break;
        pos += line_len + 2;   // next line
    }
    return 0;
}

// Read the full HTTP response from ssl, return just the body.
// Reads until SSL_read returns 0 (connection closed by server).
// The HTTP status line and headers are stripped; the body starts after \r\n\r\n.
// If the response is Transfer-Encoding: chunked, the chunk framing is decoded.
static nyx_string* read_http_response(SSL* ssl) {
    // Initial buffer capacity; grown as needed using GC_MALLOC_ATOMIC.
    size_t cap = 16384;
    char*  buf = (char*)GC_MALLOC_ATOMIC(cap);
    if (!buf) return nyx_string_from_cstr("");
    size_t total = 0;

    while (1) {
        // Ensure at least 4096 bytes of headroom.
        if (total + 4096 >= cap) {
            size_t new_cap = cap * 2;
            char*  new_buf = (char*)GC_MALLOC_ATOMIC(new_cap);
            if (!new_buf) break;
            memcpy(new_buf, buf, total);
            buf = new_buf;
            cap = new_cap;
        }

        int n = SSL_read(ssl, buf + total, 4096);
        if (n <= 0) break;  // EOF or error
        total += (size_t)n;
    }

    buf[total] = '\0';

    // Locate the blank line separating headers from body (\r\n\r\n).
    const char* body_start = strstr(buf, "\r\n\r\n");
    if (body_start) {
        body_start += 4;  // skip the \r\n\r\n itself
    } else {
        // Malformed response — return the whole buffer.
        body_start = buf;
    }

    size_t body_len = (size_t)(total - (size_t)(body_start - buf));

    // Decode chunked transfer-encoding if the headers declare it. The header
    // block is everything before body_start (the \r\n\r\n separator excluded).
    size_t header_len = (body_start > buf) ? (size_t)(body_start - buf) - 4 : 0;
    if (nyx_http_headers_chunked(buf, header_len)) {
        return nyx_http_dechunk(body_start, body_len);
    }
    return nyx_string_from_ptr(body_start, body_len);
}

// ===== Public API =====

// ===== nyx_https_get =====

nyx_string* nyx_https_get(nyx_string* url) {
    if (!url) return nyx_string_from_cstr("");

    const char* url_cstr = nyx_string_to_cstr(url);
    if (!url_cstr || url_cstr[0] == '\0') return nyx_string_from_cstr("");

    char host[256];
    char path[2048];
    int  port = 443;
    if (!parse_https_url(url_cstr, host, &port, path)) {
        return nyx_string_from_cstr("");
    }

    SSL_CTX* ctx = get_ssl_ctx();
    if (!ctx) return nyx_string_from_cstr("");

    int fd = tcp_connect_fd(host, port);
    if (fd < 0) return nyx_string_from_cstr("");

    SSL* ssl = SSL_new(ctx);
    if (!ssl) { close(fd); return nyx_string_from_cstr(""); }

    SSL_set_fd(ssl, fd);

    // Set SNI so servers that host multiple domains respond correctly.
    SSL_set_tlsext_host_name(ssl, host);

    if (SSL_connect(ssl) != 1) {
        SSL_free(ssl);
        close(fd);
        return nyx_string_from_cstr("");
    }

    // Build and send the GET request.
    // Stack buffer large enough for the typical request line + Host header.
    char req[4096];
    int  req_len = snprintf(req, sizeof(req),
        "GET %s HTTP/1.1\r\n"
        "Host: %s\r\n"
        "Connection: close\r\n"
        "User-Agent: Nyx/1.0\r\n"
        "\r\n",
        path, host);

    if (req_len <= 0 || SSL_write(ssl, req, req_len) <= 0) {
        SSL_free(ssl);
        close(fd);
        return nyx_string_from_cstr("");
    }

    nyx_string* result = read_http_response(ssl);

    SSL_shutdown(ssl);
    SSL_free(ssl);
    close(fd);
    return result;
}

// ===== nyx_https_post =====

nyx_string* nyx_https_post(nyx_string* url, nyx_string* body, nyx_string* content_type) {
    if (!url) return nyx_string_from_cstr("");

    const char* url_cstr  = nyx_string_to_cstr(url);
    const char* body_cstr = body ? nyx_string_to_cstr(body) : "";
    const char* ct_cstr   = content_type ? nyx_string_to_cstr(content_type)
                                         : "application/octet-stream";

    if (!url_cstr  || url_cstr[0]  == '\0') return nyx_string_from_cstr("");
    if (!body_cstr) body_cstr = "";
    if (!ct_cstr)   ct_cstr   = "application/octet-stream";

    char host[256];
    char path[2048];
    int  port = 443;
    if (!parse_https_url(url_cstr, host, &port, path)) {
        return nyx_string_from_cstr("");
    }

    SSL_CTX* ctx = get_ssl_ctx();
    if (!ctx) return nyx_string_from_cstr("");

    int fd = tcp_connect_fd(host, port);
    if (fd < 0) return nyx_string_from_cstr("");

    SSL* ssl = SSL_new(ctx);
    if (!ssl) { close(fd); return nyx_string_from_cstr(""); }

    SSL_set_fd(ssl, fd);
    SSL_set_tlsext_host_name(ssl, host);

    if (SSL_connect(ssl) != 1) {
        SSL_free(ssl);
        close(fd);
        return nyx_string_from_cstr("");
    }

    size_t body_len = strlen(body_cstr);

    // Build the headers into a GC_MALLOC_ATOMIC buffer (no embedded pointers).
    // Maximum header size: path(2048) + host(256) + content-type(256) + fixed ~ 256 = ~2816 bytes.
    size_t hdr_cap = 4096;
    char*  hdr     = (char*)GC_MALLOC_ATOMIC(hdr_cap);
    if (!hdr) {
        SSL_free(ssl); close(fd);
        return nyx_string_from_cstr("");
    }
    int hdr_len = snprintf(hdr, hdr_cap,
        "POST %s HTTP/1.1\r\n"
        "Host: %s\r\n"
        "Connection: close\r\n"
        "User-Agent: Nyx/1.0\r\n"
        "Content-Type: %s\r\n"
        "Content-Length: %zu\r\n"
        "\r\n",
        path, host, ct_cstr, body_len);

    int ok = (hdr_len > 0) &&
             (SSL_write(ssl, hdr, hdr_len) > 0) &&
             (body_len == 0 || SSL_write(ssl, body_cstr, (int)body_len) > 0);

    if (!ok) {
        SSL_free(ssl);
        close(fd);
        return nyx_string_from_cstr("");
    }

    nyx_string* result = read_http_response(ssl);

    SSL_shutdown(ssl);
    SSL_free(ssl);
    close(fd);
    return result;
}

// ===== TLS handle struct (shared by client and server) =====
//
// We need to store both the SSL* and the underlying fd so that close functions
// can release both resources.  The struct is GC-managed.

#define TLS_BUF_SIZE 8192

typedef struct {
    SSL* ssl;
    int  fd;
    char buf[TLS_BUF_SIZE];
    int  buf_pos;
    int  buf_len;
    // Set by nyx_tls_read_nonblock when an SSL_read comes back with anything
    // other than WANT_READ/WANT_WRITE (clean close_notify, a fatal SSL error,
    // or the underlying socket reporting EOF) — i.e. the connection is dead,
    // not just "nothing available right now". nyx_tls_wait_readable consults
    // it so a peer that sent FIN is reported as -1 (closed) instead of an
    // infinite stream of POLLIN (EOF is "readable" per poll(2), forever,
    // until someone actually reads it and sees 0/error). GC_MALLOC zeroes the
    // handle, so this starts at 0 ("alive") with no separate init needed.
    int  eof;
} NyxTlsHandle;

// ===== TLS Server API =====

// Server SSL context — separate from the client context.
static SSL_CTX* g_ssl_server_ctx = NULL;

// SNI: per-hostname SSL contexts (max 16 domains)
#define MAX_SNI_DOMAINS 16
static SSL_CTX* g_sni_contexts[MAX_SNI_DOMAINS];
static char     g_sni_hostnames[MAX_SNI_DOMAINS][256];
static int      g_sni_count = 0;

// SNI callback: select the correct SSL_CTX based on the hostname in ClientHello
static int sni_callback(SSL *ssl, int *al, void *arg) {
    (void)al; (void)arg;
    const char* servername = SSL_get_servername(ssl, TLSEXT_NAMETYPE_host_name);
    if (servername) {
        for (int i = 0; i < g_sni_count; i++) {
            if (strcmp(g_sni_hostnames[i], servername) == 0) {
                SSL_CTX* new_ctx = g_sni_contexts[i];
                SSL_set_SSL_CTX(ssl, new_ctx);
                // SSL_set_SSL_CTX switches the context but does NOT reload the
                // certificate into the SSL object. We must do it explicitly.
                SSL_use_certificate(ssl, SSL_CTX_get0_certificate(new_ctx));
                SSL_use_PrivateKey(ssl, SSL_CTX_get0_privatekey(new_ctx));
                return SSL_TLSEXT_ERR_OK;
            }
        }
    }
    return SSL_TLSEXT_ERR_OK; // use default ctx
}

int64_t nyx_tls_server_init(nyx_string* cert_path, nyx_string* key_path) {
    if (!cert_path || !key_path) return -1;

    const char* cert = nyx_string_to_cstr(cert_path);
    const char* key  = nyx_string_to_cstr(key_path);
    if (!cert || !key) return -1;

#if OPENSSL_VERSION_NUMBER < 0x10100000L
    SSL_library_init();
    SSL_load_error_strings();
    OpenSSL_add_all_algorithms();
#else
    OPENSSL_init_ssl(0, NULL);
#endif

    SSL_CTX* ctx = SSL_CTX_new(TLS_server_method());
    if (!ctx) return -1;

    // TLS 1.2+ only, disable old protocols
    SSL_CTX_set_min_proto_version(ctx, TLS1_2_VERSION);
    // Modern cipher suites for browser compatibility
    SSL_CTX_set_cipher_list(ctx, "ECDHE+AESGCM:ECDHE+CHACHA20:DHE+AESGCM:!aNULL:!MD5:!DSS");
#ifdef SSL_CTX_set_ciphersuites
    SSL_CTX_set_ciphersuites(ctx, "TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256");
#endif

    if (SSL_CTX_use_certificate_chain_file(ctx, cert) != 1) {
        SSL_CTX_free(ctx);
        return -1;
    }

    if (SSL_CTX_use_PrivateKey_file(ctx, key, SSL_FILETYPE_PEM) != 1) {
        SSL_CTX_free(ctx);
        return -1;
    }

    if (SSL_CTX_check_private_key(ctx) != 1) {
        SSL_CTX_free(ctx);
        return -1;
    }

    // Register SNI callback for virtual host support
    SSL_CTX_set_tlsext_servername_callback(ctx, sni_callback);

    g_ssl_server_ctx = ctx;
    return 0;
}

// Add an additional certificate for SNI virtual hosting.
// Must be called AFTER tls_server_init (which sets up the default cert).
int64_t nyx_tls_server_add_cert(nyx_string* hostname, nyx_string* cert_path, nyx_string* key_path) {
    if (!hostname || !cert_path || !key_path) return -1;
    if (g_sni_count >= MAX_SNI_DOMAINS) return -1;

    const char* host = nyx_string_to_cstr(hostname);
    const char* cert = nyx_string_to_cstr(cert_path);
    const char* key  = nyx_string_to_cstr(key_path);
    if (!host || !cert || !key) return -1;

    SSL_CTX* ctx = SSL_CTX_new(TLS_server_method());
    if (!ctx) return -1;

    SSL_CTX_set_min_proto_version(ctx, TLS1_2_VERSION);
    SSL_CTX_set_cipher_list(ctx, "ECDHE+AESGCM:ECDHE+CHACHA20:DHE+AESGCM:!aNULL:!MD5:!DSS");
#ifdef SSL_CTX_set_ciphersuites
    SSL_CTX_set_ciphersuites(ctx, "TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256");
#endif

    if (SSL_CTX_use_certificate_chain_file(ctx, cert) != 1) {
        SSL_CTX_free(ctx);
        return -1;
    }
    if (SSL_CTX_use_PrivateKey_file(ctx, key, SSL_FILETYPE_PEM) != 1) {
        SSL_CTX_free(ctx);
        return -1;
    }
    if (SSL_CTX_check_private_key(ctx) != 1) {
        SSL_CTX_free(ctx);
        return -1;
    }

    g_sni_contexts[g_sni_count] = ctx;
    strncpy(g_sni_hostnames[g_sni_count], host, 255);
    g_sni_hostnames[g_sni_count][255] = '\0';
    g_sni_count++;
    fprintf(stderr, "[SNI] Added cert for: %s (%d total)\n", host, g_sni_count);
    return 0;
}

int64_t nyx_tls_accept(int64_t fd) {
    if (fd < 0 || !g_ssl_server_ctx) return 0;

    // 30-second timeout to prevent workers blocking on abandoned connections
    struct timeval tv;
    tv.tv_sec = 30;
    tv.tv_usec = 0;
    setsockopt((int)fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
    setsockopt((int)fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

    SSL* ssl = SSL_new(g_ssl_server_ctx);
    if (!ssl) return 0;

    SSL_set_fd(ssl, (int)fd);

    if (SSL_accept(ssl) != 1) {
        SSL_free(ssl);
        return 0;
    }

    NyxTlsHandle* h = (NyxTlsHandle*)GC_MALLOC(sizeof(NyxTlsHandle));
    if (!h) {
        SSL_shutdown(ssl);
        SSL_free(ssl);
        return 0;
    }
    h->ssl     = ssl;
    h->fd      = (int)fd;
    h->buf_pos = 0;
    h->buf_len = 0;

    return (int64_t)(uintptr_t)h;
}

// Read one byte from the buffered TLS handle, refilling from SSL_read as needed.
// Returns 1 on success (byte written to *out), 0 on EOF/error.
static int tls_buf_getc(NyxTlsHandle* h, char* out) {
    if (h->buf_pos >= h->buf_len) {
        int n = SSL_read(h->ssl, h->buf, TLS_BUF_SIZE);
        if (n <= 0) return 0;
        h->buf_pos = 0;
        h->buf_len = n;
    }
    *out = h->buf[h->buf_pos++];
    return 1;
}

nyx_string* nyx_tls_read_line(int64_t handle) {
    if (!handle) return nyx_string_from_cstr("");

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return nyx_string_from_cstr("");

    // Buffer que CRECE: el código previo fijaba cap=1024 y cortaba con
    // `pos+1 < cap`, truncando líneas > 1023 bytes Y dejando el resto en el
    // socket → desincronizaba el protocolo. Era la causa raíz de la truncación
    // de `nyx report`: el server nyxkv lee el dato del bulk RESP con
    // tls_read_line, así que payloads > 1023 bytes (ej. un friction report de
    // ~1900B) se guardaban cortados a 1023 en la cola q:friction. Ahora la
    // línea se lee COMPLETA (hasta '\n' o EOF), duplicando el buffer al llenarse.
    size_t cap = 1024;
    char* out = (char*)GC_MALLOC_ATOMIC(cap);
    if (!out) return nyx_string_from_cstr("");
    size_t pos = 0;

    char c;
    while (tls_buf_getc(h, &c)) {
        if (c == '\n') break;
        if (c != '\r') {
            if (pos + 1 >= cap) {
                size_t ncap = cap * 2;
                char* nb = (char*)GC_MALLOC_ATOMIC(ncap);
                if (!nb) break;
                memcpy(nb, out, pos);
                out = nb;
                cap = ncap;
            }
            out[pos++] = c;
        }
    }

    out[pos] = '\0';
    return nyx_string_from_ptr(out, pos);
}

int64_t nyx_tls_write_conn(int64_t handle, nyx_string* data) {
    if (!handle || !data) return -1;

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return -1;

    if (!data->data || data->length == 0) return 0;

    size_t total = 0;
    size_t len = data->length;
    const char* buf = data->data;
    while (total < len) {
        int n = SSL_write(h->ssl, buf + total, (int)(len - total));
        if (n <= 0) break;
        total += n;
    }
    return (total > 0) ? (int64_t)total : -1;
}

void nyx_tls_close_conn(int64_t handle) {
    if (!handle) return;

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return;

    SSL_shutdown(h->ssl);
    SSL_free(h->ssl);
    close(h->fd);

    h->ssl = NULL;
    h->fd  = -1;
}

// ===== nyx_tls_connect =====

int64_t nyx_tls_connect(nyx_string* host, int64_t port) {
    if (!host) return 0;
    const char* host_cstr = nyx_string_to_cstr(host);
    if (!host_cstr || host_cstr[0] == '\0') return 0;

    SSL_CTX* ctx = get_ssl_ctx();
    if (!ctx) return 0;

    int fd = tcp_connect_fd(host_cstr, (int)port);
    if (fd < 0) return 0;

    SSL* ssl = SSL_new(ctx);
    if (!ssl) { close(fd); return 0; }

    SSL_set_fd(ssl, fd);
    SSL_set_tlsext_host_name(ssl, host_cstr);

    if (SSL_connect(ssl) != 1) {
        SSL_free(ssl);
        close(fd);
        return 0;
    }

    // GC_MALLOC because the struct contains a pointer field (ssl) that we
    // want the GC to keep alive as long as the handle is reachable.
    NyxTlsHandle* h = (NyxTlsHandle*)GC_MALLOC(sizeof(NyxTlsHandle));
    if (!h) {
        SSL_shutdown(ssl);
        SSL_free(ssl);
        close(fd);
        return 0;
    }
    h->ssl     = ssl;
    h->fd      = fd;
    h->buf_pos = 0;
    h->buf_len = 0;

    return (int64_t)(uintptr_t)h;
}

// ===== nyx_tls_read =====

nyx_string* nyx_tls_read(int64_t handle, int64_t max_bytes) {
    if (!handle) return nyx_string_from_cstr("");

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return nyx_string_from_cstr("");

    if (max_bytes <= 0) max_bytes = 4096;

    char* out = (char*)GC_MALLOC_ATOMIC((size_t)max_bytes + 1);
    if (!out) return nyx_string_from_cstr("");

    size_t total = 0;

    // First drain any buffered bytes from read_line
    int avail = h->buf_len - h->buf_pos;
    if (avail > 0) {
        int take = avail < (int)max_bytes ? avail : (int)max_bytes;
        memcpy(out, h->buf + h->buf_pos, take);
        h->buf_pos += take;
        total = take;
    }

    // Read remaining directly from SSL
    while ((int64_t)total < max_bytes) {
        int want = (int)(max_bytes - (int64_t)total);
        int n = SSL_read(h->ssl, out + total, want);
        if (n <= 0) break;
        total += n;
    }

    if (total == 0) return nyx_string_from_cstr("");
    out[total] = '\0';
    return nyx_string_from_ptr(out, total);
}

// ===== nyx_tls_read_partial =====
// Como nyx_tls_read pero retorna tras el PRIMER SSL_read (datos disponibles ahora),
// sin bloquear hasta llenar max_bytes. Para relays de túnel (WebSocket/streaming).
// Devuelve "" en EOF/error.
nyx_string* nyx_tls_read_partial(int64_t handle, int64_t max_bytes) {
    if (!handle) return nyx_string_from_cstr("");

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return nyx_string_from_cstr("");

    if (max_bytes <= 0) max_bytes = 4096;

    char* out = (char*)GC_MALLOC_ATOMIC((size_t)max_bytes + 1);
    if (!out) return nyx_string_from_cstr("");

    size_t total = 0;

    // Drenar bytes bufferizados de read_line primero
    int avail = h->buf_len - h->buf_pos;
    if (avail > 0) {
        int take = avail < (int)max_bytes ? avail : (int)max_bytes;
        memcpy(out, h->buf + h->buf_pos, take);
        h->buf_pos += take;
        total = take;
    }

    // Si no había buffer, UN solo SSL_read
    if (total == 0) {
        int n = SSL_read(h->ssl, out, (int)max_bytes);
        if (n > 0) total = n;
    }

    if (total == 0) return nyx_string_from_cstr("");
    out[total] = '\0';
    return nyx_string_from_ptr(out, total);
}

// ===== nyx_tls_wait_readable =====
// Poll-then-lock primitive: wait for TLS data to be readable WITHOUT taking
// a lock and WITHOUT consuming it, so a caller can then take a lock only for
// the fast, non-blocking SSL_read that follows. Fixes a deadlock a naive
// mutex-around-blocking-read would cause against a concurrent writer on the
// same handle (nyx-proxy's WS tunnel: SSL_read/SSL_write race on one SSL*).
//
// SSL_pending() FIRST: bytes already decrypted into OpenSSL's internal
// buffer (or into our own read_line buffer, h->buf) already left the socket
// — poll() on the fd may never wake for them.
//
// CAVEAT (verified empirically against a real TLS 1.3 loopback pair): a
// POLLIN wake on the fd means bytes are QUEUED, not that they are
// application data. A TLS 1.3 peer routinely pushes NewSessionTicket
// messages right after the handshake Finished; those are real bytes on the
// wire, so wait_readable correctly reports 1 for them (this is what "the fd
// is legible" means, per contract) — but the SSL_read() the caller takes
// the lock for next can then consume just that control record, find no
// application data behind it, and block on a fresh recv() until more
// arrives. wait_readable answers "is there something to read right now",
// not "will the next SSL_read return without blocking" — callers on a
// latency-sensitive path (nyx-proxy's WS tunnel) should still keep read
// calls non-huge/partial (nyx_tls_read_partial) so a stall here is bounded
// by the peer's next write, not by a fixed buffer size.
int64_t nyx_tls_wait_readable(int64_t handle, int64_t timeout_ms) {
    if (!handle) return -1;

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return -1;

    // Bytes already sitting in our own line-buffer or OpenSSL's internal
    // buffer are readable NOW, regardless of what the fd looks like.
    if (h->buf_len - h->buf_pos > 0) return 1;
    if (SSL_pending(h->ssl) > 0) return 1;
    // No re-check of SSL_pending() after poll(): a POLLIN wake here means new
    // ciphertext just landed on the fd, which SSL_read() (not this function —
    // it never calls SSL_read) would have to consume before SSL_pending()
    // could report anything; re-checking SSL_pending() without an intervening
    // SSL_read is always the same "0" it was before poll(), so it would be
    // dead code, not a second real signal.

    // A prior nyx_tls_read_nonblock() already saw the connection die (clean
    // close_notify, fatal SSL error, or the socket itself hitting EOF). Report
    // it here rather than polling: after FIN, the fd stays POLLIN-readable
    // FOREVER (that's what "readable" means for EOF per poll(2)) even though
    // there is nothing left to read, which would otherwise make this function
    // return 1 in a permanent busy-spin against a caller that keeps getting ""
    // back from read_nonblock. This is what makes the "-1 = the peer is gone"
    // contract documented on this function (and read_nonblock's header) true.
    if (h->eof) return -1;

    int fd = SSL_get_fd(h->ssl);
    if (fd < 0) return -1;

    struct timespec start;
    clock_gettime(CLOCK_MONOTONIC, &start);
    int64_t remaining_ms = timeout_ms;

    for (;;) {
        struct pollfd pfd;
        pfd.fd = fd;
        pfd.events = POLLIN;
        pfd.revents = 0;
        int t;
        if (remaining_ms < 0) {
            t = -1; // wait indefinitely
        } else {
            t = (remaining_ms > 2147483647) ? 2147483647 : (int)remaining_ms;
        }

        int rc = poll(&pfd, 1, t);
        if (rc == 0) return 0; // timeout expired, no data

        if (rc < 0) {
            if (errno == EINTR) {
                if (timeout_ms < 0) continue; // no deadline, just retry
                struct timespec now;
                clock_gettime(CLOCK_MONOTONIC, &now);
                int64_t elapsed_ms = (now.tv_sec - start.tv_sec) * 1000
                                    + (now.tv_nsec - start.tv_nsec) / 1000000;
                remaining_ms = timeout_ms - elapsed_ms;
                if (remaining_ms <= 0) return 0;
                continue;
            }
            return -1; // real poll() error (e.g. EBADF)
        }

        // POLLIN FIRST, always: on Linux a peer that writes its last frame and
        // then closes (FIN) can deliver revents == POLLIN|POLLHUP in the SAME
        // poll() wakeup — checking POLLERR/POLLHUP/POLLNVAL first would return
        // -1 and lose that last readable frame, exactly the "upstream closes
        // first" scenario this builtin exists to unblock (see nyx-proxy's WS
        // tunnel). Precedent: event_loop.c also checks POLLIN before POLLERR.
        // So: POLLIN set (with or without HUP) -> 1; only POLLERR/POLLNVAL, or
        // HUP WITHOUT POLLIN (nothing left to read, peer gone) -> -1.
        if (pfd.revents & POLLIN) return 1;
        if (pfd.revents & (POLLERR | POLLHUP | POLLNVAL)) return -1;
        return 0;
    }
}

// ===== nyx_tls_read_nonblock =====
// Companion to nyx_tls_wait_readable for the poll-then-lock pattern: once the
// caller knows (via wait_readable, taken WITHOUT a lock) that the fd looks
// readable, it takes a lock and calls this — which is guaranteed to return
// immediately instead of possibly blocking in recv(). That guarantee is what
// closes the caveat documented on nyx_tls_wait_readable above: a POLLIN wake
// can be a TLS 1.3 control record (e.g. NewSessionTicket) with no application
// data behind it, and a plain blocking SSL_read() in that case stalls in a
// fresh recv() until the peer sends more — WITH THE LOCK HELD, stalling the
// concurrent writer on the same handle (nyx-proxy's WS tunnel). This function
// makes that impossible: the fd is O_NONBLOCK for the single SSL_read, so a
// "consumed only a control record" SSL_read returns WANT_READ instead of
// blocking, and this maps to "" — the lock is held only as long as the
// non-blocking syscall itself takes.
//
// Same buffered-bytes-first handling as nyx_tls_read_partial (h->buf), then
// ONE SSL_read (never a drain loop — the caller re-enters via wait_readable,
// and the lock must be released quickly, not held to drain everything).
nyx_string* nyx_tls_read_nonblock(int64_t handle, int64_t max_bytes) {
    if (!handle) return nyx_string_from_cstr("");
    if (max_bytes <= 0) return nyx_string_from_cstr("");

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return nyx_string_from_cstr("");

    // Bytes already sitting in our internal line-buffer don't need a socket
    // op at all — serve them without touching O_NONBLOCK.
    int avail = h->buf_len - h->buf_pos;
    if (avail > 0) {
        int take = avail < (int)max_bytes ? avail : (int)max_bytes;
        char* out = (char*)GC_MALLOC_ATOMIC((size_t)take + 1);
        if (!out) return nyx_string_from_cstr("");
        memcpy(out, h->buf + h->buf_pos, take);
        h->buf_pos += take;
        out[take] = '\0';
        return nyx_string_from_ptr(out, take);
    }

    int fd = SSL_get_fd(h->ssl);
    if (fd < 0) return nyx_string_from_cstr("");

    int saved_flags = fcntl(fd, F_GETFL, 0);
    if (saved_flags == -1) return nyx_string_from_cstr("");
    // MUST check the return: on a fd that is (still) blocking, a plain
    // SSL_read() below can BLOCK the caller — there is no "safety-net via
    // WANT_READ" on a blocking fd, WANT_READ is exactly what O_NONBLOCK makes
    // possible. If we can't arm O_NONBLOCK we must not attempt the read at
    // all (the whole point of this function is "never blocks").
    if (fcntl(fd, F_SETFL, saved_flags | O_NONBLOCK) == -1) {
        return nyx_string_from_cstr("");
    }

    char* out = (char*)GC_MALLOC_ATOMIC((size_t)max_bytes + 1);
    int64_t total = 0;
    if (out) {
        int n = SSL_read(h->ssl, out, (int)max_bytes);
        if (n > 0) {
            total = n;
        } else {
            // n <= 0: distinguish "nothing available right now" (still alive)
            // from "the connection is dead" so nyx_tls_wait_readable can stop
            // reporting POLLIN forever once the peer is gone (see the eof
            // field comment on NyxTlsHandle, and the FIX 1 test below).
            int err = SSL_get_error(h->ssl, n);
            if (err != SSL_ERROR_WANT_READ && err != SSL_ERROR_WANT_WRITE) {
                // SSL_ERROR_ZERO_RETURN (clean close_notify), SSL_ERROR_SYSCALL
                // with n==0 (peer closed without close_notify), or any other
                // fatal SSL error — all mean this handle will never produce
                // application data again.
                h->eof = 1;
            }
        }
    }

    // ALWAYS restore, even though the read above never returns early — this
    // is the one place the flag is touched, and the rest of the runtime
    // assumes every fd it owns is blocking.
    fcntl(fd, F_SETFL, saved_flags);

    if (total == 0) return nyx_string_from_cstr("");
    out[total] = '\0';
    return nyx_string_from_ptr(out, total);
}

// Test-only accessor — see tls.h for the contract.
int nyx_tls_debug_fd(int64_t handle) {
    if (!handle) return -1;
    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return -1;
    return SSL_get_fd(h->ssl);
}

// ===== nyx_tls_write =====

int64_t nyx_tls_write(int64_t handle, nyx_string* data) {
    if (!handle || !data) return -1;

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return -1;

    if (!data->data || data->length == 0) return 0;

    // SSL_write puede escribir MENOS bytes que los pedidos (frontera de record
    // TLS, ~16KB, o menos con backpressure). El código previo hacía UN solo
    // SSL_write e ignoraba el retorno parcial → truncaba payloads grandes
    // (ej. nyx report: ~2.5KB de comando RESP llegaban cortados a ~1KB a la
    // cola q:friction). Además strlen() cortaba en el primer NUL (no binary-
    // safe). Fix: loop sobre data->length (bytes) como nyx_tls_write_conn.
    size_t total = 0;
    size_t len = data->length;
    const char* buf = data->data;
    while (total < len) {
        int n = SSL_write(h->ssl, buf + total, (int)(len - total));
        if (n <= 0) break;
        total += n;
    }
    return (total > 0) ? (int64_t)total : -1;
}

// ===== nyx_tls_close =====

void nyx_tls_close(int64_t handle) {
    if (!handle) return;

    NyxTlsHandle* h = (NyxTlsHandle*)(uintptr_t)handle;
    if (!h->ssl) return;

    SSL_shutdown(h->ssl);
    SSL_free(h->ssl);
    close(h->fd);

    // Null out the fields so accidental reuse is detectable.
    h->ssl = NULL;
    h->fd  = -1;
}
