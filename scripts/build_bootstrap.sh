#!/usr/bin/env bash
# Construye el binario nyx_bootstrap desde los archivos IR semilla (compiler/*.ll)
# No requiere Racket ni ningún compilador externo.
# Uso: bash scripts/build_bootstrap.sh
set -e
cd "$(dirname "$0")/.."
# Stack: compilar lexer.nx necesita ~9 MB en x86_64 y el default son 8 (ver lib_stack.sh).
. "$(dirname "$0")/lib_stack.sh"; nyx_raise_stack

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
for component in lexer parser types semantic borrow licm resolve codegen nyx; do
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

# SROA sobre las semillas antes de enlazar (arco pila-del-compilador, Task 4;
# spec docs/design/specs/2026-09-23-pila-del-compilador-design.md, D-1(b)).
#
# POR QUÉ: el compilador se enlaza en -O0, y ahí cada valor tiene su ranura de
# pila. codegen pasa CodegenContext (113 campos) POR VALOR en cada llamada, así
# que los eslabones recursivos de una expresión apilaban ~23 KB por nivel (151 KB
# antes de la Task 2). SROA promueve esas copias a registros: por nivel baja a
# ~2 KB (codegen_expr 14.496 → 800 B, codegen_binop 8.544 → 1.168 B), y el IR
# que el compilador EMITE no cambia —SROA optimiza al compilador, no a lo que
# genera—. Cuesta ~4 s de opt sobre codegen.ll; clang ya no tiene que bajar
# tantas ranuras, así que el build total apenas sube. -O1/-O2 hacían lo mismo
# pero costaban ~5 min por bootstrap.
#
# Solo con un `opt` de la MISMA versión mayor que clang: el bitcode de otra
# versión puede no leerse. Sin él (Apple clang no trae `opt`; en Debian es el
# paquete `llvm`), se enlaza como siempre y se avisa: el compilador funciona
# igual, con menos techo de pila (los lanzadores igual la suben a 64 MB).
# NYX_NO_SROA=1 lo apaga, para comparar o si una versión de opt se porta mal.
# Una semilla por línea A PROPÓSITO: scripts/testing/run_toolchain_recipe_audit.sh
# lee de acá la lista que se enlaza DE VERDAD, renglón por renglón.
SEEDS="
    compiler/lexer.ll
    compiler/parser.ll
    compiler/types.ll
    compiler/semantic.ll
    compiler/borrow.ll
    compiler/licm.ll
    compiler/resolve.ll
    compiler/codegen.ll
    compiler/nyx.ll
"
LINK_SEEDS="$SEEDS"
SROA_TMP=""
if [ "${NYX_NO_SROA:-}" != "1" ]; then
    clang_major="$(clang --version 2>/dev/null | sed -n 's/.*clang version \([0-9][0-9]*\).*/\1/p' | head -1)"
    OPT_BIN=""
    for cand in "opt-$clang_major" opt; do
        if command -v "$cand" > /dev/null 2>&1; then
            opt_major="$("$cand" --version 2>/dev/null | sed -n 's/.*LLVM version \([0-9][0-9]*\).*/\1/p' | head -1)"
            if [ -n "$clang_major" ] && [ "$opt_major" = "$clang_major" ]; then OPT_BIN="$cand"; break; fi
        fi
    done
    if [ -n "$OPT_BIN" ]; then
        SROA_TMP="$(mktemp -d)"
        trap 'rm -rf "$SROA_TMP"' EXIT
        LINK_SEEDS=""
        for ll in $SEEDS; do
            bc="$SROA_TMP/$(basename "$ll" .ll).bc"
            "$OPT_BIN" -passes=sroa "$ll" -o "$bc"
            LINK_SEEDS="$LINK_SEEDS $bc"
        done
        echo "  [SROA] $OPT_BIN sobre las semillas (más techo de pila para el compilador)"
    else
        echo "  [SROA] sin opt de LLVM $clang_major: se enlaza sin SROA (el compilador aguanta expresiones menos profundas; instalar el paquete llvm lo resuelve)"
    fi
fi

# Linkear todos los .ll con el runtime C
echo "  [LINK] Enlazando nyx_bootstrap..."
clang $EXTRA_CFLAGS $EXTRA_LDFLAGS \
    $LINK_SEEDS \
    $RUNTIME_SRCS \
    -o nyx_bootstrap \
    $LIBS

echo "✅ nyx_bootstrap listo"
echo ""
echo "Prueba: cp examples/hello.nx script.nx && ./nyx_bootstrap"
