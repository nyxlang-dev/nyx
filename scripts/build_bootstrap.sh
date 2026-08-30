#!/usr/bin/env bash
# Construye el binario nyx_bootstrap desde los archivos IR semilla (compiler/*.ll)
# No requiere Racket ni ningún compilador externo.
# Uso: bash scripts/build_bootstrap.sh
set -e
cd "$(dirname "$0")/.."

echo "=== Building Nyx Bootstrap ==="

# Aviso barato, no-fatal (cosecha [arco:W3-paso0b], ficha "piso mínimo libgc
# 8.2"): por debajo de 8.2, runtime/scheduler.c apaga GC_set_sp_corrector y
# el bug colector×stacks-de-goroutine del paso 0b vuelve ENTERO (el runtime
# ya avisa esto por su cuenta al arrancar — ver nyx_gc_sp_corrector_install).
# Best-effort: si no hay pkg-config o no se puede parsear la versión, se
# queda callado en vez de adivinar — nunca bloquea el build (política del
# paso 0b: degradar RUIDOSO, no fallar).
if command -v pkg-config > /dev/null 2>&1; then
    gc_ver="$(pkg-config --modversion bdw-gc 2>/dev/null || pkg-config --modversion gc 2>/dev/null || true)"
    if [ -n "$gc_ver" ]; then
        gc_major="$(echo "$gc_ver" | cut -d. -f1 | tr -cd '0-9')"
        gc_minor="$(echo "$gc_ver" | cut -d. -f2 | tr -cd '0-9')"
        gc_minor="${gc_minor:-0}"
        if [ -n "$gc_major" ] && { [ "$gc_major" -lt 8 ] || { [ "$gc_major" -eq 8 ] && [ "$gc_minor" -lt 2 ]; }; }; then
            echo "  ⚠️  libgc/bdwgc $gc_ver detectada (< 8.2): GC_set_sp_corrector no existe,"
            echo "      el scheduler M:N puede crashear bajo goroutines concurrentes."
            echo "      Se recomienda actualizar libgc/bdwgc a >= 8.2."
        fi
    fi
fi

# Verificar que los .ll semilla existen
for component in lexer parser types semantic borrow licm codegen nyx; do
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
    runtime/os/os_posix.c
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
    compiler/borrow.ll \
    compiler/licm.ll \
    compiler/codegen.ll \
    compiler/nyx.ll \
    $RUNTIME_SRCS \
    -o nyx_bootstrap \
    $LIBS

echo "✅ nyx_bootstrap listo"
echo ""
echo "Prueba: cp examples/hello.nx script.nx && ./nyx_bootstrap"
