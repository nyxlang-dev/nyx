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

// E5.1 -- trío *_result: errno como valor de retorno, sin stderr
int64_t nyx_tcp_listen_result(nyx_string* host, int64_t port);
int64_t nyx_tcp_connect_result(nyx_string* host, int64_t port);
int64_t nyx_udp_bind_result(nyx_string* host, int64_t port);

// E5.2 -- familia *_result de E/S y resolución (ver runtime/net.c para el
// contrato completo de cada una: EOF-como-Ok en read/recvfrom, short-write
// en write, guard de host numérico en sendto, mapeo EAI en resolve).
int64_t nyx_tcp_accept_result(int64_t listen_fd);
nyx_array_t* nyx_tcp_read_result(int64_t fd, int64_t max_bytes);
int64_t nyx_tcp_write_result(int64_t fd, nyx_string* data);
int64_t nyx_udp_sendto_result(int64_t fd, nyx_string* data, nyx_string* host, int64_t port);
nyx_array_t* nyx_udp_recvfrom_result(int64_t fd, int64_t max_bytes);
nyx_array_t* nyx_resolve_result(nyx_string* host);

// EOF limpio en las centinelas [code, payload] que necesitan distinguirlo de
// una lectura válida VACÍA (nyx_tcp_read_line_result: "" puede ser una línea
// vacía real -- llegó '\n' sin nada antes -- así que EOF no puede compartir
// ese mismo code 0; nyx_tcp_read_exact_result: el peer cerró antes de
// completar los n bytes pedidos, los parciales se descartan). Deliberadamente
// FUERA del rango de errno de Linux (todos <1000), así el caller Nyx (Task 2,
// std/net.nx) nunca lo confunde con un fallo real -- lo traduce al kind "eof"
// (code 0 en la capa Nyx, vocabulario de std/error). Asimetría DELIBERADA con
// nyx_tcp_read_result/nyx_tcp_read_partial_result, donde el "" de payload en
// code 0 YA es EOF sin ambigüedad (ver runtime/net.c para el detalle
// función por función).
#define NYX_NET_EOF 1000

// E5.2b -- las 7 `*_result` restantes de red (ver runtime/net.c para el
// contrato completo función por función, incl. las sondas sobre las
// centinelas viejas que cada una copia o documenta que se aparta).
nyx_array_t* nyx_tcp_read_line_result(int64_t fd);
nyx_array_t* nyx_tcp_read_partial_result(int64_t fd, int64_t max_bytes);
nyx_array_t* nyx_tcp_read_exact_result(int64_t fd, int64_t n);
int64_t nyx_tcp_shutdown_result(int64_t fd, int64_t how);
int64_t nyx_tcp_set_timeout_result(int64_t fd, int64_t seconds);
nyx_array_t* nyx_getpeername_result(int64_t fd);
nyx_array_t* nyx_resolve_ptr_result(nyx_string* ip);

#endif // NYX_NET_H
