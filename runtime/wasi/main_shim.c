// runtime/wasi/main_shim.c — puente de entry point para wasm32-wasi.
// EN: wasi-libc's crt1 calls __main_argc_argv (the symbol clang emits for a C
//     main(argc, argv)) and expects it to return i32. The Nyx codegen emits
//     `define i64 @main(i32, i8**)` directly, which nothing calls under the
//     WASI start convention — this file bridges the two.
// ES: el crt1 de wasi-libc llama __main_argc_argv (el símbolo que clang emite
//     para un main(argc, argv) de C) y espera retorno i32. El codegen de Nyx
//     emite `define i64 @main(i32, i8**)` directo, que nadie llama bajo la
//     convención de arranque WASI — este archivo puentea ambos.
//
// El asm-label evita el warning -Wmain por declarar main con retorno no-int.
#ifdef __wasi__

#include <stdlib.h>
#include <stdint.h>

extern long long nyx_ir_main(int argc, char** argv) __asm__("main");

int __main_argc_argv(int argc, char** argv) {
    return (int)nyx_ir_main(argc, argv);
}

// Allocador i64 para el IR: en wasm32 el malloc de libc es (i32)->i32 y un
// `call i8* @malloc(i64)` desde el IR trapea por firma errada. Cero-inicializa
// (calloc) por paridad con GC_malloc, que devuelve memoria en cero.
// EXPORTADO del módulo wasm (export_name): el shim JS lo usa para construir
// nyx_strings en memoria lineal al retornar Strings JS→Nyx (FFI extern "js").
// EN: i64-typed allocator for IR calls — libc malloc is (i32)->i32 on wasm32
// and an i64-typed call traps. Zero-fills for GC_malloc parity. Exported so
// the JS shim can allocate nyx_strings when returning JS strings to Nyx.
// Rutea por el allocador two-region (nyx_arena.c): los strings que el shim
// construye DURANTE un evento (payloads de handlers) son memoria de turno y
// se descartan en el reset; los de _start (registro) quedan persistentes.
void* nyx_wasi_gc_alloc(size_t n);

__attribute__((export_name("nyx_wasi_malloc")))
void* nyx_wasi_malloc(int64_t n) {
    if (n <= 0) return NULL;
    return nyx_wasi_gc_alloc((size_t)n);
}

#endif // __wasi__
