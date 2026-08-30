#!/bin/bash
# ============================================================
# run_runtime_tests.sh — C unit tests for the Nyx runtime (B4)
# ------------------------------------------------------------
# Compiles each tests/runtime-unit/test_*.c, links it against the full
# runtime, runs it, and reports pass/fail. Each binary exits 0 iff all its
# asserts pass (see tests/runtime-unit/nyx_test.h). Unlike the regression
# suite, this does NOT go through nyx_bootstrap — it exercises the C runtime
# directly.
# ============================================================
set -u
cd "$(dirname "$0")/../.." || exit 1

RED='\033[0;31m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'

# Keep this list in sync with the Makefile's RUNTIME_SRCS (linking the whole
# runtime avoids undefined refs from inter-module deps: strings<->arrays<->maps).
RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \
runtime/maps.c runtime/file-io.c runtime/iterators.c \
runtime/net.c runtime/thread.c runtime/regex.c \
runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c \
runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c \
runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c \
runtime/persist.c runtime/http2.c runtime/process.c \
runtime/llama_adapter.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

CC=${CC:-clang}
# Header resolution: use -iquote (NOT -I) for the runtime/ dir. The runtime ships its own
# time.h, and runtime.c does `#include <time.h>` (angle brackets) for the *system* header;
# a plain -I would let runtime/time.h shadow it, hiding nanosleep/clock_gettime/CLOCK_MONOTONIC.
# -iquote only affects quoted includes ("strings.h" etc.), which is exactly what the test
# files and the runtime's own modules need, leaving <time.h> to resolve to the system header.
#
# -D_DEFAULT_SOURCE: glibc hides POSIX decls (nanosleep, clock_gettime, time) behind this
# umbrella macro. The regression build compiles cleanly only by accident of its x86_64-triple
# .ll seed shifting header behaviour; compiling the C directly on this host needs the macro.
# (No -O2: the regression runner doesn't use it either.)
#
# -DNYX_RUNTIME_TESTING: gatea símbolos de testing (test seams) que NO deben existir en
# binarios de producción -- p.ej. runtime/http2.c usa este flag para excluir un hook de
# testing (global mutable, no thread-local) que en un binario real sería una palanca para
# reintroducir el bug de HPACK que ese módulo arregla. RUNTIME_SRCS de abajo es la MISMA
# lista de fuentes con la que se compilan nyx_bootstrap/nyx_build/nyx_repl vía el Makefile,
# así que sin este flag (y sin -iquote acá) esos símbolos de testing no existen en ningún
# binario de producción -- solo en los tests de este script.
CFLAGS="-D_DEFAULT_SOURCE -DNYX_RUNTIME_TESTING -iquote runtime -iquote tests/runtime-unit"
TEST_DIR="tests/runtime-unit"
BIN="/tmp/nyx_rt_test_$$"

PASS=0
FAIL=0
FAILED_TESTS=""

echo -e "${CYAN}=== Nyx runtime C unit tests ===${NC}"

for src in "$TEST_DIR"/test_*.c; do
    [ -e "$src" ] || continue
    name=$(basename "$src" .c)
    # Compile + link against the full runtime.
    if ! $CC $CFLAGS "$src" $RUNTIME_SRCS $LIBS -o "$BIN" 2> /tmp/nyx_rt_cc_err; then
        echo -e "${RED}x ${name}: COMPILE/LINK ERROR${NC}"
        sed 's/^/    /' /tmp/nyx_rt_cc_err | head -20
        FAIL=$((FAIL + 1))
        FAILED_TESTS="$FAILED_TESTS $name"
        continue
    fi
    # Run; the binary prints its own per-suite summary and exits 0 on success.
    if "$BIN"; then
        echo -e "${GREEN}OK ${name}${NC}"
        PASS=$((PASS + 1))
    else
        echo -e "${RED}x ${name}: tests failed${NC}"
        FAIL=$((FAIL + 1))
        FAILED_TESTS="$FAILED_TESTS $name"
    fi
    rm -f "$BIN"
done

echo ""
echo -e "${CYAN}╔═══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║          runtime unit tests               ║${NC}"
echo -e "${CYAN}╚═══════════════════════════════════════════╝${NC}"
echo -e "  Suites passed: ${GREEN}${PASS}${NC}"
echo -e "  Suites failed: ${RED}${FAIL}${NC}"
if [ "$FAIL" -ne 0 ]; then
    echo -e "  ${RED}Failed:${NC}${FAILED_TESTS}"
    exit 1
fi
echo -e "  ${GREEN}All runtime unit tests passed${NC}"
exit 0
