#!/usr/bin/env bash
# run_repl_smoke.sh — Smoke E2E del REPL/intérprete (cierre de la brecha
# silently-wrong del intérprete, 2026-08-01).
#
# La brecha: eval_method_call (compiler/interpreter.nx) imprimía un
# «Método no soportado» MUDO y evaluaba a nil — el mismo programa daba
# resultados distintos que el binario compilado, en silencio. Contrato
# nuevo: método no soportado → error RUIDOSO NYX3001 (bilingüe), la
# sesión del REPL sobrevive (no exit — es interactivo), y el contador
# interp_error_count() lo registra.
#
# set -u sin pipefail (regla del repo: grep -q + pipe ya mordió con
# SIGPIPE rc=141) — archivos intermedios en su lugar.
set -u
cd "$(dirname "$0")/../.."

FAIL=0
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

if [ ! -x ./nyx_repl ]; then
    echo "  ✗ falta ./nyx_repl — corré 'make build-repl' primero"
    exit 1
fi

# ── Caso 1: método no soportado → NYX3001 ruidoso Y la sesión sigue ────
# reverse SÍ existe en el lenguaje compilado; el intérprete no lo
# implementa — exactamente el par que debe fallar ruidoso, no dar nil.
cat > "$TMP/in1.txt" <<'EOF'
let a = [1, 2, 3]
a.reverse()
print("SESION-SIGUE-VIVA")
:quit
EOF
./nyx_repl < "$TMP/in1.txt" > "$TMP/out1.txt" 2>&1

if grep -q "NYX3001" "$TMP/out1.txt"; then
    echo "  ✓ método no soportado emite NYX3001 (ruidoso, con código)"
else
    echo "  ✗ método no soportado NO emite NYX3001"
    sed 's/^/      /' "$TMP/out1.txt" | head -8
    FAIL=$((FAIL + 1))
fi
if grep -q "SESION-SIGUE-VIVA" "$TMP/out1.txt"; then
    echo "  ✓ la sesión del REPL sobrevive al error (interactivo, no exit)"
else
    echo "  ✗ la sesión murió tras el error — el REPL debe sobrevivir"
    FAIL=$((FAIL + 1))
fi

# ── Caso 2 (control negativo): un método soportado sigue funcionando ───
# (print del intérprete formatea Values directo; int_to_string NO es
# builtin del intérprete — sondeado antes de escribir este caso.)
cat > "$TMP/in2.txt" <<'EOF'
let s = "hola"
print(s.length())
:quit
EOF
./nyx_repl < "$TMP/in2.txt" > "$TMP/out2.txt" 2>&1

# El prompt comparte línea con el valor (print_no_newline("nyx> ") + eval):
# la línea real es "nyx> 4", no "4" pelado.
if grep -q "nyx> 4" "$TMP/out2.txt"; then
    echo "  ✓ control negativo: s.length() = 4 (los soportados intactos)"
else
    echo "  ✗ control negativo roto: s.length() no dio 4"
    sed 's/^/      /' "$TMP/out2.txt" | head -8
    FAIL=$((FAIL + 1))
fi
if grep -q "NYX3001" "$TMP/out2.txt"; then
    echo "  ✗ control negativo: NYX3001 apareció en una sesión sin errores"
    FAIL=$((FAIL + 1))
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  smoke del REPL: FALLÓ ($FAIL check(s))"
    exit 1
fi
echo "  smoke del REPL: PASS"
exit 0
