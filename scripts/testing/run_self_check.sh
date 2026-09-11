#!/usr/bin/env bash
# run_self_check.sh — cada compiler/*.nx pasa el CHECKER del propio compilador.
#
# POR QUÉ EXISTE (2026-09-11)
#
# El bootstrap compila los módulos con NYX_SKIP_SEMANTIC=1 (`make recompile-all`),
# así que un módulo del compilador podía dejar de pasar su propio chequeo
# semántico sin que ninguna suite lo notara. Pasó: NYX1032 —el error que marca
# literales de struct con campos faltantes— empezó a fallar sobre
# `compiler/codegen.nx`, y no era un falso positivo: `codegen_nested_function` y
# `codegen_async_fn` construían su CodegenContext dejando 33 campos al relleno
# silencioso, entre ellos `trait_methods` y `generic_fn_templates`. Consecuencia
# medida: un método de trait dentro de una fn anidada decía «method not available
# on a receiver», y una llamada genérica abortaba codegen con rc=1 y NINGÚN
# mensaje. Se descubrió por casualidad al verificar el fixed point sin el SKIP.
#
# El compilador se compila a sí mismo: si el checker rechaza el código del
# compilador, o el checker está mal o el compilador está mal. Las dos cosas
# importan, y ninguna se ve desde `make test`.
#
# Se usa ./nyx_check (que respeta NYX_SRC y devuelve exit code real) en vez de
# recompilar: mide lo mismo —lexer + parser + semantic— sin pagar el codegen.
#
# CONTROL POSITIVO obligatorio (regla del repo): un archivo con un error de tipos
# conocido tiene que dar rc != 0. Sin él, este script pasaría en verde con un
# nyx_check roto, con un binario stale, o con el path mal escrito.
set -u
cd "$(dirname "$0")/../.."

if [ ! -x ./nyx_check ]; then
    echo "  ✗ falta ./nyx_check — correr 'make nyx_check' primero"
    exit 1
fi

# nyx_check es un binario COPIADO: si quedó más viejo que las semillas que
# enlaza, mide con un checker de ayer (la trampa documentada en CLAUDE.md).
for seed in compiler/semantic.ll compiler/types.ll compiler/lexer.ll compiler/parser.ll compiler/resolve.ll; do
    if [ "$seed" -nt ./nyx_check ]; then
        echo "  ✗ ./nyx_check es MÁS VIEJO que $seed — reconstruir con 'make nyx_check'"
        exit 1
    fi
done

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

PASS=0
FAIL=0
FAILED=()

for f in compiler/*.nx; do
    name="$(basename "$f" .nx)"
    NYX_SRC="$f" ./nyx_check > "$TMPDIR/$name.out" 2>&1
    rc=$?
    if [ "$rc" -eq 0 ]; then
        printf "  ✓ %s\n" "$name"
        PASS=$((PASS + 1))
    else
        printf "  ✗ %s (rc=%d)\n" "$name" "$rc"
        grep -E "DIAG:ERROR|NYX[0-9]{4}" "$TMPDIR/$name.out" | head -4 | sed 's/^/      /'
        FAIL=$((FAIL + 1))
        FAILED+=("$name")
    fi
done

# Control positivo: un error de tipos REAL tiene que salir con rc != 0.
cat > "$TMPDIR/control.nx" <<'NX'
fn main() -> int {
    let x: int = "no soy un int"
    print(int_to_string(x))
    return 0
}
NX
NYX_SRC="$TMPDIR/control.nx" ./nyx_check > "$TMPDIR/control.out" 2>&1
ctrl_rc=$?
if [ "$ctrl_rc" -ne 0 ]; then
    printf "  ✓ control positivo: nyx_check acusa un error de tipos real\n"
    PASS=$((PASS + 1))
else
    printf "  ✗ control positivo: nyx_check dio rc=0 sobre código con error de tipos — mide nada\n"
    FAIL=$((FAIL + 1))
    FAILED+=("control-positivo")
fi

echo ""
echo "  $PASS passed, $FAIL failed"

if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
