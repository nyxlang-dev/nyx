#!/usr/bin/env bash
# ==============================================================
# M-08 types happy-path runner — corre los tests `test-NN-m08-*.nx`
# con semantic activo (sin NYX_SKIP_SEMANTIC) para que la inferencia
# de return types (S11), codegen-aware signature (S12b), impl-generics
# (S12a) y demas mejoras se ejerciten end-to-end.
#
# La regression suite principal (scripts/testing/run_bootstrap_tests.sh)
# sigue usando NYX_SKIP_SEMANTIC=1 por razones historicas (tests con
# structs importados de std/* que el semantic no resuelve cross-module).
# Este runner complementa: solo los tests M-08 del dir tests/compiler/types.
# ==============================================================
set -u
cd "$(dirname "$0")/../../.."

# Runtime sources y libs (mismo set que el Makefile)
RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

PASS=0
FAIL=0
FAILED=()

for test_file in tests/compiler/types/test-*-m08-*.nx; do
    name=$(basename "$test_file" .nx)
    cp "$test_file" script.nx
    if ./nyx_bootstrap > /dev/null 2>&1 && \
       clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>/dev/null && \
       timeout 30 ./script_bin > /tmp/m08_test_out 2>&1; then
        printf "  ✓ %s\n" "$name"
        PASS=$((PASS + 1))
    else
        printf "  ✗ %s\n" "$name"
        FAIL=$((FAIL + 1))
        FAILED+=("$name")
    fi
done

echo ""
echo "  $PASS passed, $FAIL failed"

if [ "$FAIL" -gt 0 ]; then
    echo ""
    echo "Failed tests:"
    for t in "${FAILED[@]}"; do echo "  - $t"; done
    exit 1
fi
