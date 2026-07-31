// ============================================
// NET.H - Networking Runtime for Nyx v5.0
// ============================================

#ifndef NYX_NET_H
#define NYX_NET_H

#include <stdint.h>
#include "strings.h"
#include "runtime-arrays.h"

// TCP functions
int64_t nyx_tcp_listen(const char* host, int64_t port);
int64_t nyx_tcp_accept(int64_t listen_fd);
int64_t nyx_tcp_connect(const char* host, int64_t port);
int64_t nyx_tcp_set_timeout(int64_t fd, int64_t seconds);
nyx_string* nyx_tcp_read(int64_t fd, int64_t max_bytes);
nyx_string* nyx_tcp_read_partial(int64_t fd, int64_t max_bytes);
nyx_string* nyx_tcp_read_line(int64_t fd);
int64_t nyx_tcp_write(int64_t fd, nyx_string* data);
nyx_string* nyx_tcp_read_exact(int64_t fd, int64_t n);
void nyx_tcp_close(int64_t fd);
int64_t nyx_tcp_shutdown(int64_t fd, int64_t how);

// Get peer IP address from socket fd
nyx_string* nyx_getpeername(int64_t fd);

// Write RESP bulk string directly to socket (zero allocations)
int64_t nyx_resp_write_bulk(int64_t fd, nyx_string* data);

// Fast HTTP request parser (C-level, minimal GC allocs)
nyx_array_t* nyx_http_parse_request_fast(int64_t fd);
int64_t nyx_http_max_body(void);

// Fast RESP command parser (C-level, zero intermediate allocs)
// CONTRATO: un array vacío de retorno significa "comando inválido o sobre
// cota" (header RESP malformado, *count o $len por encima de
// nyx_resp_max_array()/nyx_resp_max_bulk()) — NO "comando vacío legítimo".
// En ese caso la función NO drena del socket los bytes que el peer ya
// mandó de más: el stream queda desincronizado. El caller DEBE cerrar el
// fd ante un array vacío, nunca reusarlo asumiendo que el próximo read
// arranca en el siguiente comando — leería basura de protocolo.
// EN: CONTRACT — an empty returned array means "invalid or over-cap
// command", not "legitimate empty command". The function does NOT drain
// the peer's already-sent bytes from the socket in that case, so the
// stream is left desynchronized. The caller MUST close the fd on an empty
// array; reusing it expecting the "next command" reads protocol garbage.
nyx_array_t* nyx_resp_read_command(int64_t fd);
int64_t nyx_resp_max_bulk(void);
int64_t nyx_resp_max_array(void);

// UDP functions
int64_t nyx_udp_bind(const char* host, int64_t port);
int64_t nyx_udp_sendto(int64_t fd, nyx_string* data, const char* host, int64_t port);
nyx_string* nyx_udp_recvfrom(int64_t fd, int64_t max_bytes);

// DNS resolution
nyx_string* nyx_resolve(const char* hostname);

#endif // NYX_NET_H
