#!/usr/bin/env bash
# run_h2_sanitizers.sh — los tests del motor HTTP/2 (tests/runtime-unit/test_http2.c,
# con su test de entradas aleatorias) bajo AddressSanitizer y UBSan.
#
# El motor guarda todo en memoria de Boehm GC, que ASan no instrumenta: un
# desborde dentro de un buffer del GC pasaría sin verse. Acá GC_malloc y
# GC_malloc_atomic se redirigen a calloc SOLO para este binario, así cada buffer
# del motor tiene sus zonas rojas. (Pierde memoria a propósito: no hay free.)
#
# No está en `make test-all`: depende de que clang traiga los sanitizers. Correr
# a mano después de tocar runtime/http2.c. SKIP limpio si no hay ASan.
set -u
cd "$(dirname "$0")/../.."
OUT="$(mktemp -d /tmp/nyx-h2-san.XXXXXX)"
trap 'rm -rf "$OUT"' EXIT
cat > "$OUT/shim.c" <<'C'
#include <stdlib.h>
void* h2shim_alloc(size_t n) { return calloc(1, n ? n : 1); }
void* h2shim_realloc(void* p, size_t n) { return realloc(p, n ? n : 1); }
C
if ! clang -g -O1 -fsanitize=address,undefined -fno-sanitize-recover=undefined \
        -DGC_malloc=h2shim_alloc -DGC_malloc_atomic=h2shim_alloc -DGC_realloc=h2shim_realloc \
        -D_DEFAULT_SOURCE -DNYX_RUNTIME_TESTING -iquote runtime -iquote tests/runtime-unit \
        tests/runtime-unit/test_http2.c "$OUT/shim.c" runtime/*.c runtime/os/os_posix.c \
        -lgc -lpthread -ldl -lm -lssl -lcrypto -lz -o "$OUT/t" 2> "$OUT/cc.log"; then
    if grep -q "sanitizer\|asan" "$OUT/cc.log"; then echo "  SKIP: clang sin sanitizers"; exit 0; fi
    echo "  ✗ no compila"; tail -5 "$OUT/cc.log"; exit 1
fi
if ASAN_OPTIONS=detect_leaks=0 "$OUT/t" > "$OUT/run.log" 2>&1 && ! grep -q "ERROR\|runtime error" "$OUT/run.log"; then
    echo "  ✓ motor HTTP/2 bajo ASan + UBSan: $(grep -o '[0-9]* passed' "$OUT/run.log" | tail -1)"
else
    echo "  ✗ motor HTTP/2 bajo ASan + UBSan"; grep -A12 "ERROR\|runtime error" "$OUT/run.log" | head -30; tail -3 "$OUT/run.log"; exit 1
fi
