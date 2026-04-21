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

// ===== HTTPS high-level API =====

// Performs an HTTPS GET request to url.
// Returns the response body as a nyx_string*.
// Returns an empty string on any error (DNS, TLS, HTTP).
nyx_string* nyx_https_get(nyx_string* url);

// Performs an HTTPS POST request to url with the given body and content_type.
// Returns the response body as a nyx_string*.
// Returns an empty string on any error.
nyx_string* nyx_https_post(nyx_string* url, nyx_string* body, nyx_string* content_type);

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

// Reads up to max_bytes from an open TLS connection.
// Returns the data as a nyx_string*. Returns an empty string on error or EOF.
nyx_string* nyx_tls_read(int64_t handle, int64_t max_bytes);

// Writes data to an open TLS connection.
// Returns the number of bytes written, or -1 on error.
int64_t nyx_tls_write(int64_t handle, nyx_string* data);

// Closes a TLS connection and releases the SSL context.
// After this call the handle must not be used again.
void nyx_tls_close(int64_t handle);

#endif // NYX_TLS_H
