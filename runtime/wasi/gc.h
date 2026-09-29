// runtime/wasi/gc.h — GC→malloc shim para builds wasm32-wasi.
// EN: GC→malloc shim for wasm32-wasi builds. Compiled with -Iruntime/wasi this
//     header shadows the system <gc.h>/<gc/gc.h> (Boehm GC does not port to
//     WASM: it scans the native stack/registers). Memory is never freed —
//     leak-by-design, same trade-off as the native NYX_NO_GC mode.
// ES: Shim GC→malloc para builds wasm32-wasi. Compilado con -Iruntime/wasi este
//     header eclipsa <gc.h>/<gc/gc.h> del sistema (Boehm GC no porta a WASM:
//     escanea stack/registros nativos). La memoria nunca se libera —
//     leak-by-design, mismo trade-off que el modo NYX_NO_GC nativo.
//
// CLAVE / KEY: Boehm GC_malloc devuelve memoria EN CERO y maps.c/strings.c
// dependen de eso → calloc. GC_malloc_atomic NO garantiza cero → malloc.
#ifndef NYX_WASI_GC_SHIM_H
#define NYX_WASI_GC_SHIM_H

#include <stdlib.h>

// Implementados en runtime/wasi/nyx_arena.c: allocador two-region
// (calloc persistente antes de nyx_arena_begin(); bump arena reseteable
// por evento después — handoff #2). Sin begin() el comportamiento es el
// calloc leak-by-design de siempre. Header de 16 bytes con el tamaño →
// realloc funciona sin conocer el allocador de origen.
void* nyx_wasi_gc_alloc(size_t n);
void* nyx_wasi_gc_realloc(void* p, size_t n);

#define GC_malloc(n)         nyx_wasi_gc_alloc(n)
#define GC_MALLOC(n)         nyx_wasi_gc_alloc(n)
#define GC_malloc_atomic(n)  nyx_wasi_gc_alloc(n)
#define GC_MALLOC_ATOMIC(n)  nyx_wasi_gc_alloc(n)
#define GC_realloc(p, n)     nyx_wasi_gc_realloc((p), (n))
#define GC_REALLOC(p, n)     nyx_wasi_gc_realloc((p), (n))

#define GC_INIT()                     ((void)0)
#define GC_set_free_space_divisor(d)  ((void)(d))
#define GC_set_max_heap_size(s)       ((void)(s))
#define GC_enable_incremental()       ((void)0)
// Bajo wasi no hay Boehm → no hay oom_fn que instalar (el shim no puede agotar el
// heap del GC; malloc fallido = leak-by-design). No-op como los vecinos.
// EN: no Boehm under wasi → no oom hook to install; no-op like the neighbours.
#define GC_set_oom_fn(fn)             ((void)(fn))

#endif // NYX_WASI_GC_SHIM_H
