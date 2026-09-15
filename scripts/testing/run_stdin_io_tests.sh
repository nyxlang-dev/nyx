#!/usr/bin/env bash
# =============================================================================
# run_stdin_io_tests.sh — read_line()/stdin_eof()/read_stdin_all() sobre
# entrada real, alimentada por archivo/pipe (fix friction report
# 20260914-210002-team-2, 2026-09-14).
#
# tests/ai-first/*.nx son self-asserting pero el runner de esa suite
# (run_ai_first_tests.sh) NO redirige stdin -- por eso los casos de este
# reporte viven aparte, en tests/ai-first/stdin/, con SU PROPIO runner que sí
# genera el stdin exacto que cada caso necesita (una línea de 10000 bytes,
# "uno\ndos" sin salto final, bytes 0, entrada vacía) y lo redirige al binario
# compilado. Cada caso aborta (assert, exit 1) si algo no calza -- "pasa" =
# compila Y corre con exit 0 y la línea "OK stdin-io-NN" en stdout, igual que
# la suite ai-first madre.
#
# Corre en DOS targets por caso: nativo (siempre) y wasm32-wasi bajo wasmtime
# (SKIP limpio si falta el toolchain, mismo patrón que run_wasm_tests.sh) --
# el reporte midió el bug IDÉNTICO en los dos, así que la paridad importa.
# =============================================================================
set -u

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh).
source "$(dirname "${BASH_SOURCE[0]}")/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

RT="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

if [ ! -x ./nyx_bootstrap ]; then
    echo "✗ falta ./nyx_bootstrap — ejecuta 'make bootstrap' primero"
    exit 1
fi

WASI_SYSROOT="${WASI_SYSROOT:-/usr}"
WASI_LIBC="$WASI_SYSROOT/lib/wasm32-wasi/libc.a"
WASMTIME="$(command -v wasmtime || true)"
[ -z "$WASMTIME" ] && [ -x "$HOME/.local/bin/wasmtime" ] && WASMTIME="$HOME/.local/bin/wasmtime"
WASM_OK=1
[ -f "$WASI_LIBC" ] || WASM_OK=0
{ [ -n "$WASMTIME" ] && [ -x "$WASMTIME" ]; } || WASM_OK=0
WASM_RUNTIME_SRCS="$(grep -v '^#' runtime/wasm.srcs | grep -v '^$' | tr '\n' ' ')"
WASM_CFLAGS="--target=wasm32-wasi --sysroot=$WASI_SYSROOT -O2 -Iruntime/wasi -Wl,-z,stack-size=1048576 -Wl,--export-table"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

# ── Genera los 4 fixtures de stdin (deterministas, no vale la pena
#    commitearlos como binarios) ─────────────────────────────────────────
python3 -c "import sys; sys.stdout.write('a'*10000)" > "$TMP_DIR/in-01.bin"
python3 -c "import sys; sys.stdout.write('a'*10000+'\n')" > "$TMP_DIR/in-02.bin"
printf 'uno\ndos' > "$TMP_DIR/in-03.bin"
: > "$TMP_DIR/in-04.bin"
python3 -c "import sys; sys.stdout.buffer.write(b'a\x00b\nc\x00')" > "$TMP_DIR/in-05.bin"
: > "$TMP_DIR/in-06.bin"

PASS=0; FAIL=0; FAILED=()

run_one() {
    local nx="$1" input="$2" want="$3"
    local name; name="$(basename "$nx" .nx)"

    # ── nativo ──
    printf "  %-34s" "$name (nativo)"
    cp "$nx" script.nx
    if ./nyx_bootstrap > "$TMP_DIR/c.log" 2>&1 && clang -O2 script.ll $RT $LIBS -o script_bin 2>"$TMP_DIR/cl.log"; then
        out="$(timeout 30 ./script_bin < "$input" 2>&1)"; ec=$?
        if [ $ec -eq 0 ] && grep -qF "$want" <<<"$out"; then
            echo "PASS"
            PASS=$((PASS+1))
        else
            echo "FAIL (exit=$ec) — $out"
            FAIL=$((FAIL+1)); FAILED+=("$name (nativo)")
        fi
    else
        msg="$(grep -iE 'error|NYX[0-9]' "$TMP_DIR/c.log" "$TMP_DIR/cl.log" 2>/dev/null | head -1)"
        echo "FAIL (compile) — $msg"
        FAIL=$((FAIL+1)); FAILED+=("$name (nativo, compile)")
    fi

    # ── wasm32-wasi (SKIP limpio sin toolchain) ──
    printf "  %-34s" "$name (wasm)"
    if [ "$WASM_OK" -ne 1 ]; then
        echo "SKIP (falta wasi-libc/wasmtime)"
        return
    fi
    cp "$nx" script.nx
    if ! NYX_TARGET=wasm32-wasi NYX_NO_GC=1 ./nyx_bootstrap > "$TMP_DIR/wc.log" 2>&1; then
        echo "FAIL (nyx compile wasm)"
        tail -3 "$TMP_DIR/wc.log" | sed 's/^/      /'
        FAIL=$((FAIL+1)); FAILED+=("$name (wasm, compile)")
        return
    fi
    if ! clang $WASM_CFLAGS script.ll $WASM_RUNTIME_SRCS -o "$TMP_DIR/$name.wasm" > "$TMP_DIR/wl.log" 2>&1; then
        echo "FAIL (wasm link)"
        tail -3 "$TMP_DIR/wl.log" | sed 's/^/      /'
        FAIL=$((FAIL+1)); FAILED+=("$name (wasm, link)")
        return
    fi
    wout="$(timeout 30 "$WASMTIME" "$TMP_DIR/$name.wasm" < "$input" 2>&1)"; wec=$?
    if [ $wec -eq 0 ] && grep -qF "$want" <<<"$wout"; then
        echo "PASS"
        PASS=$((PASS+1))
    else
        echo "FAIL (exit=$wec) — $wout"
        FAIL=$((FAIL+1)); FAILED+=("$name (wasm)")
    fi
}

echo "╔══════════════════════════════════════════════════════════╗"
echo "║  STDIN-IO — read_line/stdin_eof/read_stdin_all con datos  ║"
echo "╚══════════════════════════════════════════════════════════╝"

run_one tests/ai-first/stdin/01-read-line-long-no-nl.nx   "$TMP_DIR/in-01.bin" "OK stdin-io-01"
run_one tests/ai-first/stdin/02-read-line-long-with-nl.nx "$TMP_DIR/in-02.bin" "OK stdin-io-02"
run_one tests/ai-first/stdin/03-last-line-no-newline.nx   "$TMP_DIR/in-03.bin" "OK stdin-io-03"
run_one tests/ai-first/stdin/04-empty-input.nx            "$TMP_DIR/in-04.bin" "OK stdin-io-04"
run_one tests/ai-first/stdin/05-read-stdin-all-nul.nx     "$TMP_DIR/in-05.bin" "OK stdin-io-05"
run_one tests/ai-first/stdin/06-read-stdin-all-empty.nx   "$TMP_DIR/in-06.bin" "OK stdin-io-06"

rm -f script.nx script.ll script_bin
echo "────────────────────────────────────────────────"
echo "  STDIN-IO: $PASS pasados, $FAIL fallidos"
if [ $FAIL -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
exit 0
