#!/usr/bin/env bash
# Construye el binario nyx_bootstrap desde los archivos IR semilla (compiler/*.ll)
# No requiere Racket ni ningún compilador externo.
# Uso: bash scripts/build_bootstrap.sh
set -e
cd "$(dirname "$0")/.."

echo "=== Building Nyx Bootstrap ==="

# Verificar que los .ll semilla existen
for component in lexer parser types semantic codegen nyx; do
    if [ ! -f "compiler/${component}.ll" ]; then
        echo "  ❌ Falta compiler/${component}.ll (IR semilla)"
        exit 1
    fi
done

# Runtime sources — DEBE coincidir con RUNTIME_SRCS del Makefile
RUNTIME_SRCS="
    runtime/runtime.c
    runtime/strings.c
    runtime/runtime-arrays.c
    runtime/maps.c
    runtime/file-io.c
    runtime/iterators.c
    runtime/net.c
    runtime/thread.c
    runtime/regex.c
    runtime/time.c
    runtime/crypto.c
    runtime/tls.c
    runtime/scheduler.c
    runtime/event_loop.c
    runtime/sqlite_adapter.c
    runtime/compress.c
    runtime/random.c
    runtime/url.c
    runtime/msgpack.c
    runtime/websocket.c
    runtime/persist.c
    runtime/process.c
"

LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

# Platform-specific flags (mirror the Makefile logic)
EXTRA_CFLAGS=""
EXTRA_LDFLAGS=""
if [ "$(uname -s)" = "Darwin" ]; then
    BREW_GC=$(brew --prefix bdw-gc 2>/dev/null)
    BREW_SSL=$(brew --prefix openssl@3 2>/dev/null)
    EXTRA_CFLAGS="-I${BREW_GC}/include -I${BREW_SSL}/include -D_XOPEN_SOURCE=700"
    EXTRA_LDFLAGS="-L${BREW_GC}/lib -L${BREW_SSL}/lib"
fi

# Verificar que todos los .c existen
for src in $RUNTIME_SRCS; do
    if [ ! -f "$src" ]; then
        echo "  ⚠️  Falta $src (se omitirá)"
    fi
done

# Linkear todos los .ll con el runtime C
echo "  [LINK] Enlazando nyx_bootstrap..."
clang $EXTRA_CFLAGS $EXTRA_LDFLAGS \
    compiler/lexer.ll \
    compiler/parser.ll \
    compiler/types.ll \
    compiler/semantic.ll \
    compiler/codegen.ll \
    compiler/nyx.ll \
    $RUNTIME_SRCS \
    -o nyx_bootstrap \
    $LIBS

echo "✅ nyx_bootstrap listo"
echo ""
echo "Prueba: cp examples/hello.nx script.nx && ./nyx_bootstrap"
