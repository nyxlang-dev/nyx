#!/bin/bash
# scripts/testing/w4_gate_emit_ir.sh — emite el IR Windows (.win.ll) de los
# 12 fixtures del gate de concurrencia W3/W4 (+ test-411, la línea de base de
# W4). Corre en LINUX/WSL: el bootstrap no corre en Windows todavía (W6), así
# que el IR se genera acá y viaja al lado Windows, igual que en el job
# w2-subset-ir de .github/workflows/windows.yml.
#
# ES: parte 1 de 2 del gate local; la parte 2 (compilar el runtime, linkear,
# correr N veces) es w4_gate_run.sh, del lado Windows. Antes vivía fuera del
# repo, en el workdir C:\nyx\w4gate de la máquina Windows (Task 1 de W4).
# EN: part 1 of 2 of the local gate — emits the windows-triple IR of the 12
# concurrency fixtures (+ test-411) from Linux/WSL; part 2 is w4_gate_run.sh.
#
# Uso / usage:
#   w4_gate_emit_ir.sh <outdir> [x64|arm64]
#   (desde la raíz de un clon con nyx_bootstrap ya construido)
set -u

OUT="${1:?uso: w4_gate_emit_ir.sh <outdir> [x64|arm64]}"
ARCH="${2:-x64}"
case "$ARCH" in
  x64)   TRIPLE=x86_64-pc-windows-msvc ;;
  arm64) TRIPLE=aarch64-pc-windows-msvc ;;
  *) echo "arch desconocida: $ARCH"; exit 2 ;;
esac
[ -x ./nyx_bootstrap ] || { echo "falta ./nyx_bootstrap (bash scripts/build_bootstrap.sh)"; exit 2; }
mkdir -p "$OUT"

# El gate de concurrencia = el bloque «W3 Task 5 — CONCURRENCIA» de
# win_subset_manifest.txt, más test-411 (línea de base de W4, fuera del gate).
GATE="144-sync 145-spawn 146-scheduler 147-select 229-async-alloc
240-async-await-value 241-async-nested 242-async-interleave
243-spawn-goroutines 257-spawn-capture 277-fn-run-name 380-wg-wait-timeout"

FAIL=0
emit() {  # $1 = ruta del .nx
  local src="$1" name
  name=$(basename "$src" .nx)
  cp "$src" script.nx
  if NYX_PROJECT_DIR="$(cd "$(dirname "$src")" && pwd)" NYX_TARGET="$TRIPLE" \
       ./nyx_bootstrap > "$OUT/$name.emit.log" 2>&1; then
    cp script.ll "$OUT/$name.win.ll"
    echo "ok   $name"
  else
    echo "FAIL $name (ver $OUT/$name.emit.log)"
    FAIL=1
  fi
}

for t in $GATE; do emit "tests/compiler/language/test-$t.nx"; done
for f in tests/compiler/*/test-411-*.nx; do [ -f "$f" ] && emit "$f"; done
exit $FAIL
