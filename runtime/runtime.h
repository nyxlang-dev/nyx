// ============================================
// RUNTIME.H - API pública del borde de biblioteca (--shared / .so)
// ============================================
// ES: lo que una biblioteca Nyx (p.ej. Android por JNI) exporta o consume del
// runtime: arranque, registro de hilos foráneos, buffers fuera del GC y camino
// fatal unificado. Diseño: docs/design/specs/2026-11-09-android-lib-design.md D3-D6.
// EN: library-border API of the runtime (init, foreign-thread registration,
// GC-free buffers, unified fatal path).
#ifndef NYX_RUNTIME_H
#define NYX_RUNTIME_H

#include <stdint.h>
#include "strings.h"

#define NYX_EXPORT __attribute__((visibility("default")))

// Buffer de salida: malloc de la libc, FUERA del GC (D3). Lo libera nyx_buf_free.
typedef struct {
    int64_t len;
    uint8_t data[];
} nyx_buf;

NYX_EXPORT void       nyx_lib_init(void);
NYX_EXPORT void       nyx_lib_enter(void);
NYX_EXPORT nyx_buf*   nyx_buf_from_string(nyx_string* s);
NYX_EXPORT void       nyx_buf_free(nyx_buf* b);
NYX_EXPORT nyx_string* nyx_lib_string_from_bytes(const uint8_t* p, int64_t len);
NYX_EXPORT void       nyx_lib_set_fatal_handler(void (*h)(const char* msg));

// Camino fatal único (D6). Fuera de modo lib: exit(1). En modo lib: entrega msg
// (puede ser NULL) al handler y llama abort(). No retorna.
// Exportado (no static) para que runtime-arrays.c (NYX2022) pueda usarlo.
NYX_EXPORT void       nyx_fatal_exit(const char* msg) __attribute__((noreturn));

extern int nyx_lib_mode;

void nyx_runtime_init(void);


/* Salida fatal de los .c del runtime (arco android-lib, D6): fuera de modo lib es
 * el exit(1) de siempre; en una .so le pasa al handler fatal el archivo y la
 * línea (el mensaje completo ya fue a stderr, que en una app no lo ve nadie) y
 * termina con abort(). EN: fatal exit that reaches the lib-mode handler. */
#define NYX_FATAL_STR2(x) #x
#define NYX_FATAL_STR(x) NYX_FATAL_STR2(x)
#define NYX_FATAL_EXIT() nyx_fatal_exit("nyx runtime error at " __FILE__ ":" NYX_FATAL_STR(__LINE__) " (detalle en stderr)")

#endif
