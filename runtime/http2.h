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

#endif // NYX_HTTP2_H
