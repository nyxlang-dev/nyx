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

# run_case <n> — lee el input del REPL por stdin (heredoc), corre nyx_repl
# con timeout y deja $TMP/out<n>.txt + $RC. Factoriza el boilerplate que se
# repetía por caso (ficha run_case, review 2026-08-01) y agrega el timeout
# que faltaba: un REPL colgado ya no cuelga la suite.
RC=0
run_case() {
    local n="$1"
    cat > "$TMP/in$n.txt"
    timeout 20 ./nyx_repl < "$TMP/in$n.txt" > "$TMP/out$n.txt" 2>&1
    RC=$?
}

# ── Caso 1: método no soportado → NYX3001 ruidoso Y la sesión sigue ────
# reverse SÍ existe en el lenguaje compilado; el intérprete no lo
# implementa — exactamente el par que debe fallar ruidoso, no dar nil.
run_case 1 <<'EOF'
let a = [1, 2, 3]
a.reverse()
print("SESION-SIGUE-VIVA")
:quit
EOF

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
run_case 2 <<'EOF'
let s = "hola"
print(s.length())
:quit
EOF

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

# ── Caso 3: los literales de array construyen el array REAL ────────────
# Bug cazado 2026-08-01 (campaña NYX30xx): eval_array iteraba node_data en
# vez de node_data[0] → TODO literal de array producía [nil] (length 1,
# elemento nil) y de paso el catch-all imprimía mojibake. Silently-wrong
# de datos, no solo de ruido.
run_case 3 <<'EOF'
let a = [10, 20, 30]
print(a.length())
print(a[2])
:quit
EOF

# Ancla al fin de línea: sin el $, "nyx> 3" matchea por substring la línea
# "nyx> 30" y el check de length queda vacuo (hallazgo del code-review).
if grep -q "nyx> 3$" "$TMP/out3.txt" && grep -q "nyx> 30" "$TMP/out3.txt"; then
    echo "  ✓ literal de array: length 3 y a[2]=30 (datos reales, no [nil])"
else
    echo "  ✗ literal de array roto (esperado length 3 y a[2]=30)"
    sed 's/^/      /' "$TMP/out3.txt" | head -8
    FAIL=$((FAIL + 1))
fi
# Grep por el CÓDIGO neutro, no por texto de un idioma: el binario emite
# inglés con NYX_LANG sin setear — el grep español era un guard muerto
# (hallazgo del code-review).
if grep -qa "NYX3002" "$TMP/out3.txt"; then
    echo "  ✗ literal de array sigue disparando el catch-all de expresión"
    FAIL=$((FAIL + 1))
fi

# ── Caso 4: variable no definida → NYX3003 (antes «Error:» mudo) ───────
run_case 4 <<'EOF'
print(no_existe)
:quit
EOF
if grep -q "NYX3003" "$TMP/out4.txt"; then
    echo "  ✓ variable no definida emite NYX3003"
else
    echo "  ✗ variable no definida sin NYX3003"
    FAIL=$((FAIL + 1))
fi

# ── Caso 5: llamar algo que no es función → NYX3004 ────────────────────
run_case 5 <<'EOF'
let x = 1
x()
:quit
EOF
if grep -q "NYX3004" "$TMP/out5.txt"; then
    echo "  ✓ llamada a no-función emite NYX3004"
else
    echo "  ✗ llamada a no-función sin NYX3004"
    FAIL=$((FAIL + 1))
fi

# ── Caso 6: for-in sobre array ITERA (antes: segfault exit 139) ────────
# Causa raíz (code-review 2026-08-01): el parser guarda el nombre de la
# variable del for como String plana en data[0]; eval_for lo trataba como
# astnode y leía [0] de la String → puntero basura → SIGSEGV.
run_case 6 <<'EOF'
for x in [7, 8] {
print(x)
}

print("FOR-TERMINO")
:quit
EOF
if [ "$RC" -eq 139 ]; then
    echo "  ✗ for-in sobre array SEGFAULTEA (exit 139)"
    FAIL=$((FAIL + 1))
elif grep -q "7" "$TMP/out6.txt" && grep -q "8" "$TMP/out6.txt" && grep -q "FOR-TERMINO" "$TMP/out6.txt"; then
    echo "  ✓ for-in itera (7, 8) y la sesión sigue"
else
    echo "  ✗ for-in no iteró bien (rc=$RC)"
    sed 's/^/      /' "$TMP/out6.txt" | head -8
    FAIL=$((FAIL + 1))
fi

# ── Caso 7: módulo por cero → NYX3005 (antes: 5 % 0 daba 5 en silencio,
#    artefacto del msub de ARM64 sin guard — división SÍ lo tenía) ─────
run_case 7 <<'EOF'
print(5 % 0)
:quit
EOF
if grep -q "NYX3005" "$TMP/out7.txt"; then
    echo "  ✓ módulo por cero emite NYX3005"
else
    echo "  ✗ módulo por cero sin NYX3005 (¿sigue dando 5 mudo?)"
    FAIL=$((FAIL + 1))
fi

# ── Caso 8: aridad incorrecta → NYX3006 y la sesión SOBREVIVE ──────────
# Antes: eval_call indexaba args[i] fuera de rango → el abort de lectura
# chequeada del binario compilado mataba la sesión entera (exit 1).
run_case 8 <<'EOF'
fn suma(a, b) {
return a + b
}

suma(1)
print("SESION-VIVA-TRAS-ARIDAD")
:quit
EOF
if grep -q "NYX3006" "$TMP/out8.txt" && grep -q "SESION-VIVA-TRAS-ARIDAD" "$TMP/out8.txt"; then
    echo "  ✓ aridad incorrecta emite NYX3006 y la sesión sobrevive"
else
    echo "  ✗ aridad incorrecta: sin NYX3006 o la sesión murió"
    sed 's/^/      /' "$TMP/out8.txt" | head -8
    FAIL=$((FAIL + 1))
fi

# ── Caso 9: bare `return` en fn void NO dispara NYX3002 ────────────────
# El parser sintetiza make_astnode("integer", [0]) para el bare return
# (parser.nx:2831); codegen tiene rama dedicada (lección de NYX2001: los
# catch-alls pueden ser load-bearing para nodos sintéticos) — el
# intérprete no la tenía y erroreaba sobre código VÁLIDO.
run_case 9 <<'EOF'
fn saluda() {
print("HOLA-BARE-RETURN")
return
}

saluda()
:quit
EOF
if grep -q "HOLA-BARE-RETURN" "$TMP/out9.txt" && ! grep -qa "NYX3002" "$TMP/out9.txt"; then
    echo "  ✓ bare return en fn void no dispara NYX3002 (nodo sintético cubierto)"
else
    echo "  ✗ bare return dispara NYX3002 sobre código válido"
    sed 's/^/      /' "$TMP/out9.txt" | head -6
    FAIL=$((FAIL + 1))
fi

# ── Caso 10: indexar un no-array → NYX3002 honesto, no NYX3005 falso ───
# s[0] sobre String: el binario compilado lo soporta (indexado por bytes);
# el intérprete no — es limitación del subconjunto (NYX3002), no "índice
# fuera de rango" del programa (NYX3005, que además el SPEC promete que
# el binario abortaría — falso acá).
run_case 10 <<'EOF'
let s = "abc"
print(s[0])
:quit
EOF
if grep -qa "NYX3002" "$TMP/out10.txt" && ! grep -qa "NYX3005" "$TMP/out10.txt"; then
    echo "  ✓ indexar un no-array reporta NYX3002 (subconjunto), no NYX3005 falso"
else
    echo "  ✗ indexar String: etiqueta incorrecta (esperado NYX3002, no NYX3005)"
    sed 's/^/      /' "$TMP/out10.txt" | head -6
    FAIL=$((FAIL + 1))
fi

# ── Caso 11: llamar un nombre indefinido → UN solo error, no dos ───────
# Antes: NYX3003 (env_get) + NYX3004 falso ("no es una función") y el
# contador subía 2 por un solo error del usuario.
run_case 11 <<'EOF'
no_existe(1)
:quit
EOF
n_errs=$(grep -ac "error \[NYX30" "$TMP/out11.txt")
if [ "$n_errs" -eq 1 ] && grep -qa "NYX3003" "$TMP/out11.txt"; then
    echo "  ✓ llamada a nombre indefinido: exactamente 1 error (NYX3003)"
else
    echo "  ✗ llamada a nombre indefinido: $n_errs errores (esperado 1, solo NYX3003)"
    sed 's/^/      /' "$TMP/out11.txt" | head -6
    FAIL=$((FAIL + 1))
fi

# ── Caso 12: el error CORTA la expresión — sin valor fabricado ─────────
# nil-cascade (ficha 2026-08-01): print(a[9] + 1) emitía NYX3005 y DESPUÉS
# imprimía 1 (value_to_int(nil)==0) — error seguido de un resultado
# incorrecto presentado como válido. Ahora el Value "error" propaga y la
# expresión muere; la sesión sigue.
run_case 12 <<'EOF'
let a = [1, 2, 3]
print(a[9] + 1)
print("VIVA-TRAS-CORTE")
:quit
EOF
if grep -qa "NYX3005" "$TMP/out12.txt" && ! grep -qa "nyx> 1$" "$TMP/out12.txt" \
   && ! grep -qaE "^1$" "$TMP/out12.txt" && grep -qa "VIVA-TRAS-CORTE" "$TMP/out12.txt"; then
    echo "  ✓ el error corta la expresión (sin valor fabricado) y la sesión sigue"
else
    echo "  ✗ nil-cascade: el error no corta o mató la sesión"
    sed 's/^/      /' "$TMP/out12.txt" | head -6
    FAIL=$((FAIL + 1))
fi

# ── Caso 13: sin cascada de errores espurios ───────────────────────────
# no_existe + 5 → UN NYX3003; antes el nil raíz podía disparar errores
# aguas abajo y el contador sobre-contaba.
run_case 13 <<'EOF'
no_existe + 5
:quit
EOF
n13=$(grep -ac "error \[NYX30" "$TMP/out13.txt")
if [ "$n13" -eq 1 ] && ! grep -qa "=> " "$TMP/out13.txt"; then
    echo "  ✓ expresión con raíz errónea: exactamente 1 error, sin resultado mostrado"
else
    echo "  ✗ cascada: $n13 errores (esperado 1) o mostró un resultado fabricado"
    sed 's/^/      /' "$TMP/out13.txt" | head -5
    FAIL=$((FAIL + 1))
fi

# ── Caso 14: el error aborta el CUERPO de la función, no la sesión ─────
# Igual que el binario compilado aborta el proceso, el REPL aborta la
# evaluación en curso: lo que sigue al error dentro de la fn NO corre.
run_case 14 <<'EOF'
fn f() {
let x = zzz
print("NO-DEBE-VERSE")
}

f()
print("SESION-VIVA-14")
:quit
EOF
if grep -qa "NYX3003" "$TMP/out14.txt" && ! grep -qa "NO-DEBE-VERSE" "$TMP/out14.txt" \
   && grep -qa "SESION-VIVA-14" "$TMP/out14.txt"; then
    echo "  ✓ el error aborta el cuerpo de la fn (estilo compilado) y la sesión sigue"
else
    echo "  ✗ el cuerpo siguió tras el error, o la sesión murió"
    sed 's/^/      /' "$TMP/out14.txt" | head -6
    FAIL=$((FAIL + 1))
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  smoke del REPL: FALLÓ ($FAIL check(s))"
    exit 1
fi
echo "  smoke del REPL: PASS"
exit 0
