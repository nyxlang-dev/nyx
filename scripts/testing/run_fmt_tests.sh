#!/usr/bin/env bash
# ============================================================
# run_fmt_tests.sh — nyx fmt (compiler/fmt.nx) golden/property tests
# ------------------------------------------------------------
# Primer runner de fmt en el repo (no existía ninguno). Cubre el bug de
# TASKS.md: `impl<T> Vec<T> { ... }` perdía el <T> del header y del target
# al formatear → el output dejaba de compilar.
#
# Para cada fixture en tests/fmt/*.nx:
#   1. Corre nyx_fmt directo (cp fixture -> script.nx; ./nyx_fmt > out) —
#      NO via `make fmt`, para no mezclar el eco de comandos de make con el
#      output real del formatter en stdout.
#   2. Assert de contenido (grep) por fixture, ver tabla EXPECT_GREP abajo.
#   3. Idempotencia: fmt(fmt(x)) debe ser byte-idéntico a fmt(x).
#   4. El output DEBE compilar (`make compile FILE=...`, vía nyx_bootstrap)
#      — el test real de "quedó bien formado", no solo el texto.
#
# OJO: usa el script.nx compartido del root, igual que run_unit_tests.sh —
# SIEMPRE en serie, nunca en paralelo con make test / test-wasm / test-unit.
# ============================================================
set -u
cd "$(dirname "$0")/../.." || exit 1

RED='\033[0;31m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; NC='\033[0m'

PASS=0
FAIL=0
FAILED_TESTS=""

echo -e "${CYAN}=== Nyx fmt tests (tests/fmt/) ===${NC}"

if [ ! -f nyx_bootstrap ]; then
    echo -e "${RED}x nyx_bootstrap no existe — correr make bootstrap primero${NC}"
    exit 1
fi

echo "-- make build-fmt --"
if ! make build-fmt > /tmp/nyx_fmt_build.log 2>&1; then
    echo -e "${RED}x build-fmt falló${NC}"
    tail -20 /tmp/nyx_fmt_build.log | sed 's/^/    /'
    exit 1
fi

fmt_one() {
    # $1 = input .nx path, $2 = output path. Corre nyx_fmt directo (no via
    # `make fmt`, cuyo eco de "cp ..."/"./nyx_fmt" ensuciaría el output).
    cp "$1" script.nx
    ./nyx_fmt > "$2" 2>/tmp/nyx_fmt_stderr.log
    return $?
}

check_fixture() {
    local name="$1" fixture="$2"
    local out1="/tmp/nyx_fmt_${name}_pass1.nx"
    local out2="/tmp/nyx_fmt_${name}_pass2.nx"
    shift 2
    local grep_needles=("$@")

    if ! fmt_one "$fixture" "$out1"; then
        echo -e "${RED}x ${name}: nyx_fmt (pass 1) exit != 0${NC}"
        cat /tmp/nyx_fmt_stderr.log | sed 's/^/    /'
        FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
        return
    fi

    local ok=1
    for needle in "${grep_needles[@]}"; do
        if ! grep -qF "$needle" "$out1"; then
            echo -e "${RED}x ${name}: output no contiene '${needle}'${NC}"
            ok=0
        fi
    done

    # Idempotencia: formatear el resultado de nuevo debe dar lo mismo.
    if ! fmt_one "$out1" "$out2"; then
        echo -e "${RED}x ${name}: nyx_fmt (pass 2, idempotencia) exit != 0${NC}"
        cat /tmp/nyx_fmt_stderr.log | sed 's/^/    /'
        ok=0
    elif ! diff -q "$out1" "$out2" > /dev/null 2>&1; then
        echo -e "${RED}x ${name}: no es idempotente (fmt(fmt(x)) != fmt(x))${NC}"
        diff "$out1" "$out2" | head -10 | sed 's/^/    /'
        ok=0
    fi

    # El output debe COMPILAR (no solo "verse bien").
    if ! make compile FILE="$out1" > /tmp/nyx_fmt_compile.log 2>&1; then
        echo -e "${RED}x ${name}: el output formateado NO compila${NC}"
        tail -15 /tmp/nyx_fmt_compile.log | sed 's/^/    /'
        ok=0
    fi

    if [ "$ok" -eq 1 ]; then
        echo -e "${GREEN}ok ${name}${NC}"
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1)); FAILED_TESTS="$FAILED_TESTS $name"
    fi
}

# impl<T> Vec<T> { ... } — header Y target deben re-emitir <T>.
check_fixture "generic-impl" "tests/fmt/generic-impl.nx" "impl<T> Vec<T> {"

# impl<T: Display> Box<T> { ... } — bounds solo en el header, target sin ':'.
check_fixture "generic-impl-bounds" "tests/fmt/generic-impl-bounds.nx" \
    "impl<T:Display> Box<T> {"

# impl Point { ... } (no genérico) — cero regresión del caso común.
check_fixture "plain-impl" "tests/fmt/plain-impl.nx" "impl Point {"

echo ""
echo -e "${CYAN}=== fmt tests ===${NC}"
echo -e "  Passed: ${GREEN}${PASS}${NC}  Failed: ${RED}${FAIL}${NC}"
if [ "$FAIL" -gt 0 ]; then
    echo -e "${RED}  Failed:${FAILED_TESTS}${NC}"
    exit 1
fi
echo -e "${GREEN}  All fmt tests passed${NC}"
exit 0
