#!/usr/bin/env bash
# =============================================================================
# run_integration_tests.sh — End-to-end integration tests
#
# Tests the full stack: HTTP requests through serve with KV backend.
#
# Usage:
#   bash scripts/testing/run_integration_tests.sh
#
# Prerequisites: products/serve/nyx-serve and products/kv/nyx-kv must be compiled
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT"

# Colors
if [ -t 1 ]; then
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    BOLD='\033[1m'
    NC='\033[0m'
else
    GREEN='' RED='' YELLOW='' BOLD='' NC=''
fi

echo -e "\n${BOLD}=======================================${NC}"
echo -e "${BOLD}   Nyx Integration Tests (E2E)${NC}"
echo -e "${BOLD}=======================================${NC}\n"

# Compile if needed
for product in kv serve; do
    binary="products/$product/nyx-$product"
    if [ ! -f "$binary" ]; then
        echo -e "  Compiling nyx-$product..."
        cp "products/$product/src/main.nx" script.nx
        NYX_PROJECT_DIR="products/$product" NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap >/dev/null 2>&1
        clang -O2 script.ll runtime/*.c -lgc -lpthread -ldl -lm -lssl -lcrypto -lz \
            -o "$binary" 2>/dev/null
        rm -f script.nx script.ll
        echo -e "  ${GREEN}Compiled${NC} $binary"
    fi
done

if python3 tests/integration/test_serve_kv.py; then
    echo -e "${GREEN}Integration tests passed${NC}"
    exit 0
else
    echo -e "${RED}Integration tests failed${NC}"
    exit 1
fi
