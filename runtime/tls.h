// ============================================
// TLS.H - TLS/HTTPS Runtime for Nyx
// ============================================
// Provides HTTPS requests and raw TLS connections via OpenSSL.
// Link with: -lssl -lcrypto
// ============================================

#ifndef NYX_TLS_H
#define NYX_TLS_H

#include <stdint.h>
#include "strings.h"
#include "runtime-arrays.h"

// ===== HTTPS high-level API =====

// Performs an HTTPS GET request to url.
// Returns the response body as a nyx_string*.
// Returns an empty string on any error (DNS, TLS, HTTP).
nyx_string* nyx_https_get(nyx_string* url);

// Performs an HTTPS POST request to url with the given body and content_type.
// Returns the response body as a nyx_string*.
// Returns an empty string on any error.
nyx_string* nyx_https_post(nyx_string* url, nyx_string* body, nyx_string* content_type);

// ===== Chunked transfer-encoding (used internally by the https_* helpers) =====

// Returns 1 if the given HTTP header block (bytes before the blank line)
// contains a `Transfer-Encoding:` header whose value includes `chunked`
// (case-insensitive). 0 otherwise. `len` is the header block length in bytes.
int nyx_http_headers_chunked(const char* headers, size_t len);

// Decodes an HTTP chunked-transfer-encoding body. Reads `<hex-size>[;ext]CRLF
// <size bytes> CRLF` repeatedly until the 0-size chunk. Binary-safe (length-
// based, NUL-safe). Malformed/truncated framing → returns what decoded so far
// (best-effort, matching std/http). Mirrors std/http http_dechunk_str.
nyx_string* nyx_http_dechunk(const char* body, size_t len);

// ===== TLS Server API =====

// Initialise a TLS server context with a PEM certificate and private key.
// Returns 0 on success, -1 on error.
int64_t nyx_tls_server_init(nyx_string* cert_path, nyx_string* key_path);

// Add an SNI certificate for a specific hostname.
// Must be called after tls_server_init. Returns 0 on success, -1 on error.
int64_t nyx_tls_server_add_cert(nyx_string* hostname, nyx_string* cert_path, nyx_string* key_path);

// Perform a TLS handshake on an already-accepted TCP socket fd.
// Returns an opaque handle (NyxTlsHandle* cast to int64_t) on success, 0 on error.
int64_t nyx_tls_accept(int64_t fd);

// Read a line (up to \n) from a TLS connection. Returns the line as a nyx_string*.
nyx_string* nyx_tls_read_line(int64_t handle);

// Write data to a TLS connection. Returns bytes written, or -1 on error.
int64_t nyx_tls_write_conn(int64_t handle, nyx_string* data);

// Close a TLS server connection: SSL_shutdown + SSL_free + close(fd).
void nyx_tls_close_conn(int64_t handle);

// ===== Raw TLS connection API =====

// Opens a TLS connection to host:port.
// Returns an opaque handle (SSL* cast to int64_t) on success, 0 on error.
// The caller is responsible for calling nyx_tls_close() when done.
int64_t nyx_tls_connect(nyx_string* host, int64_t port);

// ===== Verificación de certificados OPT-IN =================================
//
// Vive en un SSL_CTX SEPARADO del que usan nyx_tls_connect / https_* — ese
// contexto no se toca. Ningún camino existente cambia de comportamiento por
// llamar a estas dos funciones.
//
// Carga anclas de confianza en el contexto verificador (y SOLO en ese).
// path == "" (o NULL) -> SSL_CTX_set_default_verify_paths (almacén del sistema).
// Las llamadas ACUMULAN anclas. Devuelve 0 ok / -1 error.
// Debe llamarse ANTES del primer connect verificado.
int64_t nyx_tls_set_ca_file(nyx_string* path);

// Abre una conexión TLS con verificación seleccionable. Devuelve un handle
// intercambiable con nyx_tls_read/write/close (misma forma que el de
// nyx_tls_connect), o 0 si falla.
//   verify_mode 0 -> idéntico a nyx_tls_connect (contexto compartido, sin
//                    verificar). Delega literalmente en él.
//   verify_mode 1 -> "checked" (blando): contexto verificador con las CAs
//                    cargadas pero SSL_VERIFY_NONE, así que el handshake SIEMPRE
//                    tiene éxito y nyx_tls_verify_result() reporta si habría
//                    fallado. Es el modo de un escáner: conectarse a un host con
//                    el certificado vencido y REPORTARLO.
//   verify_mode 2 -> "strict": SSL_VERIFY_PEER + verificación de identidad
//                    (SSL_set1_host para nombres, X509_VERIFY_PARAM_set1_ip_asc
//                    para literales IP). Handshake fallido -> 0.
int64_t nyx_tls_connect_ex(nyx_string* host, int64_t port, int64_t verify_mode);

// Reads up to max_bytes from an open TLS connection.
// Returns the data as a nyx_string*. Returns an empty string on error or EOF.
nyx_string* nyx_tls_read(int64_t handle, int64_t max_bytes);

// Partial read: returns after the first SSL_read (data available now), without
// blocking until max_bytes. For tunnel/streaming relays. Empty string on EOF/error.
nyx_string* nyx_tls_read_partial(int64_t handle, int64_t max_bytes);

// Waits (without consuming) for TLS data to become readable, up to timeout_ms.
// Poll-then-lock primitive: lets a caller wait for readability WITHOUT holding
// a lock, then take the lock only for the SSL_read that follows — avoids the
// deadlock a naive mutex around a blocking read would cause against a
// concurrent writer on the same handle (nyx-proxy WS tunnel).
// Checks SSL_pending() (and the internal read_line buffer) both before AND
// after poll(): bytes already decrypted into OpenSSL's/our internal buffer
// won't necessarily wake poll() on the fd, since they already left the socket.
// timeout_ms < 0 means wait indefinitely.
// Returns: 1 = data ready now; 0 = timeout expired with no data;
// -1 = invalid/closed handle or poll error (EBADF, POLLERR/POLLHUP/POLLNVAL).
// EINTR retries poll() with the remaining time instead of returning -1.
// CAVEAT: "readable" means the fd has bytes queued, not that they are
// application data — see the caveat in tls.c (TLS 1.3 post-handshake
// NewSessionTicket noise can make the SSL_read that follows still block).
int64_t nyx_tls_wait_readable(int64_t handle, int64_t timeout_ms);

// Non-blocking read: returns application data available RIGHT NOW (up to
// max_bytes), NEVER blocking — the fd is switched to O_NONBLOCK only for the
// duration of the single underlying SSL_read (fcntl save/set/restore, always
// restored even on error/early-return — the rest of the runtime assumes a
// blocking fd). Companion to nyx_tls_wait_readable for the poll-then-lock
// pattern: the caller waits WITHOUT a lock, then takes the lock only for this
// call, which is guaranteed not to stall it.
// Serves already-buffered bytes (h->buf) first, same as nyx_tls_read_partial.
// Returns "" when there is no application data available now — this
// includes: WANT_READ/WANT_WRITE (nothing to consume, or a renegotiation
// write would block), a clean close_notify (SSL_ERROR_ZERO_RETURN), EAGAIN
// on the raw syscall, and consuming only a TLS control record (e.g. a TLS 1.3
// NewSessionTicket) with no application data behind it yet — see the caveat
// on nyx_tls_wait_readable. "" is therefore ambiguous between "nothing yet"
// and "connection closed"; callers detect connection death the same way the
// rest of the tls_read_* family does: the next nyx_tls_wait_readable() call
// returning -1, or a subsequent write failing. max_bytes <= 0 -> "".
nyx_string* nyx_tls_read_nonblock(int64_t handle, int64_t max_bytes);

// Test-only accessor: exposes the underlying fd of a TLS handle so unit
// tests can verify the O_NONBLOCK save/restore contract of
// nyx_tls_read_nonblock via fcntl(fd, F_GETFL). NOT wired to the compiler —
// not part of the Nyx-facing builtin surface. Returns -1 for an invalid
// handle.
int nyx_tls_debug_fd(int64_t handle);

// Writes data to an open TLS connection.
// Returns the number of bytes written, or -1 on error.
int64_t nyx_tls_write(int64_t handle, nyx_string* data);

// Closes a TLS connection and releases the SSL context.
// After this call the handle must not be used again.
void nyx_tls_close(int64_t handle);

// ===== Peer / session introspection =====
//
// Read-only accessors over the live SSL* stored in the handle. They exist so
// Nyx code can answer the two questions a network scanner asks — "is this TLS
// weak?" and "is this certificate expired?" — without an FFI escape hatch.
// Exposed to Nyx via `extern "C"` from std/tls.nx (NOT as compiler builtins:
// keeping them out of codegen keeps the bootstrap fixed point untouched).
//
// TOTALITY CONTRACT (a scanner iterates over thousands of hosts, most of which
// fail the handshake): an invalid handle, a closed handle, or a peer that
// presented no certificate NEVER crashes. Strings degrade to "", integers to
// -1, arrays to length 0.
//
// MEMORY: SSL_get1_peer_certificate increments the X509 refcount, so these
// functions X509_free on every exit path. SSL_get_peer_cert_chain does NOT
// take a reference and is therefore never freed. Neither the X509 objects nor
// the BIOs are GC-managed (see the design notes at the top of tls.c).

// Negotiated protocol version, e.g. "TLSv1.3". "" if unavailable.
nyx_string* nyx_tls_version(int64_t handle);

// Negotiated cipher suite name, e.g. "TLS_AES_256_GCM_SHA384". "" if unavailable.
nyx_string* nyx_tls_cipher(int64_t handle);

// Symmetric key strength of the negotiated cipher, in bits. -1 if unavailable.
int64_t nyx_tls_cipher_bits(int64_t handle);

// Chain verification result as an X509_V_* code; 0 (X509_V_OK) means the chain
// verified. -1 for an invalid/closed handle.
// NOTE: the client SSL_CTX used by nyx_tls_connect runs with peer verification
// DISABLED (see the design notes in tls.c), but OpenSSL still computes and
// stores this result, so it is meaningful for inspection — it just is not
// enforced at handshake time.
int64_t nyx_tls_verify_result(int64_t handle);

// Human-readable text for an X509_V_* code (X509_verify_cert_error_string).
// Code 0 yields "ok". Never NULL.
nyx_string* nyx_tls_verify_error(int64_t code);

// ── NORMATIVE: shape of the peer-certificate Array ─────────────────────────
// nyx_tls_peer_cert returns a FIXED 8-slot flat array. No Map (there is no
// verified precedent for returning a Map from an extern) and no nested arrays.
// Length 0 means "no certificate available" — every accessor in std/tls.nx is
// total over that case.
//
//   idx | tag    | contents
//   ----+--------+---------------------------------------------------------
//    0  | String | subject, RFC2253 (X509_NAME_print_ex over a memory BIO)
//    1  | String | issuer, RFC2253
//    2  | int    | not_before, unix epoch seconds (0 if unparseable)
//    3  | int    | not_after,  unix epoch seconds (0 if unparseable)
//    4  | String | serial number, UPPERCASE hex, no separators
//    5  | String | signature algorithm long name, e.g. "sha256WithRSAEncryption"
//    6  | String | SHA-256 fingerprint, LOWERCASE hex, 64 chars, no separators
//    7  | String | SANs joined by comma, e.g. "DNS:a.com,IP:1.2.3.4"; "" if none
//
// A date that cannot be parsed yields 0 in its slot rather than an invented
// number, so a caller can tell "unknown" from a real timestamp.
nyx_array_t* nyx_tls_peer_cert(int64_t handle);

// The peer's certificate chain as a FLAT String array with stride 2:
//   [subject0, issuer0, subject1, issuer1, ...]  (RFC2253, same as above)
// Flat instead of nested for the same reason as above. Length is always even.
// Length 0 when there is no chain. On the client side the chain includes the
// peer's own leaf certificate (OpenSSL semantics), so index 0/1 describe it.
nyx_array_t* nyx_tls_peer_chain(int64_t handle);

// The peer's leaf certificate in PEM form ("-----BEGIN CERTIFICATE-----...").
// "" when unavailable.
nyx_string* nyx_tls_peer_cert_pem(int64_t handle);

#endif // NYX_TLS_H
