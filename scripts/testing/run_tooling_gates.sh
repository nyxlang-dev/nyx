#!/usr/bin/env bash
# ============================================================
#  run_tooling_gates.sh — las PUERTAS DE TIPOS del tooling
# ============================================================
# `AGENTS.md` (paso 5) y `LLM.md` (feedback loop) le prometen a un agente que
# `nyx check && nyx test` es la puerta de «terminado». Dos reportes de fricción
# del 2026-09-08 mostraron que la promesa era falsa en un proyecto
# multi-módulo: `nyx check` no resolvía `import "src/x"` (reportaba NYX1002
# 'not declared' para TODO, incluso el prelude) y `nyx test` compilaba cada
# test con NYX_SKIP_SEMANTIC=1 (un error de tipos inequívoco terminaba en
# `ALL TESTS PASSED`, rc 0).
#
# Este gate fija las dos puertas contra la regresión. Arco: tooling-type-gates.
#
# REGLA DEL REPO (ver run_silent_failure_checks.sh y run_gotcha_coverage.sh):
# todo check negativo trae CONTROL POSITIVO. Sin él, el gate pasaría en verde
# con un binario roto o un path mal escrito — «vi un exit 1» no alcanza.
#
# Y un check negativo NO se conforma con rc != 0: verifica que el rc venga del
# error CORRECTO. El bug de `nyx check` daba rc 1 por el motivo equivocado
# (NYX1002 sobre imports que no supo resolver), así que un gate que solo mirara
# el exit code habría pasado en verde sobre el bug entero.
#
# set -u sin pipefail: "grep -q" sobre un pipe con SIGPIPE ya mordió este repo
# (rc=141) — se usan archivos intermedios.
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"

# Serializa contra otros runners: build-check/build-test comparten script.nx y
# script.ll en la raíz del repo (ver lib_testroot_lock.sh).
source scripts/testing/lib_testroot_lock.sh
nyx_testroot_lock_acquire

PASS=0
FAIL=0
FAILED=()

# GATE_TMP y no TMPDIR: reasignar TMPDIR conserva el atributo de export, así
# que todo hijo (el clang que corre adentro de nyx_test, cualquier mktemp)
# escribiría su scratch en un directorio que el trap EXIT borra.
GATE_TMP="$(mktemp -d)"
trap 'rm -rf "$GATE_TMP"' EXIT

echo "╔════════════════════════════════════════════════╗"
echo "║   Puertas de tipos del tooling (check / test)   ║"
echo "╚════════════════════════════════════════════════╝"

# ── Binarios bajo prueba ────────────────────────────────────
# Se usan los del REPO (no los instalados en ~/.nyx): este gate mide el
# compilador de este árbol, no lo que el usuario tenga instalado.
# Se reconstruye si el binario FALTA o si es más viejo que cualquiera de sus
# fuentes: un binario stale pasaba el gate en verde midiendo el compilador de
# ayer — «artefactos derivados que no se regeneran solos», el modo de fallo que
# CLAUDE.md advierte y que este gate justamente tiene que cazar.
for pair in "nyx_check:build-check:compiler/nyx_check.nx compiler/resolve.nx" \
            "nyx_test:build-test:compiler/test.nx"; do
    bin="${pair%%:*}"; rest="${pair#*:}"; target="${rest%%:*}"; srcs="${rest#*:}"
    need=0
    if [ ! -x "./$bin" ]; then
        need=1; why="falta"
    else
        for src in $srcs; do
            if [ "$src" -nt "./$bin" ]; then need=1; why="stale ($src es más nuevo)"; break; fi
        done
    fi
    if [ "$need" = "1" ]; then
        echo "  … ./$bin $why — construyendo con 'make $target'"
        if ! make "$target" >"$GATE_TMP/$target.log" 2>&1; then
            echo "  ✗ make $target FALLÓ — sin esto el gate no puede correr"
            tail -5 "$GATE_TMP/$target.log" | sed 's/^/      /'
            exit 1
        fi
    fi
done

# ── El proyecto del reporte de fricción ─────────────────────
# Dos errores de tipos inequívocos: uno en un módulo de src/ (lo ve `check`),
# otro dentro de un test (lo ve `test`).
mk_project() {
    local dir="$1" bad="$2"   # bad=1 → con los errores de tipos
    mkdir -p "$dir/src" "$dir/tests"
    cat > "$dir/nyx.toml" <<EOF
[package]
name = "typegates"
version = "0.1.0"
main = "src/main.nx"
EOF
    if [ "$bad" = "1" ]; then
        cat > "$dir/src/modulo.nx" <<'EOF'
pub fn valor() -> int {
    let z: int = "texto"
    return 1
}
EOF
        cat > "$dir/tests/modulo_test.nx" <<'EOF'
import "src/modulo"

test "pasa con dos errores de tipos" {
    let w: int = "otro texto"
    assert(valor() == 1, "valor")
}
EOF
    else
        cat > "$dir/src/modulo.nx" <<'EOF'
pub fn valor() -> int {
    let z: int = 1
    return z
}
EOF
        cat > "$dir/tests/modulo_test.nx" <<'EOF'
import "src/modulo"

test "control positivo: sin errores de tipos" {
    let w: int = 2
    assert(valor() == 1, "valor")
    assert(w == 2, "w")
}
EOF
    fi
    # El main ejerce las TRES vías de resolución a la vez, porque el bug las
    # rompía a las tres y un gate que solo probara la primera pasaría en verde
    # sobre las otras dos (pasó: la primera versión de este gate no cubría el
    # prelude y el `map_new not declared` del reporte seguía vivo):
    #   1. `import "src/..."`  → módulo del proyecto (NYX_PROJECT_DIR / CWD)
    #   2. `map_new` / `Option` → PRELUDE (resuelto vía NYX_HOME, sin cd)
    #   3. `import "std/..."`   → módulo de la stdlib instalada
    cat > "$dir/src/main.nx" <<'EOF'
import "src/modulo"
import "std/json"

fn main() -> int {
    var m: Map = map_new()
    m.insert("k", valor())
    let r: Option<int> = m.get("k")
    match r {
        Option.Some(v) => { print(int_to_string(v)) }
        Option.None => { print("nada") }
    }
    let j: Array = json_string("ok")
    print(json_stringify(j))
    return 0
}
EOF
}

run_check() {  # $1=dir → stdout+stderr a $GATE_TMP/check.out, rc a $CHECK_RC
    ( cd "$1" && NYX_SRC="src/main.nx" NYX_HOME="$ROOT" "$ROOT/nyx_check" ) \
        > "$GATE_TMP/check.out" 2>&1
    CHECK_RC=$?
}

run_test() {   # $1=dir → stdout+stderr a $GATE_TMP/test.out, rc a $TEST_RC
    ( cd "$1" && NYX_HOME="$ROOT" timeout 120 "$ROOT/nyx_test" ) \
        > "$GATE_TMP/test.out" 2>&1
    TEST_RC=$?
}

ok()   { echo "  ✅ $1"; PASS=$((PASS+1)); }
bad()  { echo "  ❌ $1"; FAIL=$((FAIL+1)); FAILED+=("$2"); }

mk_project "$GATE_TMP/roto" 1
mk_project "$GATE_TMP/sano" 0

# ── Check A (negativo): `nyx check` ve el error de tipos ─────
run_check "$GATE_TMP/roto"
if [ "$CHECK_RC" -eq 0 ]; then
    bad "check-roto — rc 0: 'nyx check' no vio el error de tipos" "check-roto"
elif grep -qiE "not declared|no declarad|NYX1002" "$GATE_TMP/check.out"; then
    bad "check-roto — rc $CHECK_RC pero por el MOTIVO EQUIVOCADO: no resolvió los imports" "check-roto"
    grep -iE "not declared|no declarad|NYX1002" "$GATE_TMP/check.out" | head -3 | sed 's/^/      /'
elif grep -qE "NYX1003|type mismatch|tipos no coinciden" "$GATE_TMP/check.out"; then
    ok "check-roto — 'nyx check' acusa el error de tipos (rc $CHECK_RC)"
else
    bad "check-roto — rc $CHECK_RC sin el diagnóstico de tipos esperado" "check-roto"
    head -5 "$GATE_TMP/check.out" | sed 's/^/      /'
fi

# ── Check A' (CONTROL POSITIVO): proyecto sano compila limpio ─
run_check "$GATE_TMP/sano"
if [ "$CHECK_RC" -eq 0 ]; then
    ok "check-sano — control positivo: proyecto sin errores da rc 0"
else
    bad "check-sano — CONTROL POSITIVO CAÍDO: rc $CHECK_RC sobre un proyecto correcto" "check-sano"
    head -8 "$GATE_TMP/check.out" | sed 's/^/      /'
fi

# ── Check B (negativo): `nyx test` ve el error de tipos ──────
run_test "$GATE_TMP/roto"
if [ "$TEST_RC" -eq 0 ]; then
    bad "test-roto — rc 0: 'nyx test' dio verde con dos errores de tipos" "test-roto"
    grep -iE "ALL TESTS PASSED|skipped|omitido" "$GATE_TMP/test.out" | head -3 | sed 's/^/      /'
elif grep -qE "NYX1003|type mismatch|tipos no coinciden" "$GATE_TMP/test.out"; then
    ok "test-roto — 'nyx test' falla con el diagnóstico de tipos (rc $TEST_RC)"
else
    bad "test-roto — rc $TEST_RC sin el diagnóstico de tipos visible en la salida" "test-roto"
    head -8 "$GATE_TMP/test.out" | sed 's/^/      /'
fi

# ── Check B' (CONTROL POSITIVO): tests sanos pasan ───────────
run_test "$GATE_TMP/sano"
if [ "$TEST_RC" -eq 0 ]; then
    ok "test-sano — control positivo: tests correctos pasan con rc 0"
else
    bad "test-sano — CONTROL POSITIVO CAÍDO: rc $TEST_RC sobre tests correctos" "test-sano"
    head -8 "$GATE_TMP/test.out" | sed 's/^/      /'
fi

# ── Check C (negativo): la variable de ambiente no revierte el fix ───
# NYX_SKIP_SEMANTIC es un aid de debugging documentado del repo. Si el script
# que `nyx test` genera la HEREDA del ambiente, la puerta de tipos desaparece
# en silencio — y AGENTS.md ya la promete sin condiciones.
NYX_SKIP_SEMANTIC=1 run_test "$GATE_TMP/roto"
if [ "$TEST_RC" -eq 0 ]; then
    bad "test-roto-env — con NYX_SKIP_SEMANTIC=1 en el AMBIENTE, 'nyx test' volvió a dar verde" "test-roto-env"
    grep -iE "ALL TESTS PASSED|skipped|omitido" "$GATE_TMP/test.out" | head -2 | sed 's/^/      /'
else
    ok "test-roto-env — el ambiente no revierte el chequeo (rc $TEST_RC)"
fi

# ── Check D: `nyx build` chequea tipos aunque compile desde otro cwd ─
# Tercera puerta. `nyx build` hace `cd $NYX_HOME` antes de invocar al driver y
# le pasa NYX_PROJECT_DIR. El resolver honra esa variable; `scan_module_types`
# (semantic.nx) NO la honraba: buscaba `src/x.nx` relativo al cwd —o sea dentro
# de ~/.nyx—, no lo encontraba, y marcaba `g_import_unscanned`. Ese flag degrada
# a comodín silencioso TODA anotación desconocida del archivo, no solo la del
# módulo ilegible. Resultado medido (fricción nyxerp, 2026-09-11): bajo
# `nyx build`, NYX1001 no existía para ningún archivo que importara un módulo del
# proyecto, mientras que `nyx check` —que no hace cd— sí lo reportaba. La misma
# anotación verificaba o no según con qué herramienta se mirara.
#
# El gate corre el DRIVER con cwd fuera del proyecto, que es lo que reproduce el
# bug; invocar nyx_build entero metería el link de clang sin agregar cobertura.
run_driver_desde_afuera() {  # $1=dir del proyecto → rc en $DRV_RC
    cp "$1/src/main.nx" "$GATE_TMP/probe.nx"
    ( cd "$GATE_TMP" && NYX_SRC="$GATE_TMP/probe.nx" NYX_PROJECT_DIR="$1" \
        NYX_HOME="$ROOT" "$ROOT/nyx_bootstrap" ) > "$GATE_TMP/drv.out" 2>&1
    DRV_RC=$?
}

# El proyecto del reporte: un módulo que NO declara el tipo que el main anota.
BDIR="$GATE_TMP/buildcwd"
mkdir -p "$BDIR/src"
cat > "$BDIR/nyx.toml" <<'EOF'
[package]
name = "buildcwd"
version = "0.1.0"
main = "src/main.nx"
EOF
cat > "$BDIR/src/inventado.nx" <<'EOF'
struct OtraCosa { valor: int }

pub fn hacer_otra() -> OtraCosa { return OtraCosa { valor: 42 } }
EOF
cat > "$BDIR/src/main.nx" <<'EOF'
import "src/inventado"

fn main() -> int {
    let a: Inventado = hacer_otra()
    print(int_to_string(a.valor))
    return 0
}
EOF

run_driver_desde_afuera "$BDIR"
if [ "$DRV_RC" -ne 0 ] && grep -q "unknown type 'Inventado'" "$GATE_TMP/drv.out"; then
    ok "build-cwd — un tipo inexistente es NYX1001 aunque el compile corra desde otro cwd"
else
    bad "build-cwd — rc $DRV_RC sin NYX1001 'Inventado': el chequeo de tipos se apagó fuera del proyecto" "build-cwd"
    head -6 "$GATE_TMP/drv.out" | sed 's/^/      /'
fi

# CONTROL POSITIVO: el MISMO proyecto con el tipo REAL del módulo importado
# tiene que compilar. Sin esto, un scanner que no leyera ningún módulo pasaría
# el negativo en verde — rechazando de paso todo proyecto multi-módulo válido.
sed -i 's/let a: Inventado = /let a: OtraCosa = /' "$BDIR/src/main.nx"
run_driver_desde_afuera "$BDIR"
if [ "$DRV_RC" -eq 0 ]; then
    ok "build-cwd-sano — control positivo: el tipo real del módulo importado compila"
else
    bad "build-cwd-sano — CONTROL POSITIVO CAÍDO: rc $DRV_RC sobre un tipo que SÍ existe" "build-cwd-sano"
    head -6 "$GATE_TMP/drv.out" | sed 's/^/      /'
fi

# ── Check E (negativo): opción desconocida de `nyx test` es un error ─
# Fricción nyxerp (20260914-110000-team-1): `nyx test --coverage archivo.nx`
# se aceptaba EN SILENCIO — rc 0, salida sin cambios, nada escrito al disco.
# Quien lo pone en un script de CI cree que está midiendo cobertura. El
# arreglo (compiler/test.nx, main()) hace que CUALQUIER "-opción" que no esté
# en el vocabulario de la herramienta sea un error explícito, detectado antes
# de compilar o correr nada. --coverage/--cover llevan un mensaje aparte
# (no prometen fecha, solo dicen que todavía no existe).
run_test_args() {  # $1=dir, resto=args → stdout+stderr a $GATE_TMP/testargs.out, rc a $TA_RC
    local dir="$1"; shift
    ( cd "$dir" && NYX_HOME="$ROOT" timeout 30 "$ROOT/nyx_test" "$@" ) \
        > "$GATE_TMP/testargs.out" 2>&1
    TA_RC=$?
}

run_test_args "$GATE_TMP/sano" --coverage
if [ "$TA_RC" -eq 0 ]; then
    bad "test-coverage — rc 0: '--coverage' se acepta en silencio (el bug del reporte)" "test-coverage"
elif grep -q -- "--coverage" "$GATE_TMP/testargs.out"; then
    ok "test-coverage — '--coverage' es un error explícito (rc $TA_RC) que nombra la opción"
else
    bad "test-coverage — rc $TA_RC pero sin nombrar '--coverage' en el mensaje" "test-coverage"
    head -5 "$GATE_TMP/testargs.out" | sed 's/^/      /'
fi

run_test_args "$GATE_TMP/sano" --una-opcion-inventada
if [ "$TA_RC" -eq 0 ]; then
    bad "test-opcion-desconocida — rc 0: una opción inventada se acepta en silencio" "test-opcion-desconocida"
elif grep -q -- "--una-opcion-inventada" "$GATE_TMP/testargs.out"; then
    ok "test-opcion-desconocida — opción inventada rechazada (rc $TA_RC) nombrando la opción"
else
    bad "test-opcion-desconocida — rc $TA_RC pero sin nombrar la opción en el mensaje" "test-opcion-desconocida"
    head -5 "$GATE_TMP/testargs.out" | sed 's/^/      /'
fi

# CONTROL POSITIVO: opciones válidas + un archivo de test siguen andando —
# sin esto, un gate que solo mirara "rc != 0 con -algo" pasaría en verde
# aunque el fix hubiera roto --filter/--verbose/--timeout de paso.
run_test_args "$GATE_TMP/sano" --verbose --filter modulo
if [ "$TA_RC" -eq 0 ] && grep -q "ALL TESTS PASSED" "$GATE_TMP/testargs.out"; then
    ok "test-opciones-validas — CONTROL POSITIVO: --verbose --filter siguen funcionando"
else
    bad "test-opciones-validas — CONTROL POSITIVO CAÍDO: rc $TA_RC con opciones válidas" "test-opciones-validas"
    head -8 "$GATE_TMP/testargs.out" | sed 's/^/      /'
fi

echo "────────────────────────────────────────────────"
echo "  TOOLING GATES: $PASS pasados, $FAIL fallidos"
if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
exit 0
