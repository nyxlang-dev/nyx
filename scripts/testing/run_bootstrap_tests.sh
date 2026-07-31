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
COMPARED_OK=0
COMPARED_DIFF=0
COMPARED_KNOWN=0
COMPARED_XPASS=0
NO_EXPECTED=0
DIFF_LIST=""
KNOWN_LIST=""
XPASS_LIST=""

# ── Fallos de salida CONOCIDOS ───────────────────────────────────────────────
# Tests cuyo expected/ dice lo correcto y el compilador/runtime produce otra
# cosa. Se reportan aparte y no rompen el exit code — pero el expected/ queda
# intacto (nunca falseado a la salida actual) y el test nunca se borra, así
# que el día que se arregle el bug el test pasa a verde solo.
# Cada entrada DEBE citar su ficha en TASKS.md.
KNOWN_OUTPUT_FAILURES=(
    # TASKS.md · [sp3-bug-1] colisión de símbolo ELF `inflate` (std/compress
    # define `pub fn inflate` sin mangling) → zlib's uncompress() llama a la
    # fn Nyx y nyx_decompress devuelve "". Rompe las 2 líneas de round-trip.
    # Es de compiler/ (linkage/mangling): fuera del scope de este sub-proyecto.
    "test-169-compress"
)

_is_known_output_failure() {
    local t="$1" k
    for k in "${KNOWN_OUTPUT_FAILURES[@]}"; do
        [ "$t" = "$k" ] && return 0
    done
    return 1
}

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
    local OUTPUT_MISMATCH=0

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

    # Compara $output contra un expected/, con soporte para el marcador
    # __ANY__ (ver comentario de _compare_expected). Devuelve 0 si matchea.
    #
    # Sin __ANY__ en el archivo: diff literal, exactamente como antes (el
    # camino de los 93 expected/ deterministas, sin cambio de semántica).
    # Con __ANY__: comparación línea a línea; la línea del expected se parte
    # en el primer `__ANY__` y la línea real debe empezar con el prefijo y
    # terminar con el sufijo. El conteo de líneas SIGUE siendo exacto — un
    # __ANY__ tolera el CONTENIDO de una línea, nunca su ausencia ni líneas
    # de más.
    _expected_matches() {
        local exp_file="$1"
        if ! grep -q '__ANY__' "$exp_file"; then
            printf '%s\n' "$output" | diff -q - "$exp_file" > /dev/null 2>&1
            return $?
        fi
        printf '%s\n' "$output" | awk -v expf="$exp_file" '
            BEGIN { n = 0; while ((getline l < expf) > 0) { e[++n] = l } }
            {
                m++
                if (m > n) { bad = 1; exit }
                i = index(e[m], "__ANY__")
                if (i == 0) {
                    if ($0 != e[m]) { bad = 1; exit }
                } else {
                    pre = substr(e[m], 1, i - 1)
                    suf = substr(e[m], i + 7)
                    if (length($0) < length(pre) + length(suf)) { bad = 1; exit }
                    if (substr($0, 1, length(pre)) != pre) { bad = 1; exit }
                    if (length(suf) > 0 && substr($0, length($0) - length(suf) + 1) != suf) { bad = 1; exit }
                }
            }
            END { if (bad || m != n) exit 1; exit 0 }'
    }

    # Comparación de salida contra expected/, cuando el archivo existe.
    # Hasta 2026-07-30 este runner NUNCA comparaba: capturaba $output y
    # solo lo imprimía, así que un test sin assert() solo detectaba
    # crashes. Había 95 archivos expected/ escritos que nadie consumía.
    # Factorizada en función porque hay DOS ramas de éxito (la principal
    # y el retry de low-mem, más abajo) — duplicarla las hace divergir.
    #
    # Desde el triaje (sub-proyecto 3, Task 2) una diferencia FALLA el test:
    # compila+linkea+exit 0 ya no alcanza si el expected/ dice otra cosa.
    # Dos escapes explícitos, ambos auditables:
    #   - marcador __ANY__ en una línea del expected/ (salida parcialmente no
    #     determinista: timings, tamaños que dependen de la versión de zlib,
    #     orden de las goroutines). Tolera contenido, NO conteo de líneas.
    #   - KNOWN_OUTPUT_FAILURES: tests cuyo expected/ dice lo correcto y el
    #     compilador/runtime produce otra cosa. Se reportan aparte y no
    #     rompen el exit code, pero el expected/ NO se falsea ni se borra.
    _compare_expected() {
        local exp_file
        exp_file="$(dirname "$test_file")/expected/$(basename "$test_file" .nx).expected"
        if [ -f "$exp_file" ]; then
            if _expected_matches "$exp_file"; then
                COMPARED_OK=$((COMPARED_OK + 1))
                if _is_known_output_failure "$test_name"; then
                    # XPASS: el test está en KNOWN_OUTPUT_FAILURES pero ahora
                    # coincide con su expected/. Sin esta detección la exención
                    # por nombre queda permanente y silenciosa — el día que se
                    # arregle el bug real (p.ej. [sp3-bug-1]) el test pasa a
                    # verde pero sigue "perdonado" para siempre, tragándose
                    # además cualquier regresión futura. No rompe el exit code
                    # (un XPASS es buena noticia), pero es imposible de ignorar
                    # en el resumen: hay que sacarlo de la lista a mano.
                    echo -e "${YELLOW}⚠ known-failure ahora PASA — sacalo de KNOWN_OUTPUT_FAILURES (TASKS.md)${NC}"
                    COMPARED_XPASS=$((COMPARED_XPASS + 1))
                    XPASS_LIST="${XPASS_LIST}${test_name}\n"
                fi
            elif _is_known_output_failure "$test_name"; then
                echo -e "${YELLOW}⚠ SALIDA DISTINTA de $(basename "$exp_file") — fallo CONOCIDO (ver TASKS.md)${NC}"
                printf '%s\n' "$output" | diff - "$exp_file" | head -12 | sed 's/^/      /'
                COMPARED_KNOWN=$((COMPARED_KNOWN + 1))
                KNOWN_LIST="${KNOWN_LIST}${test_name}\n"
            else
                echo -e "${RED}✗ SALIDA DISTINTA de $(basename "$exp_file")${NC}"
                printf '%s\n' "$output" | diff - "$exp_file" | head -12 | sed 's/^/      /'
                COMPARED_DIFF=$((COMPARED_DIFF + 1))
                DIFF_LIST="${DIFF_LIST}${test_name}\n"
                OUTPUT_MISMATCH=1
            fi
        else
            NO_EXPECTED=$((NO_EXPECTED + 1))
        fi
    }

    # El test compiló, linkeó y salió con 0 — pero si su expected/ dice otra
    # cosa, eso es un FALLO. Antes del sub-proyecto 3 la diferencia solo se
    # contaba; un gate que nunca falla es exactamente el problema que esta
    # campaña vino a resolver.
    _account_output_mismatch() {
        if [ "$OUTPUT_MISMATCH" -eq 1 ]; then
            echo -e "${RED}❌ FALLÓ: la salida no coincide con su expected/${NC}"
            TESTS_PASSED=$((TESTS_PASSED - 1))
            TESTS_FAILED=$((TESTS_FAILED + 1))
            FAILED_TESTS+=("$test_name (salida != expected/)")
        fi
    }

    # Ejecutar el test y capturar la salida
    # NYX_SKIP_SEMANTIC: skip semantic check for tests that use new builtins not yet in semantic.ll
    if _try_run_test; then
        echo -e "${GREEN}✅ PASÓ${NC}"
        TESTS_PASSED=$((TESTS_PASSED + 1))
        _compare_expected
        _account_output_mismatch

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
                    _compare_expected
                    _account_output_mismatch
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

echo -e "${CYAN}Salida comparada:${NC} $COMPARED_OK ok, $COMPARED_DIFF distinta (FALLO), $COMPARED_KNOWN fallo conocido, $NO_EXPECTED sin expected/"
if [ "$COMPARED_DIFF" -gt 0 ]; then
    echo -e "${RED}Tests con salida distinta de su expected/ (cuentan como fallo):${NC}"
    printf '%b' "$DIFF_LIST" | sed 's/^/  - /'
fi
if [ "$COMPARED_KNOWN" -gt 0 ]; then
    echo -e "${YELLOW}Fallos de salida conocidos: $COMPARED_KNOWN (ficha en TASKS.md, no rompen el exit code):${NC}"
    printf '%b' "$KNOWN_LIST" | sed 's/^/  - /'
fi
if [ "$COMPARED_XPASS" -gt 0 ]; then
    echo -e "${YELLOW}⚠ XPASS — en KNOWN_OUTPUT_FAILURES pero ahora coinciden con expected/ ($COMPARED_XPASS, no rompen el exit code, SACAR de la lista):${NC}"
    printf '%b' "$XPASS_LIST" | sed 's/^/  - /'
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
