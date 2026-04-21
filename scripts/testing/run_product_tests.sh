#!/usr/bin/env bash
# =============================================================================
# run_product_tests.sh — Integration tests for Nyx products
#
# Compiles (if needed), starts each product on a test port,
# runs its Python test suite, then stops the server.
#
# Usage:
#   bash scripts/testing/run_product_tests.sh          # all products
#   bash scripts/testing/run_product_tests.sh kv        # single product
#   bash scripts/testing/run_product_tests.sh kv queue  # multiple products
#
# Exit code: 0 if all pass, 1 if any fail
# =============================================================================

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT"

# Test ports (different from production to avoid conflicts)
KV_TEST_PORT=16380
QUEUE_TEST_PORT=16381
DB_TEST_PORT=16399

# Colors (if terminal supports them)
if [ -t 1 ]; then
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    YELLOW='\033[0;33m'
    BOLD='\033[1m'
    NC='\033[0m'
else
    GREEN='' RED='' YELLOW='' BOLD='' NC=''
fi

products_tested=0
products_failed=0

# PID tracking for cleanup
SERVER_PID=""

cleanup() {
    if [ -n "$SERVER_PID" ] && kill -0 "$SERVER_PID" 2>/dev/null; then
        kill -TERM "$SERVER_PID" 2>/dev/null || true
        sleep 0.3
        kill -9 "$SERVER_PID" 2>/dev/null || true
    fi
    SERVER_PID=""
}
trap cleanup EXIT

# ─────────────────────────────────────────────
#  Helpers
# ─────────────────────────────────────────────

compile_product() {
    local name="$1"
    local binary="products/$name/nyx-$name"

    if [ -f "$binary" ]; then
        echo -e "  ${YELLOW}Binary exists:${NC} $binary (skipping compile)"
        return 0
    fi

    echo -e "  ${YELLOW}Compiling${NC} nyx-$name..."
    # Delegate to the product's Makefile so it picks up whichever entry
    # point the product declares (src/main.nx pre-v0.13 or
    # examples/standalone.nx post-v0.13). Makefiles already know how to
    # drive the bootstrap + clang flow.
    if ! make -C "products/$name" build >/dev/null 2>&1; then
        echo -e "  ${RED}Failed to compile${NC} $binary"
        return 1
    fi
    echo -e "  ${GREEN}Compiled${NC} $binary"
}

wait_for_port() {
    local port="$1"
    local max_retries="${2:-30}"
    local retries=0
    while ! (echo > /dev/tcp/127.0.0.1/"$port") 2>/dev/null; do
        retries=$((retries + 1))
        if [ $retries -ge "$max_retries" ]; then
            return 1
        fi
        sleep 0.1
    done
    return 0
}

stop_server() {
    if [ -n "$SERVER_PID" ] && kill -0 "$SERVER_PID" 2>/dev/null; then
        kill -TERM "$SERVER_PID" 2>/dev/null || true
        local retries=0
        while kill -0 "$SERVER_PID" 2>/dev/null && [ $retries -lt 30 ]; do
            retries=$((retries + 1))
            sleep 0.1
        done
        kill -9 "$SERVER_PID" 2>/dev/null || true
    fi
    SERVER_PID=""
}

# ─────────────────────────────────────────────
#  Product test runners
# ─────────────────────────────────────────────

test_kv() {
    local port=$KV_TEST_PORT

    echo -e "\n${BOLD}=== Testing nyx-kv ===${NC}\n"

    compile_product "kv"

    echo -e "  Starting nyx-kv on port $port..."
    products/kv/nyx-kv --port "$port" >/dev/null 2>&1 &
    SERVER_PID=$!
    sleep 0.3

    if ! kill -0 "$SERVER_PID" 2>/dev/null; then
        echo -e "  ${RED}nyx-kv failed to start${NC}"
        products_failed=$((products_failed + 1))
        products_tested=$((products_tested + 1))
        SERVER_PID=""
        return 1
    fi

    if ! wait_for_port "$port" 30; then
        echo -e "  ${RED}nyx-kv not listening on port $port${NC}"
        stop_server
        products_failed=$((products_failed + 1))
        products_tested=$((products_tested + 1))
        return 1
    fi

    echo -e "  ${GREEN}Server ready${NC}\n"

    if python3 tests/products/test_nyx_kv.py "127.0.0.1" "$port"; then
        echo -e "\n  ${GREEN}nyx-kv: ALL TESTS PASSED${NC}"
    else
        echo -e "\n  ${RED}nyx-kv: SOME TESTS FAILED${NC}"
        products_failed=$((products_failed + 1))
    fi

    stop_server
    rm -f dump.ndb 2>/dev/null
    products_tested=$((products_tested + 1))
}

test_queue() {
    local port=$QUEUE_TEST_PORT

    echo -e "\n${BOLD}=== Testing nyx-queue ===${NC}\n"

    compile_product "queue"

    echo -e "  Starting nyx-queue on port $port..."
    products/queue/nyx-queue --port "$port" --no-rate-limit >/dev/null 2>&1 &
    SERVER_PID=$!
    sleep 0.3

    if ! kill -0 "$SERVER_PID" 2>/dev/null; then
        echo -e "  ${RED}nyx-queue failed to start${NC}"
        products_failed=$((products_failed + 1))
        products_tested=$((products_tested + 1))
        SERVER_PID=""
        return 1
    fi

    if ! wait_for_port "$port" 30; then
        echo -e "  ${RED}nyx-queue not listening on port $port${NC}"
        stop_server
        products_failed=$((products_failed + 1))
        products_tested=$((products_tested + 1))
        return 1
    fi

    echo -e "  ${GREEN}Server ready${NC}\n"

    if python3 tests/products/test_nyx_queue.py "127.0.0.1" "$port"; then
        echo -e "\n  ${GREEN}nyx-queue: ALL TESTS PASSED${NC}"
    else
        echo -e "\n  ${RED}nyx-queue: SOME TESTS FAILED${NC}"
        products_failed=$((products_failed + 1))
    fi

    stop_server
    rm -f queue.ndb 2>/dev/null
    products_tested=$((products_tested + 1))
}

test_db() {
    echo -e "\n${BOLD}=== Testing nyx-db ===${NC}\n"

    compile_product "db"

    # test_nyx_db.py manages its own server lifecycle (start, test, stop, restart for persistence)
    if python3 tests/products/test_nyx_db.py; then
        echo -e "\n  ${GREEN}nyx-db: ALL TESTS PASSED${NC}"
    else
        echo -e "\n  ${RED}nyx-db: SOME TESTS FAILED${NC}"
        products_failed=$((products_failed + 1))
    fi

    products_tested=$((products_tested + 1))
}

# ─────────────────────────────────────────────
#  Main
# ─────────────────────────────────────────────

echo -e "\n${BOLD}=======================================${NC}"
echo -e "${BOLD}   Nyx Product Integration Tests${NC}"
echo -e "${BOLD}=======================================${NC}"

# Determine which products to test
products=("$@")
if [ ${#products[@]} -eq 0 ]; then
    products=("kv" "queue" "db")
fi

# Run tests
any_failed=0
for product in "${products[@]}"; do
    case "$product" in
        kv)    test_kv    || true ;;
        queue) test_queue || true ;;
        db)    test_db    || true ;;
        *)
            echo -e "${RED}Unknown product: $product${NC}"
            echo "Available: kv, queue, db"
            any_failed=1
            ;;
    esac
done

# Summary
echo -e "\n${BOLD}=======================================${NC}"
echo -e "  Products tested: $products_tested"
if [ $products_failed -gt 0 ]; then
    echo -e "  ${RED}Products failed: $products_failed${NC}"
    any_failed=1
else
    echo -e "  ${GREEN}All products passed!${NC}"
fi
echo -e "${BOLD}=======================================${NC}\n"

exit $any_failed
