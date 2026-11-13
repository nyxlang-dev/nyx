// ============================================
// HTTP2.H - HTTP/2 Frame I/O and HPACK for Nyx
// ============================================

#ifndef NYX_HTTP2_H
#define NYX_HTTP2_H

#include <stdint.h>
#include "strings.h"
#include "runtime-arrays.h"

// Read one HTTP/2 frame: returns [type, flags, stream_id, payload] or []
nyx_array_t* nyx_h2_read_frame(int64_t fd);

// Write one HTTP/2 frame: returns bytes written or -1
int64_t nyx_h2_write_frame(int64_t fd, int64_t type, int64_t flags,
                            int64_t stream_id, nyx_string* payload);

// Decode HPACK header block -> flat array [k1, v1, k2, v2, ...]
nyx_array_t* nyx_h2_decode_headers(nyx_string* block);

// Encode flat header array -> HPACK block
nyx_string* nyx_h2_encode_headers(nyx_array_t* headers);

// Build SETTINGS frame payload
nyx_string* nyx_h2_build_settings(int64_t max_concurrent, int64_t window_size,
                                   int64_t max_frame_size);

// ===== Motor de conexión HTTP/2 de servidor, sin E/S (ver http2.c) =====
int64_t      nyx_h2c_new(int64_t max_body);
int64_t      nyx_h2c_feed(int64_t h, nyx_string* data);
nyx_array_t* nyx_h2c_next_event(int64_t h);
nyx_string*  nyx_h2c_take_output(int64_t h);
int64_t      nyx_h2c_send_headers(int64_t h, int64_t sid, nyx_array_t* headers, int64_t end_stream);
int64_t      nyx_h2c_send_data(int64_t h, int64_t sid, nyx_string* data, int64_t end_stream);
int64_t      nyx_h2c_reset(int64_t h, int64_t sid, int64_t code);
int64_t      nyx_h2c_pending(int64_t h, int64_t sid);
int64_t      nyx_h2c_stream_open(int64_t h, int64_t sid);
int64_t      nyx_h2c_goaway(int64_t h, int64_t code);
int64_t      nyx_h2c_closed(int64_t h);
int64_t      nyx_h2c_open_streams(int64_t h);
// Despertador entre hilos sobre un pipe.
int64_t      nyx_h2_wake_signal(int64_t wfd);
int64_t      nyx_h2_wake_drain(int64_t rfd);

#endif // NYX_HTTP2_H
