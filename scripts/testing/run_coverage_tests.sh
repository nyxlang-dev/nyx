#!/usr/bin/env bash
# ============================================================
#  run_coverage_tests.sh — `nyx test --coverage` (arco nyx-test-cobertura)
# ============================================================
# Fricción de nyxerp del 2026-09-14 (20260914-110000): un ERP con decenas de
# archivos de prueba no tiene forma de saber qué función ninguna prueba llamó.
# `nyx test --coverage` lista, por archivo de src/, las funciones que ninguna
# prueba llamó (`archivo:línea nombre`), incluidos los módulos que ninguna
# prueba importa.
#
# El fixture (tests/tooling/coverage/) fija cada caso que el informe tiene que
# distinguir, con CONTROL POSITIVO en cada uno:
#   - `no_llamada` y `calc.valor` no se llaman → se listan con su línea;
#   - `sumar` (llamada desde dos archivos de prueba) no se lista;
#   - `en_fibra` corre SOLO dentro de un `spawn` → cuenta como llamada;
#   - `aux.valor` es homónima de `calc.valor` y SÍ se llama → los perfiles no
#     las mezclan;
#   - `otro.nx` no lo importa ninguna prueba → aparece entero;
#   - `main` de src/main.nx y las funciones sintéticas (`__test_N`,
#     `__nyx_init_globals`, el prelude) no cuentan.
#
# Mide el nyx_test del REPO, no el instalado en ~/.nyx.
# set -u sin pipefail: archivos intermedios en vez de `grep -q` sobre pipes.
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"

source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

PASS=0
FAIL=0
FAILED=()
COV_TMP="$(mktemp -d)"
trap 'rm -rf "$COV_TMP"' EXIT

ok()  { echo "  ✅ $1"; PASS=$((PASS+1)); }
bad() { echo "  ❌ $1"; FAIL=$((FAIL+1)); FAILED+=("$2"); }

echo "╔════════════════════════════════════════════════╗"
echo "║   nyx test --coverage (funciones no llamadas)   ║"
echo "╚════════════════════════════════════════════════╝"

if [ ! -x ./nyx_test ]; then
    echo "  ❌ falta ./nyx_test — correr 'make build-test'"
    exit 1
fi

# La cobertura de la fase 1 usa los perfiles de instrumentación de LLVM: sin
# llvm-profdata no hay informe posible. SKIP limpio, nunca un verde vacío.
if ! command -v llvm-profdata >/dev/null 2>&1 && ! ls /usr/bin/llvm-profdata-* >/dev/null 2>&1; then
    echo "  · SKIP: no hay llvm-profdata (apt install llvm)"
    exit 0
fi

PROY="$COV_TMP/cobertura"
cp -r tests/tooling/coverage "$PROY"
rm -f "$PROY/expected_coverage.txt" "$PROY"/expected_map_*.tsv

# ── Caso T: la tabla lateral de codegen (NYX_COVERAGE_MAP) ───
# Con la variable, codegen escribe un TSV `nombre_ir \t módulo \t línea \t
# fn_origen \t tipo`. La línea es la de la DECLARACIÓN (`fn`, ver la marca
# __declline__ del parser), no la de la `}`. El cuerpo del spawn se atribuye a
# su fn, y __test_N/main son sintéticas. Las filas del prelude no se comparan
# (dependen de std/prelude.nx).
# Control positivo: sin la variable no se escribe nada y el IR es IDÉNTICO
# byte a byte (la tabla no toca lo que se emite).
cp "$PROY/tests/calc_test.nx" script.nx
env -u NYX_SKIP_SEMANTIC NYX_PROJECT_DIR="$PROY" NYX_COVERAGE_MAP="$COV_TMP/map.tsv" \
    ./nyx_bootstrap > "$COV_TMP/t_con.log" 2>&1
T_RC=$?
cp script.ll "$COV_TMP/con.ll" 2>/dev/null
env -u NYX_SKIP_SEMANTIC -u NYX_COVERAGE_MAP NYX_PROJECT_DIR="$PROY" \
    ./nyx_bootstrap > "$COV_TMP/t_sin.log" 2>&1
cp script.ll "$COV_TMP/sin.ll" 2>/dev/null
rm -f script.nx script.ll
if [ "$T_RC" -ne 0 ]; then
    bad "tabla — nyx_bootstrap salió rc=$T_RC con NYX_COVERAGE_MAP" "tabla-rc"
    tail -5 "$COV_TMP/t_con.log" | sed 's/^/      /'
elif ! [ -s "$COV_TMP/map.tsv" ]; then
    bad "tabla — NYX_COVERAGE_MAP no escribió nada" "tabla-vacia"
else
    # LC_ALL=C: el fixture está en orden de BYTES. Con un locale como
    # en_US.UTF-8 el collation ignora los `_`, y la tabla sale reordenada
    # (mismas filas, otro orden) -> falso negativo. Medido en x86_64/WSL2.
    awk -F'\t' '$5 != "prelude"' "$COV_TMP/map.tsv" | LC_ALL=C sort > "$COV_TMP/map.sin_prelude"
    if diff -u tests/tooling/coverage/expected_map_calc_test.tsv "$COV_TMP/map.sin_prelude" > "$COV_TMP/map.diff"; then
        ok "tabla — línea de declaración, módulo, spawn atribuido y sintéticas"
    else
        bad "tabla — difiere de expected_map_calc_test.tsv" "tabla-diff"
        sed 's/^/      /' "$COV_TMP/map.diff"
    fi
fi
if [ -s "$COV_TMP/con.ll" ] && cmp -s "$COV_TMP/con.ll" "$COV_TMP/sin.ll"; then
    ok "tabla — el IR con y sin NYX_COVERAGE_MAP es idéntico"
else
    bad "tabla — el IR cambia con NYX_COVERAGE_MAP (o no compiló)" "tabla-ir"
fi

# ── Caso A: el informe de texto ──────────────────────────────
( cd "$PROY" && NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_test" --coverage ) \
    > "$COV_TMP/a.out" 2>&1
A_RC=$?
awk '/^== Cobertura de funciones/{p=1} p{print} /^  Total:/{p=0}' "$COV_TMP/a.out" > "$COV_TMP/a.informe"
if [ "$A_RC" -ne 0 ]; then
    bad "informe — nyx test --coverage salió rc=$A_RC (las pruebas del fixture pasan)" "informe-rc"
    sed -n '1,15p' "$COV_TMP/a.out" | sed 's/^/      /'
elif ! [ -s "$COV_TMP/a.informe" ]; then
    bad "informe — rc 0 pero SIN bloque de cobertura: --coverage no midió nada" "informe-vacio"
elif diff -u tests/tooling/coverage/expected_coverage.txt "$COV_TMP/a.informe" > "$COV_TMP/a.diff"; then
    ok "informe — funciones no llamadas, módulo no importado, spawn y homónimas correctos"
else
    bad "informe — difiere del esperado" "informe-diff"
    sed 's/^/      /' "$COV_TMP/a.diff"
fi

# ── Caso L: --coverage=lcov ──────────────────────────────────
# Mismo informe más target/coverage.lcov (SF/FN/FNDA/FNF/FNH/end_of_record, con
# FNDA 0/1: D-5 es corrió / no corrió). Si `lcov` está instalado, además tiene
# que aceptar el archivo; si no, esa parte se salta limpio.
rm -rf "$PROY/target"
( cd "$PROY" && NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_test" --coverage=lcov ) > "$COV_TMP/l.out" 2>&1
L_RC=$?
LCOV="$PROY/target/coverage.lcov"
if [ "$L_RC" -ne 0 ] || ! [ -s "$LCOV" ]; then
    bad "lcov — rc=$L_RC o no se escribió target/coverage.lcov" "lcov-archivo"
elif grep -qx 'SF:src/calc.nx' "$LCOV" && grep -qx 'FN:9,no_llamada' "$LCOV" \
     && grep -qx 'FNDA:0,no_llamada' "$LCOV" && grep -qx 'FNDA:1,sumar' "$LCOV" \
     && grep -qx 'FNF:5' "$LCOV" && grep -qx 'FNH:3' "$LCOV"; then
    if command -v lcov >/dev/null 2>&1; then
        if lcov --summary "$LCOV" > "$COV_TMP/lcov.sum" 2>&1; then
            ok "lcov — target/coverage.lcov correcto y lcov --summary lo acepta"
        else
            bad "lcov — lcov --summary rechaza el archivo" "lcov-summary"
            sed 's/^/      /' "$COV_TMP/lcov.sum"
        fi
    else
        ok "lcov — target/coverage.lcov correcto (lcov no instalado: sin --summary)"
    fi
else
    bad "lcov — faltan registros esperados en target/coverage.lcov" "lcov-registros"
    sed 's/^/      /' "$LCOV"
fi

# ── Caso P: sin llvm-profdata ────────────────────────────────
# PATH con SOLO las herramientas que nyx_test usa antes de compilar, sin
# llvm-profdata: rc != 0 y la receta de instalación, nunca un informe vacío.
SHIM="$COV_TMP/shim"
mkdir -p "$SHIM"
for b in sh bash clang env cat ls find sort mktemp rm cp mkdir timeout; do
    p="$(command -v "$b" 2>/dev/null)"
    [ -n "$p" ] && ln -sf "$p" "$SHIM/$b"
done
( cd "$PROY" && PATH="$SHIM" NYX_HOME="$ROOT" timeout 120 "$ROOT/nyx_test" --coverage ) > "$COV_TMP/p1.out" 2>&1
P1_RC=$?
if [ "$P1_RC" -ne 0 ] && grep -q "llvm-profdata" "$COV_TMP/p1.out" && grep -q "apt install" "$COV_TMP/p1.out" \
   && ! grep -q "Cobertura de funciones" "$COV_TMP/p1.out"; then
    ok "sin llvm-profdata — rc $P1_RC con la receta, sin informe"
else
    bad "sin llvm-profdata — rc=$P1_RC o sin receta (o salió un informe)" "sin-profdata"
    sed -n '1,8p' "$COV_TMP/p1.out" | sed 's/^/      /'
fi

# ── Caso W: --coverage con un target no nativo ───────────────
( cd "$PROY" && NYX_HOME="$ROOT" timeout 60 "$ROOT/nyx_test" --coverage --target wasm32-wasi ) > "$COV_TMP/w.out" 2>&1
W_RC=$?
if [ "$W_RC" -ne 0 ] && grep -q "target nativo" "$COV_TMP/w.out"; then
    ok "--coverage --target wasm32-wasi — error explícito (rc $W_RC)"
else
    bad "--coverage --target wasm32-wasi — rc=$W_RC sin el error de target" "target"
    sed -n '1,6p' "$COV_TMP/w.out" | sed 's/^/      /'
fi
( cd "$PROY" && NYX_HOME="$ROOT" timeout 60 "$ROOT/nyx_test" --target wasm32-wasi ) > "$COV_TMP/w2.out" 2>&1
W2_RC=$?
if [ "$W2_RC" -ne 0 ] && grep -q "unknown option" "$COV_TMP/w2.out"; then
    ok "--target sin --coverage — sigue siendo opción desconocida (rc $W2_RC)"
else
    bad "--target sin --coverage — rc=$W2_RC, cambió de conducta" "target-solo"
fi

# ── Caso S: una prueba que se cuelga no deja perfil ──────────
# El runtime de perfiles escribe en atexit, y `timeout` mata con SIGTERM: esa
# prueba no aporta cobertura. El informe la lista aparte, y lo que SOLO ella
# importaba (src/otro.nx) queda «sin datos», NUNCA como no llamado.
PROY2="$COV_TMP/cobertura_cuelga"
cp -r "$PROY" "$PROY2"
rm -rf "$PROY2/target"
cat > "$PROY2/tests/cuelga_test.nx" <<'NX'
import "src/otro"

test "se cuelga" {
    var n = nadie()
    while n == 0 {
        n = 0
    }
    assert(n == 1, "nunca")
}
NX
( cd "$PROY2" && NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_test" --coverage --timeout 3 ) > "$COV_TMP/s.out" 2>&1
if grep -q "Sin perfil" "$COV_TMP/s.out" && grep -q "tests/cuelga_test.nx" "$COV_TMP/s.out" \
   && grep -q "src/otro.nx: 0/0 llamadas (1 sin datos" "$COV_TMP/s.out" \
   && ! grep -q "src/otro.nx:2 nadie" "$COV_TMP/s.out"; then
    ok "prueba colgada — «sin perfil» y sus funciones como «sin datos», no como no llamadas"
else
    bad "prueba colgada — el informe no la separa" "sin-perfil"
    awk '/^== Cobertura de funciones/{p=1} p{print}' "$COV_TMP/s.out" | sed 's/^/      /'
fi

# Control positivo: sin --coverage no aparece ningún bloque de cobertura y las
# pruebas del fixture siguen pasando (el enlace normal no cambia).
( cd "$PROY" && NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_test" ) > "$COV_TMP/p.out" 2>&1
P_RC=$?
if [ "$P_RC" -eq 0 ] && ! grep -q "Cobertura de funciones" "$COV_TMP/p.out"; then
    ok "sin --coverage — rc 0 y sin informe"
else
    bad "sin --coverage — rc=$P_RC o apareció un informe que nadie pidió" "sin-coverage"
fi

echo ""
echo "  COBERTURA: $PASS pasados, $FAIL fallidos"
if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
exit 0
