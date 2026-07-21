#!/bin/bash
# run_stack_tests.sh — corre las suites de los stacks extraídos LOCALES.
#
# Canario de regresiones del compilador: los product-tests (ej. el btree de
# nyx-db) cazaron la regresión de codegen v0.18 — al extraerse los productos
# a sus stacks, este runner preserva ese early-warning. Correrlo tras
# cambios de compilador/runtime/std. SKIP limpio si un stack no está clonado.
#
# (nyx-kv-stack no se incluye: sus tests requieren su propio flujo TLS/
#  daemon de producción — se corren desde ese repo.)
set -uo pipefail

declare -A STACKS=(
    ["$HOME/nyx-db-stack"]="test-db"
    ["$HOME/nyx-queue-stack"]="test-queue"
    ["$HOME/nyx-edit-stack"]="test-edit"
    ["$HOME/nyx-shell-stack"]="test-shell"
    ["$HOME/nyx-serve-stack"]="test-serve"
    ["$HOME/nyx-proxy-stack"]="test-proxy"
)

fail=0
ran=0
for dir in "${!STACKS[@]}"; do
    tgt="${STACKS[$dir]}"
    if [ -d "$dir" ]; then
        echo ""
        echo "=== $dir → make $tgt ==="
        if make -C "$dir" "$tgt"; then
            ran=$((ran+1))
        else
            echo "FAIL: $dir"
            fail=1
        fi
    else
        echo "SKIP: $dir (no clonado)"
    fi
done

skipped=0
for dir in "${!STACKS[@]}"; do
    [ -d "$dir" ] || skipped=$((skipped+1))
done

echo ""
if [ "$skipped" -gt 0 ]; then
    echo "⚠️  OJO: $skipped stack(s) no clonados — cobertura PARCIAL (ver SKIP arriba)."
fi
if [ "$fail" -eq 0 ]; then
    echo "Stacks verdes: $ran"
else
    echo "HAY STACKS EN ROJO"
fi
exit $fail
