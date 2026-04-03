#!/bin/bash

# ============================================
# NYX STDLIB TEST RUNNER v1.0
# ============================================
# Compila y ejecuta los tests de la Standard Library
# Concatena std/prelude.nx antes de cada test

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}║     📦 NYX STDLIB TEST RUNNER v1.0                       ║${NC}"
echo -e "${CYAN}║     Standard Library v0.21                                ║${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

if [ ! -f "./nyx_bootstrap" ]; then
    echo -e "${RED}❌ ERROR: No se encuentra ./nyx_bootstrap${NC}"
    echo -e "${YELLOW}Ejecuta: make bootstrap${NC}"
    exit 1
fi

if [ ! -f "std/prelude.nx" ]; then
    echo -e "${RED}❌ ERROR: No se encuentra std/prelude.nx${NC}"
    exit 1
fi

TESTS_TOTAL=0
TESTS_PASSED=0
TESTS_FAILED=0
declare -a FAILED_TESTS

STD_PRELUDE="std/prelude.nx"
TEST_DIR="tests/stdlib"
RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto"

run_test() {
    local test_file=$1
    local test_name=$(basename "$test_file" .nx)

    TESTS_TOTAL=$((TESTS_TOTAL + 1))

    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${CYAN}🧪 Test #${TESTS_TOTAL}: ${test_name}${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

    # Compilar el test (prelude auto-loaded por el driver)
    cp "$test_file" script.nx

    # Compilar con nyx_bootstrap
    if ! compile_output=$(./nyx_bootstrap 2>&1); then
        echo -e "${RED}❌ FALLÓ (error de compilación nyx_bootstrap)${NC}"
        TESTS_FAILED=$((TESTS_FAILED + 1))
        FAILED_TESTS+=("$test_name")
        echo ""
        echo -e "${RED}Error de compilación:${NC}"
        echo "$compile_output" | tail -20
        echo ""
        return
    fi

    if [ ! -f "script.ll" ]; then
        echo -e "${RED}❌ FALLÓ (no se generó script.ll)${NC}"
        TESTS_FAILED=$((TESTS_FAILED + 1))
        FAILED_TESTS+=("$test_name")
        echo ""
        return
    fi

    # Enlazar con clang
    if ! link_output=$(clang script.ll $RUNTIME_SRCS $LIBS -o _test_bin 2>&1); then
        echo -e "${RED}❌ FALLÓ (error de enlace clang)${NC}"
        TESTS_FAILED=$((TESTS_FAILED + 1))
        FAILED_TESTS+=("$test_name")
        echo ""
        echo -e "${RED}Error de enlace:${NC}"
        echo "$link_output" | tail -20
        echo ""
        rm -f _test_bin
        return
    fi

    # Ejecutar
    if run_output=$(./_test_bin 2>&1); then
        echo -e "${GREEN}✅ PASÓ${NC}"
        TESTS_PASSED=$((TESTS_PASSED + 1))
        echo ""
        echo -e "${YELLOW}Output:${NC}"
        echo "$run_output" | tail -20
        echo ""
    else
        echo -e "${RED}❌ FALLÓ (error en ejecución)${NC}"
        TESTS_FAILED=$((TESTS_FAILED + 1))
        FAILED_TESTS+=("$test_name")
        echo ""
        echo -e "${RED}Output:${NC}"
        echo "$run_output" | tail -20
        echo ""
    fi

    rm -f _test_bin
}

echo -e "${YELLOW}Buscando tests en $TEST_DIR...${NC}"
echo ""

for file in "$TEST_DIR"/test-stdlib-*.nx; do
    if [ -f "$file" ]; then
        run_test "$file"
    fi
done

echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                    📊 RESUMEN FINAL                        ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}Tests Ejecutados:${NC} $TESTS_TOTAL"
echo -e "${GREEN}Tests Pasados:   ${NC} $TESTS_PASSED"
echo -e "${RED}Tests Fallidos:  ${NC} $TESTS_FAILED"

echo ""
if [ $TESTS_FAILED -gt 0 ]; then
    echo -e "${RED}Tests que fallaron:${NC}"
    for test in "${FAILED_TESTS[@]}"; do
        echo -e "  ${RED}❌${NC} $test"
    done
    echo ""
    exit 1
else
    echo -e "${GREEN}╔═══════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║     🏆 TODOS LOS STDLIB TESTS PASARON                   ║${NC}"
    echo -e "${GREEN}╚═══════════════════════════════════════════════════════════╝${NC}"
    echo ""
    exit 0
fi
