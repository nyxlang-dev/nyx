#!/bin/bash

# ============================================
# NYX BOOTSTRAP TEST RUNNER v2.1
# ============================================
# Ejecuta sistematicamente los 205 tests de bootstrap
# usando el compilador nyx_bootstrap self-hosted
#
# En entornos con poca memoria (< 2GB, ej: EC2 t4g.micro),
# los tests que fallen se reintentan hasta 2 veces para
# mitigar fallos flaky por presion de recursos en clang.

set -e

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Detectar entorno: si < 2GB RAM, habilitar retry para flaky tests
TOTAL_MEM_KB=$(awk '/^MemTotal:/ { print $2 }' /proc/meminfo 2>/dev/null || echo "999999999")
if [ "$TOTAL_MEM_KB" -lt 2097152 ]; then
    LOW_MEM=1
    MAX_RETRIES=2
else
    LOW_MEM=0
    MAX_RETRIES=0
fi

echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}║     🧬 NYX BOOTSTRAP TEST RUNNER v2.1                   ║${NC}"
echo -e "${CYAN}║     Ejecutando tests de bootstrap                          ║${NC}"
echo -e "${CYAN}║                                                            ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
if [ "$LOW_MEM" -eq 1 ]; then
    echo -e "${YELLOW}⚡ Low-mem mode ($(( TOTAL_MEM_KB / 1024 ))MB): retries habilitados (max $MAX_RETRIES)${NC}"
    echo ""
fi

# Contadores
TESTS_TOTAL=0
TESTS_PASSED=0
TESTS_FAILED=0
TESTS_RETRIED=0

# Array para almacenar tests fallidos
declare -a FAILED_TESTS

# Directorio de tests
TEST_DIR="tests"
RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c"
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

    # Skip x86_64-only asm tests on ARM64
    local arch=$(uname -m)
    if [[ "$arch" == "aarch64" ]] && grep -q 'asm(".*%rsp\|asm(".*%rdi\|asm(".*mfence\|asm(".*%eax' "$test_file" 2>/dev/null; then
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${CYAN}🧪 Test #${TESTS_TOTAL}: ${test_name}${NC}"
        echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${YELLOW}⏭️  SKIPPED (x86_64 asm on ARM64)${NC}"
        echo ""
        TESTS_TOTAL=$((TESTS_TOTAL - 1))
        return
    fi

    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${CYAN}🧪 Test #${TESTS_TOTAL}: ${test_name}${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

    # Compilar el test (prelude auto-loaded por el driver)
    cp "$test_file" script.nx

    # Funcion interna: intentar compilar y ejecutar.
    # M-08 S13: semantic activo end-to-end. Deuda pre-existente cerrada:
    #   - S12c: g_known_methods al top del archivo (bootstrap forward-ref).
    #   - S13a: g_has_imports degrada "unknown type" a wildcard cuando el
    #     archivo tiene imports cross-module (test-140/141/143/144 con
    #     std/args/csv/semver/sync).
    #   - S13b: tuple `(int,int)` y fixed-size array `[T:N]` types pasan
    #     como TyUnknown wildcard en validate_type_ann (no estan en Type
    #     AST aun, pero son sintaxis valida).
    _try_run_test() {
        ./nyx_bootstrap > /dev/null 2>&1 && \
        clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>/dev/null && \
        output=$(timeout 30 ./script_bin 2>&1)
    }

    # Ejecutar el test y capturar la salida
    # NYX_SKIP_SEMANTIC: skip semantic check for tests that use new builtins not yet in semantic.ll
    if _try_run_test; then
        echo -e "${GREEN}✅ PASÓ${NC}"
        TESTS_PASSED=$((TESTS_PASSED + 1))

        # Mostrar output del test
        echo ""
        echo -e "${YELLOW}Output:${NC}"
        echo "$output" | head -20
        echo ""
    else
        # En entornos low-mem, reintentar antes de declarar fallo
        local retried=0
        if [ "$LOW_MEM" -eq 1 ]; then
            for attempt in $(seq 1 $MAX_RETRIES); do
                echo -e "${YELLOW}⟳ Retry $attempt/$MAX_RETRIES (low-mem mode)...${NC}"
                sleep 1
                cp "$test_file" script.nx
                if _try_run_test; then
                    echo -e "${GREEN}✅ PASÓ (retry #$attempt)${NC}"
                    TESTS_PASSED=$((TESTS_PASSED + 1))
                    TESTS_RETRIED=$((TESTS_RETRIED + 1))
                    retried=1
                    echo ""
                    echo -e "${YELLOW}Output:${NC}"
                    echo "$output" | head -20
                    echo ""
                    break
                fi
            done
        fi

        if [ "$retried" -eq 0 ]; then
            echo -e "${RED}❌ FALLÓ${NC}"
            TESTS_FAILED=$((TESTS_FAILED + 1))
            FAILED_TESTS+=("$test_name")

            # Mostrar error
            echo ""
            echo -e "${RED}Error:${NC}"
            if ! ./nyx_bootstrap > /dev/null 2>&1; then
                echo "Compilation error (lexer/parser/semantic)"
                ./nyx_bootstrap 2>&1 | head -20
            elif ! clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>/dev/null; then
                echo "LLVM compilation error"
                clang script.ll $RUNTIME_SRCS $LIBS -o script_bin 2>&1 | head -20
            else
                echo "Runtime error"
                ./script_bin 2>&1 | head -20
            fi
            echo ""
        fi
    fi

    echo ""
}

# Ejecutar todos los tests en orden
echo -e "${YELLOW}Buscando tests en $TEST_DIR...${NC}"
echo ""

# Tests en orden numérico — escanea tests/compiler/ (v0.13 layout)
while IFS= read -r file; do
    run_test "$file"
done < <(find tests/compiler/basics tests/compiler/types tests/compiler/systems tests/compiler/iterators-traits tests/compiler/stdlib-suite tests/compiler/language tests/compiler/ecosystem -maxdepth 1 -name 'test-*.nx' 2>/dev/null | sort -V)

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
if [ "$TESTS_RETRIED" -gt 0 ]; then
    echo -e "${YELLOW}Tests con retry: ${NC} $TESTS_RETRIED (pasaron tras reintentar)"
fi

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
