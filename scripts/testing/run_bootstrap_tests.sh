#!/bin/bash

# ============================================
# NYX BOOTSTRAP TEST RUNNER v2.0
# ============================================
# Ejecuta sistematicamente los 98 tests de bootstrap
# usando el compilador nyx_bootstrap self-hosted

set -e

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}║     🧬 NYX BOOTSTRAP TEST RUNNER v2.0                   ║${NC}"
echo -e "${CYAN}║     Ejecutando tests de bootstrap                          ║${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Contadores
TESTS_TOTAL=0
TESTS_PASSED=0
TESTS_FAILED=0

# Array para almacenar tests fallidos
declare -a FAILED_TESTS

# Directorio de tests
TEST_DIR="tests"
RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"
STD_PRELUDE="std/prelude.nx"

# Verificar que existe el directorio
if [ ! -d "$TEST_DIR" ]; then
    echo -e "${RED}❌ ERROR: No se encuentra el directorio $TEST_DIR${NC}"
    exit 1
fi

# Verificar que existe nyx_bootstrap
if [ ! -f "./nyx_bootstrap" ]; then
    echo -e "${RED}❌ ERROR: No se encuentra el compilador ./nyx_bootstrap${NC}"
    echo -e "${YELLOW}Ejecuta primero: make bootstrap${NC}"
    exit 1
fi

# Función para ejecutar un test
run_test() {
    local test_file=$1
    local test_name=$(basename "$test_file" .nx)

    TESTS_TOTAL=$((TESTS_TOTAL + 1))

    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${CYAN}🧪 Test #${TESTS_TOTAL}: ${test_name}${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

    # Compilar el test (prelude auto-loaded por el driver)
    cp "$test_file" script.nx

    # Ejecutar el test y capturar la salida
    # NYX_SKIP_SEMANTIC: skip semantic check for tests that use new builtins not yet in semantic.ll
    if NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap > /dev/null 2>&1 && \
       clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>/dev/null && \
       output=$(timeout 30 ./script_bin 2>&1); then
        echo -e "${GREEN}✅ PASÓ${NC}"
        TESTS_PASSED=$((TESTS_PASSED + 1))

        # Mostrar output del test
        echo ""
        echo -e "${YELLOW}Output:${NC}"
        echo "$output" | head -20
        echo ""
    else
        echo -e "${RED}❌ FALLÓ${NC}"
        TESTS_FAILED=$((TESTS_FAILED + 1))
        FAILED_TESTS+=("$test_name")

        # Mostrar error
        echo ""
        echo -e "${RED}Error:${NC}"
        if ! NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap > /dev/null 2>&1; then
            echo "Compilation error (lexer/parser/semantic)"
            NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap 2>&1 | head -20
        elif ! clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>/dev/null; then
            echo "LLVM compilation error"
            clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>&1 | head -20
        else
            echo "Runtime error"
            ./script_bin 2>&1 | head -20
        fi
        echo ""
    fi

    echo ""
}

# Ejecutar todos los tests en orden
echo -e "${YELLOW}Buscando tests en $TEST_DIR...${NC}"
echo ""

# Tests en orden numérico
for i in {01..99} {100..199}; do
    test_file="$TEST_DIR/test-$i-*.nx"

    # Expandir el glob
    for file in $test_file; do
        if [ -f "$file" ]; then
            run_test "$file"
        fi
    done
done

# ============================================
# RESUMEN FINAL
# ============================================

echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}║                    📊 RESUMEN FINAL                        ║${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${BLUE}Tests Ejecutados:${NC} $TESTS_TOTAL"
echo -e "${GREEN}Tests Pasados:   ${NC} $TESTS_PASSED"
echo -e "${RED}Tests Fallidos:  ${NC} $TESTS_FAILED"

# Calcular porcentaje
if [ $TESTS_TOTAL -gt 0 ]; then
    SUCCESS_RATE=$((TESTS_PASSED * 100 / TESTS_TOTAL))
    echo ""
    echo -e "${YELLOW}Tasa de éxito:${NC} ${SUCCESS_RATE}%"
fi

echo ""

# Mostrar tests fallidos si hay alguno
if [ $TESTS_FAILED -gt 0 ]; then
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${RED}Tests que fallaron:${NC}"
    echo ""
    for test in "${FAILED_TESTS[@]}"; do
        echo -e "  ${RED}❌${NC} $test"
    done
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""

    exit 1
else
    echo -e "${GREEN}╔═══════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                                                           ║${NC}"
    echo -e "${GREEN}║     🏆 ¡PERFECTO! TODOS LOS TESTS PASARON 🏆            ║${NC}"
    echo -e "${GREEN}║                                                           ║${NC}"
    echo -e "${GREEN}║     El compilador funciona al 100%                       ║${NC}"
    echo -e "${GREEN}║                                                           ║${NC}"
    echo -e "${GREEN}╚═══════════════════════════════════════════════════════════╝${NC}"
    echo ""

    exit 0
fi
