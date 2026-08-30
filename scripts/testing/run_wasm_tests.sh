#!/usr/bin/env bash
# =============================================================================
# run_wasm_tests.sh — WASM (wasm32-wasi) target tests
#
# Compila cada tests/wasm/test-wasm-*.nx a .wasm con el toolchain liviano
# Debian (clang del sistema + wasi-libc), lo corre bajo wasmtime y compara el
# output contra el .expected correspondiente.
#
# EN: compiles each tests/wasm/test-wasm-*.nx to .wasm (system clang +
#     Debian wasi-libc), runs it under wasmtime, diffs against .expected.
#
# SKIP limpio (exit 0) si falta el toolchain — no es un fallo del monorepo:
#   sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19
#   wasmtime: https://github.com/bytecodealliance/wasmtime/releases
#
# OJO: usa el script.nx compartido del root (como los demás runners) —
# suites SIEMPRE en serie, nunca en paralelo con make test.
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT"

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh).
source "$SCRIPT_DIR/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

if [ -t 1 ]; then
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    BOLD='\033[1m'
    NC='\033[0m'
else
    GREEN='' RED='' BOLD='' NC=''
fi

WASI_SYSROOT="${WASI_SYSROOT:-/usr}"
WASI_LIBC="$WASI_SYSROOT/lib/wasm32-wasi/libc.a"
WASMTIME="$(command -v wasmtime || true)"
[ -z "$WASMTIME" ] && [ -x "$HOME/.local/bin/wasmtime" ] && WASMTIME="$HOME/.local/bin/wasmtime"

# ── Skip limpio si falta el toolchain (patrón run_integration_tests.sh) ──
if [ ! -f "$WASI_LIBC" ]; then
    echo "SKIP: wasi-libc no encontrado en $WASI_LIBC"
    echo "      (sudo apt install wasi-libc libclang-rt-19-dev-wasm32 lld-19)"
    exit 0
fi
if [ -z "$WASMTIME" ] || [ ! -x "$WASMTIME" ]; then
    echo "SKIP: wasmtime no encontrado (PATH ni ~/.local/bin)"
    exit 0
fi
if [ ! -x ./nyx_bootstrap ]; then
    echo "SKIP: nyx_bootstrap no compilado (make bootstrap)"
    exit 0
fi

# Subset esencial — mantener en sync con WASM_RUNTIME_SRCS del Makefile
# os_wasm.c (W1): runtime.c ahora usa os_monotonic_ns/os_sleep_ms sin ifdef
# (nyx_sleep/nyx_time_ms/nyx_time_us) — sin el stub el link falla.
WASM_RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \
    runtime/maps.c runtime/iterators.c runtime/file-io.c \
    runtime/time.c runtime/random.c runtime/url.c \
    runtime/wasi/main_shim.c runtime/wasi/nyx_arena.c \
    runtime/os/os_wasm.c"
WASM_CFLAGS="--target=wasm32-wasi --sysroot=$WASI_SYSROOT -O2 -Iruntime/wasi -Wl,-z,stack-size=1048576 -Wl,--export-table"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo -e "\n${BOLD}=======================================${NC}"
echo -e "${BOLD}   Nyx WASM Tests (wasm32-wasi)${NC}"
echo -e "${BOLD}=======================================${NC}\n"

PASSED=0
FAILED=0

for t in tests/wasm/test-wasm-*.nx; do
    name="$(basename "$t" .nx)"
    expected="tests/wasm/$name.expected"
    imports_mjs="tests/wasm/$name.imports.mjs"
    printf "  %-32s" "$name"

    if [ ! -f "$expected" ]; then
        echo -e "${RED}FAIL (sin .expected)${NC}"
        FAILED=$((FAILED + 1))
        continue
    fi

    # Tests con FFI extern "js": wasmtime no tiene los imports js:: → esa
    # pasada se SALTEA y el test corre solo bajo el shim node/browser.
    # EN: extern "js" tests only run under the node/browser shim.
    uses_js_ffi=0
    if grep -q 'extern "js"' "$t"; then uses_js_ffi=1; fi
    # std/dom y std/browser son SOLO-js (declaran extern "js" adentro):
    # importar cualquiera implica FFI aunque el test no tenga el literal.
    if grep -qE 'import .*"std/(dom|browser)"' "$t"; then uses_js_ffi=1; fi
    # Tests de RE-ENTRADA (afterStart en su .imports.mjs): el output esperado
    # incluye lo que pasa post-_start — wasmtime no tiene ese hook.
    if [ -f "$imports_mjs" ] && grep -q "afterStart" "$imports_mjs"; then uses_js_ffi=1; fi

    cp "$t" script.nx
    if ! NYX_TARGET=wasm32-wasi NYX_NO_GC=1 ./nyx_bootstrap > "$TMP_DIR/compile.log" 2>&1; then
        echo -e "${RED}FAIL (nyx compile)${NC}"
        tail -3 "$TMP_DIR/compile.log" | sed 's/^/      /'
        FAILED=$((FAILED + 1))
        continue
    fi

    if ! clang $WASM_CFLAGS script.ll $WASM_RUNTIME_SRCS -o "$TMP_DIR/$name.wasm" > "$TMP_DIR/link.log" 2>&1; then
        echo -e "${RED}FAIL (wasm link)${NC}"
        tail -3 "$TMP_DIR/link.log" | sed 's/^/      /'
        FAILED=$((FAILED + 1))
        continue
    fi

    if [ "$uses_js_ffi" -eq 1 ]; then
        echo "(wasmtime SKIP: usa extern \"js\")"
    else
        if ! timeout 30 "$WASMTIME" "$TMP_DIR/$name.wasm" > "$TMP_DIR/actual.txt" 2>&1; then
            echo -e "${RED}FAIL (wasmtime run)${NC}"
            tail -3 "$TMP_DIR/actual.txt" | sed 's/^/      /'
            FAILED=$((FAILED + 1))
            continue
        fi

        if diff -q "$TMP_DIR/actual.txt" "$expected" > /dev/null 2>&1; then
            echo -e "${GREEN}PASS${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "${RED}FAIL (output)${NC}"
            diff "$TMP_DIR/actual.txt" "$expected" | head -6 | sed 's/^/      /'
            FAILED=$((FAILED + 1))
            continue
        fi
    fi

    # Segunda pasada (si hay node): mismo .wasm bajo el shim WASI del NAVEGADOR
    # (examples/browser/nyx-wasi-shim.js vía run-node.mjs) — test headless del
    # polyfill browser. Los tests js-ffi pasan su .imports.mjs si existe.
    # EN: same .wasm through the browser WASI shim under node.
    if command -v node > /dev/null 2>&1; then
        printf "  %-32s" "$name (browser-shim)"
        shim_args=("$TMP_DIR/$name.wasm")
        [ -f "$imports_mjs" ] && shim_args+=("$imports_mjs")
        if timeout 30 node examples/browser/run-node.mjs "${shim_args[@]}" > "$TMP_DIR/actual-shim.txt" 2>&1 \
           && diff -q "$TMP_DIR/actual-shim.txt" "$expected" > /dev/null 2>&1; then
            echo -e "${GREEN}PASS${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "${RED}FAIL (node shim)${NC}"
            diff "$TMP_DIR/actual-shim.txt" "$expected" 2>/dev/null | head -6 | sed 's/^/      /'
            FAILED=$((FAILED + 1))
        fi
    elif [ "$uses_js_ffi" -eq 1 ]; then
        echo "  (sin node: test js-ffi no verificado)"
    fi
done

# ==============================================================
# make wasm multi-archivo (handoff #7): el import local "util" del fixture
# debe resolver relativo al dir del FILE (NYX_PROJECT_DIR). Corre bajo
# wasmtime si está; si no, bajo el shim node.
# ==============================================================
MF="tests/wasm/fixtures/multifile"
printf "  %-32s" "multifile (make wasm)"
if make wasm FILE="$MF/main.nx" > "$TMP_DIR/multifile-build.log" 2>&1 && [ -f main.wasm ]; then
    mf_ok=0
    if [ -n "$WASMTIME" ]; then
        if timeout 30 "$WASMTIME" main.wasm > "$TMP_DIR/multifile-out.txt" 2>&1            && diff -q "$TMP_DIR/multifile-out.txt" "$MF/main.expected" > /dev/null 2>&1; then
            mf_ok=1
        fi
    elif command -v node > /dev/null 2>&1; then
        if timeout 30 node examples/browser/run-node.mjs main.wasm > "$TMP_DIR/multifile-out.txt" 2>&1            && diff -q "$TMP_DIR/multifile-out.txt" "$MF/main.expected" > /dev/null 2>&1; then
            mf_ok=1
        fi
    fi
    if [ "$mf_ok" -eq 1 ]; then
        echo -e "${GREEN}PASS${NC}"
        PASSED=$((PASSED + 1))
    else
        echo -e "${RED}FAIL${NC}"
        diff "$TMP_DIR/multifile-out.txt" "$MF/main.expected" 2>/dev/null | head -6 | sed 's/^/      /'
        FAILED=$((FAILED + 1))
    fi
    rm -f main.wasm
else
    echo -e "${RED}FAIL (build)${NC}"
    tail -3 "$TMP_DIR/multifile-build.log" | sed 's/^/      /'
    FAILED=$((FAILED + 1))
fi

echo ""
echo -e "  ${GREEN}$PASSED passed${NC}, ${RED}$FAILED failed${NC}"
[ "$FAILED" -eq 0 ] && echo -e "  ${GREEN}All WASM tests passed${NC}"
exit $([ "$FAILED" -eq 0 ] && echo 0 || echo 1)
