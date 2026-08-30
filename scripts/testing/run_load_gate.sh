#!/usr/bin/env bash
# ============================================================================
# run_load_gate.sh — gate de carga permanente [Cosecha TASKS.md
# arco:W3-paso0b, ficha MEDIA "promover el gate de carga a caso permanente"]
#
# Corre tests/stress/gc_goroutine_load.nx (300 goroutines × Array<int> de
# 20 000 elementos) N veces normal + M veces con GC_ENABLE_INCREMENTAL=1.
# Es el ÚNICO gate que reprodujo de punta a punta el "bug 2" del paso 0b
# (Boehm escaneando el stack NATIVO de un worker con el sp capturado sobre
# el stack de una goroutine — rango de decenas de MB con guard pages
# PROT_NONE en el medio) y el que mató los dos mutantes de esa investigación
# (revertir GC_set_sp_corrector: 6/10 SEGV; sa_mask vacía sola: sin señal
# hace falta el corrector junto a la máscara). Referencia completa:
# .superpowers/sdd/2026-08-27-w3-paso0b-gc-roots/task-report.md
#
# Compila UNA sola vez con la receta -O2 de producción (la misma de
# `make run`: cp *.nx -> script.nx, ./nyx_bootstrap, clang -O2 script.ll
# $RUNTIME_SRCS $LIBS) y corre el binario resultante N+M veces — no
# recompila por corrida, así que el runtime del gate es dominado por la
# ejecución, no por clang.
#
# El chequeo de cada corrida es DOBLE: (1) exit code 0, (2) la línea exacta
# `LOAD_OK sum=<esperado>` aparece en la salida — comparar SOLO el rc no
# alcanza (un exit espurio en 0 sin la línea, o un timeout, deben contar
# como falla). El valor esperado es una fórmula cerrada e independiente de
# la que computa el propio programa (ver gc_goroutine_load.nx): sirve de
# oráculo externo — si la corrupción de GC afectara la lógica de comparación
# compilada, un grep externo contra un valor fijo lo sigue cazando.
#
# Overrides:
#   LOAD_GATE_RUNS      — corridas normales (default 5)
#   LOAD_GATE_RUNS_INC   — corridas con GC_ENABLE_INCREMENTAL=1 (default 3)
#                          (la investigación original usó ×30 en ambas
#                          variantes para exprimir el ~50% de tasa de fallo
#                          del bug original — override para reproducir eso)
# ============================================================================
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT"

# Serializa contra otros runners: todos comparten script.nx/script.ll/
# script_bin en la raíz del repo (ver lib_testroot_lock.sh).
source "$SCRIPT_DIR/lib_testroot_lock.sh"
nyx_testroot_lock_acquire

RED='\033[0;31m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'

RUNS="${LOAD_GATE_RUNS:-5}"
RUNS_INC="${LOAD_GATE_RUNS_INC:-3}"
NX_FILE="tests/stress/gc_goroutine_load.nx"

# GOROUTINES=300, ARR_SIZE=20000 en gc_goroutine_load.nx →
# per_goroutine = 20000*19999/2 = 199990000; expected = 300*199990000.
# Fijo a propósito (oráculo EXTERNO e independiente del cálculo que hace el
# propio binario) — si algún día se cambian esas constantes en el .nx, este
# valor debe actualizarse a mano junto con él.
EXPECTED_LINE="LOAD_OK sum=59997000000"

RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c runtime/llama_adapter.c runtime/os/os_posix.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

if [ ! -x ./nyx_bootstrap ]; then
    echo -e "${RED}✗ falta ./nyx_bootstrap — correr 'make bootstrap' primero${NC}" >&2
    exit 1
fi
if [ ! -f "$NX_FILE" ]; then
    echo -e "${RED}✗ no se encuentra $NX_FILE${NC}" >&2
    exit 1
fi

BIN="$(mktemp -u /tmp/nyx-load-gate.XXXXXX)"
trap 'rm -f "$BIN" script.nx script.ll' EXIT

echo -e "${CYAN}=== load-gate: compilando $NX_FILE (receta -O2 de producción) ===${NC}"
cp "$NX_FILE" script.nx
if ! ./nyx_bootstrap > /tmp/nyx-load-gate-compile.log 2>&1; then
    echo -e "${RED}✗ error de compilación${NC}" >&2
    tail -20 /tmp/nyx-load-gate-compile.log >&2
    exit 1
fi
if ! clang -O2 script.ll $RUNTIME_SRCS $LIBS -o "$BIN" 2>/tmp/nyx-load-gate-link.log; then
    echo -e "${RED}✗ error de link${NC}" >&2
    tail -20 /tmp/nyx-load-gate-link.log >&2
    exit 1
fi
rm -f script.nx script.ll

OK=0
TOTAL=$((RUNS + RUNS_INC))
FAILED_LABELS=""

run_once() {
    local label="$1" env_prefix="$2"
    local out rc
    out=$(env $env_prefix timeout 30 "$BIN" 2>&1)
    rc=$?
    if [ $rc -eq 0 ] && grep -qF "$EXPECTED_LINE" <<<"$out"; then
        echo -e "  ${GREEN}✓${NC} $label"
        return 0
    else
        echo -e "  ${RED}✗${NC} $label (rc=$rc)"
        echo "$out" | tail -8 | sed 's/^/      /' >&2
        return 1
    fi
}

echo -e "${CYAN}=== load-gate: $RUNS corridas normales ===${NC}"
for i in $(seq 1 "$RUNS"); do
    if run_once "normal #$i" ""; then
        OK=$((OK + 1))
    else
        FAILED_LABELS="$FAILED_LABELS normal#$i"
    fi
done

echo -e "${CYAN}=== load-gate: $RUNS_INC corridas con GC_ENABLE_INCREMENTAL=1 ===${NC}"
for i in $(seq 1 "$RUNS_INC"); do
    if run_once "incremental #$i" "GC_ENABLE_INCREMENTAL=1"; then
        OK=$((OK + 1))
    else
        FAILED_LABELS="$FAILED_LABELS incremental#$i"
    fi
done

echo ""
if [ "$OK" -eq "$TOTAL" ]; then
    echo -e "${GREEN}load-gate: $OK/$TOTAL OK${NC}"
    exit 0
else
    echo -e "${RED}load-gate: $OK/$TOTAL OK — fallaron:$FAILED_LABELS${NC}"
    exit 1
fi
