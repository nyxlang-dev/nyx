#!/usr/bin/env bash
# run_shutdown_test.sh — el closure de shutdown corre en contexto NORMAL.
#
# Ficha [ALTA]: persist.c llamaba al closure de shutdown en CONTEXTO DE SEÑAL,
# donde una alocación (un concat, un print) puede deadlockear contra el lock del
# GC/malloc. Migrado al self-pipe de runtime.c, que ya tenía la clase resuelta.
#
# El test manda SIGTERM de verdad y verifica por marcadores en disco (no por
# stdout: _exit(0) no vacía buffers). El closure ALOCA a propósito — es lo que
# antes era peligroso.
set -u
cd "$(dirname "$0")/../.."
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

START=/tmp/nyx_shutdown_started.txt
MARK=/tmp/nyx_shutdown_marker.txt
rm -f "$START" "$MARK"

RT="$(ls runtime/*.c | tr '\n' ' ')runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
BIN=/tmp/nyx_shutdown_bin

cp tests/shutdown/shutdown_drain.nx script.nx
if ! ./nyx_bootstrap >/tmp/sh_c.log 2>&1 || ! clang -O1 script.ll $RT $LIBS -o "$BIN" 2>/tmp/sh_l.log; then
    echo "  ✗ shutdown-drain: no compila/enlaza"
    grep -iE "error" /tmp/sh_c.log /tmp/sh_l.log | head -3 | sed 's/^/      /'
    rm -f script.nx script.ll
    exit 1
fi
rm -f script.nx script.ll

"$BIN" & PID=$!
sleep 2
if [ ! -f "$START" ]; then
    echo "  ✗ shutdown-drain: el programa no arrancó (sin marcador de inicio)"
    kill -9 $PID 2>/dev/null
    exit 1
fi
kill -TERM $PID
sleep 1
wait $PID 2>/dev/null
rc=$?

fail=0
if [ "$rc" -ne 0 ]; then
    echo "  ✗ shutdown-drain: exit=$rc (esperado 0)"
    fail=1
fi
if [ "$(cat "$MARK" 2>/dev/null)" != "shutdown-ok-aloco" ]; then
    echo "  ✗ shutdown-drain: el closure no corrió o no pudo alocar (marcador: '$(cat "$MARK" 2>/dev/null)')"
    fail=1
fi

rm -f "$BIN" "$START" "$MARK"
if [ "$fail" -eq 0 ]; then
    echo "  ✓ shutdown-drain: el closure corrió en contexto normal, alocó y el proceso salió con 0"
    exit 0
fi
exit 1
