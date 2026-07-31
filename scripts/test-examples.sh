#!/usr/bin/env bash
# test-examples.sh — verifica que todos los ejemplos de "Nyx by Example"
# compilan con el compilador actual.
#
# Usa el toolchain instalado en ~/.nyx/ si existe, o el bootstrap del monorepo.
#
# Uso: bash scripts/test-examples.sh
# Target Makefile: make test-examples

set -e
cd "$(dirname "$0")/.."

NYX_BIN="./nyx_bootstrap"
if [ -x "$HOME/.nyx/bin/nyx" ]; then
    NYX_BIN="$HOME/.nyx/bin/nyx"
fi

if [ ! -x "$NYX_BIN" ]; then
    echo "error: no Nyx compiler found. Run 'make bootstrap' or install the toolchain." >&2
    exit 1
fi

EXAMPLES_DIR="examples/by-example"
if [ ! -d "$EXAMPLES_DIR" ]; then
    echo "error: $EXAMPLES_DIR not found" >&2
    exit 1
fi

PASS=0
FAIL=0
FAILED_LIST=()

for nx_file in "$EXAMPLES_DIR"/*.nx; do
    name="$(basename "$nx_file" .nx)"
    cp "$nx_file" script.nx

    if "$NYX_BIN" > /dev/null 2>&1; then
        printf "  \033[1;32m✓\033[0m %s\n" "$name"
        PASS=$((PASS + 1))
    else
        printf "  \033[1;31m✗\033[0m %s\n" "$name"
        FAIL=$((FAIL + 1))
        FAILED_LIST+=("$name")
    fi
done

rm -f script.nx script.ll

echo ""
echo "────────────────────────────────────────"
echo "  Passed: $PASS   Failed: $FAIL"
echo "────────────────────────────────────────"

if [ "$FAIL" -gt 0 ]; then
    echo ""
    echo "Failed examples:"
    for name in "${FAILED_LIST[@]}"; do
        echo "  - $name"
    done
    echo ""
    echo "To debug: cp examples/by-example/<name>.nx script.nx && $NYX_BIN"
    exit 1
fi
