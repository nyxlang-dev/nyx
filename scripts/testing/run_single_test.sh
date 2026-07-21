#!/bin/bash

# ============================================
# NYX SINGLE TEST RUNNER
# ============================================
# Ejecuta un test individual de bootstrap

if [ $# -eq 0 ]; then
    echo "Uso: ./run_single_test.sh <numero_de_test>"
    echo ""
    echo "Ejemplo: ./run_single_test.sh 01"
    echo "         ./run_single_test.sh 15"
    echo ""
    echo "Tests disponibles:"
    find tests/compiler/basics tests/compiler/types tests/compiler/systems tests/compiler/iterators-traits tests/compiler/stdlib-suite tests/compiler/language tests/compiler/ecosystem -name 'test-*.nx' | sort -V | sed 's/.*\/test-/  /' | sed 's/.nx//'
    exit 1
fi

TEST_NUM=$(printf "%02d" $1)
TEST_FILE=$(find tests/compiler/basics tests/compiler/types tests/compiler/systems tests/compiler/iterators-traits tests/compiler/stdlib-suite tests/compiler/language tests/compiler/ecosystem -name "test-${TEST_NUM}-*.nx" 2>/dev/null | head -1)

if [ -z "$TEST_FILE" ]; then
    echo "❌ No se encontró el test ${TEST_NUM}"
    echo ""
    echo "Tests disponibles:"
    find tests/compiler/basics tests/compiler/types tests/compiler/systems tests/compiler/iterators-traits tests/compiler/stdlib-suite tests/compiler/language tests/compiler/ecosystem -name 'test-*.nx' | sort -V | sed 's/.*\/test-/  /' | sed 's/.nx//'
    exit 1
fi

TEST_NAME=$(basename "$TEST_FILE" .nx)

echo "╔════════════════════════════════════════════════════════════╗"
echo "║  🧪 Ejecutando Test Individual                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "Test: $TEST_NAME"
echo "Archivo: $TEST_FILE"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

# Ejecutar el test
cp "$TEST_FILE" script.nx
if NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap && clang script.ll $RUNTIME_SRCS $LIBS -o script_bin; then
    echo "✅ Compilado OK"
    echo ""
    timeout 30 ./script_bin 2>&1
    EXIT_CODE=$?
    echo ""
    if [ $EXIT_CODE -eq 0 ]; then
        echo "✅ PASÓ (exit 0)"
    else
        echo "❌ FALLÓ (exit $EXIT_CODE)"
        exit 1
    fi
else
    echo "❌ Error de compilación"
    exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
