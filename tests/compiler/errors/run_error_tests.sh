#!/usr/bin/env bash
# ==============================================================
# Compiler error tests — invoke nyx_bootstrap WITHOUT
# NYX_SKIP_SEMANTIC so the semantic checker actually runs.
# Each test pairs a .nx file with an expected stderr fragment.
# ==============================================================
set -u
cd "$(dirname "$0")/../../.."

PASS=0
FAIL=0
FAILED_TESTS=()

# Each test: "<file> | <expected stderr fragment>"
TESTS=(
  "tests/compiler/errors/test-m08-type-mismatch.nx|type mismatch in 'x': expected int, got String"
  "tests/compiler/errors/test-m08-unknown-type.nx|unknown type 'Str'"
  "tests/compiler/errors/test-m08-array-mismatch.nx|type mismatch in 'nums': expected Array<int>, got Array<String>"
  "tests/compiler/errors/test-m08-arg-mismatch.nx|argument 1 of 'greet': expected String, got int"
  "tests/compiler/errors/test-m08-return-mismatch.nx|return type mismatch in 'pick': expected int, got String"
  "tests/compiler/errors/test-m08-param-unknown-type.nx|unknown type 'Str'"
  "tests/compiler/errors/test-m08-logical-non-bool.nx|left operand of '&&' must be bool, got int"
  "tests/compiler/errors/test-m08-bitwise-non-int.nx|left operand of '&' must be an integer, got String"
  "tests/compiler/errors/test-m08-binop-type-result.nx|type mismatch in 's': expected String, got int"
  "tests/compiler/errors/test-m08-method-return-mismatch.nx|type mismatch in 'n': expected String, got int"
  "tests/compiler/errors/test-m08-impl-arg-mismatch.nx|argument 1 of 'Point.with_x': expected int, got String"
  "tests/compiler/errors/test-m08-impl-return-mismatch.nx|type mismatch in 's': expected String, got int"
  "tests/compiler/errors/test-m08-builtin-arg-mismatch.nx|argument 1 of 'substring': expected int, got String"
  "tests/compiler/errors/test-m08-array-push-mismatch.nx|argument 1 of 'push': expected int, got String"
  "tests/compiler/errors/test-m08-call-non-function.nx|'x' is not callable (type: int)"
  "tests/compiler/errors/test-m08-infer-array-push-mismatch.nx|argument 1 of 'push': expected int, got String"
  "tests/compiler/errors/test-m08-field-access-mismatch.nx|type mismatch in 'n': expected String, got int"
  "tests/compiler/errors/test-m08-index-access-mismatch.nx|type mismatch in 's': expected String, got int"
  "tests/compiler/errors/test-m08-for-var-mismatch.nx|type mismatch in 's': expected String, got int"
  "tests/compiler/errors/test-m08-generic-ret-mismatch.nx|type mismatch in 's': expected String, got int"
  "tests/compiler/errors/test-m08-generic-arg-conflict.nx|argument 2 of 'max': expected int, got String"
  "tests/compiler/errors/test-m08-generic-array-mismatch.nx|type mismatch in 'n': expected String, got int"
  "tests/compiler/errors/test-m08-generic-second-param.nx|type mismatch in 'n': expected int, got String"
  "tests/compiler/errors/test-m08-infer-return-used-wrong.nx|type mismatch in 's': expected String, got int"
  "tests/compiler/errors/test-m08-infer-return-conflict.nx|conflicting returns int and String"
  "tests/compiler/errors/test-m08-infer-void-used.nx|type mismatch in 'n': expected int, got ()"
  "tests/compiler/errors/test-m08-infer-missing-path.nx|infers return type 'int' but not all paths return"
  "tests/compiler/errors/test-m08-impl-generic-arg-mismatch.nx|argument 2 of 'Box.pair': expected int, got String"
  "tests/compiler/errors/test-m08-imported-field-typo.nx|field 'programm' does not exist in struct 'ArgParser' (did you mean 'program'?)"
  "tests/compiler/errors/test-m08-imported-field-type-mismatch.nx|type mismatch in field 'Version.major': expected int, got String"
  "tests/compiler/errors/test-m08-imported-alias-mismatch.nx|type mismatch in 's': expected int, got String"
  "tests/compiler/errors/test-m08-trait-missing-neg.nx|operand of '-' must implement 'Neg', but 'Money' does not"
  "tests/compiler/errors/test-m08-cross-module-trait-missing-neg.nx|operand of '-' must implement 'Neg', but 'Coin' does not"
  "tests/compiler/errors/test-m08-binop-trait-missing-add.nx|left operand of '+' must implement 'Add', but 'Point' does not"
  "tests/compiler/errors/test-m08-dyn-trait-mismatch.nx|'Point' does not implement 'dyn Writer' required by 'd'"
  "tests/compiler/errors/test-m08-binop-rhs-trait-missing.nx|right operand of '+' must implement 'Add', but 'Point' does not"
  "tests/compiler/errors/test-m08-binop-trait-missing-partialord.nx|left operand of '<' must implement 'PartialOrd', but 'Point' does not"
  "tests/compiler/errors/test-m08-trait-bound-unsatisfied.nx|'Point' does not satisfy bound 'Display' required by type parameter 'T' of 'show_it'"
  "tests/compiler/errors/test-m08-impl-method-bound-unsatisfied.nx|'Item' does not satisfy bound 'Show' required by type parameter 'T' of 'Box.wrap'"
  "tests/compiler/errors/test-m08-enum-payload-mismatch.nx|argument 2 of 'Color.Rgb': expected int, got String"
  "tests/compiler/errors/test-m08-enum-payload-arity.nx|'Color.Rgb' expects 3 arguments, got 1"
  "tests/compiler/errors/test-m08-imported-enum-payload.nx|argument 2 of 'Signal.Move': expected int, got String"
  # B8-F3 multi-error recovery: el MISMO archivo aparece 3 veces, una por
  # fragmento — verifica que los 3 errores top-level salen en una compilación.
  "tests/compiler/errors/test-m08-multi-error.nx|type mismatch in 'a': expected int, got String"
  "tests/compiler/errors/test-m08-multi-error.nx|type mismatch in 'b': expected bool, got int"
  "tests/compiler/errors/test-m08-multi-error.nx|type mismatch in 'c': expected String, got bool"
  # Fase 3 T5b.1: async fn con retorno float rechazado (hazard de ABI — join
  # devuelve i64, un float compartiría el registro entero → basura).
  "tests/compiler/errors/test-async-float-return.nx|async fn with float return type not yet supported"
)

for entry in "${TESTS[@]}"; do
  file="${entry%%|*}"
  expected="${entry#*|}"
  name=$(basename "$file" .nx)

  cp "$file" script.nx
  output=$(./nyx_bootstrap 2>&1)
  rc=$?

  # Compiler exits with 0 even on semantic failure (check failure is in-band);
  # verify failure via presence of the expected error text and "check FAILED".
  if echo "$output" | grep -qF "$expected" && echo "$output" | grep -q "check   FAILED"; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"
    printf "    expected fragment: %s\n" "$expected"
    printf "    got:\n"
    echo "$output" | sed 's/^/      /'
    FAIL=$((FAIL + 1))
    FAILED_TESTS+=("$name")
  fi
done

# ==============================================================
# B6 — NYX_DIAG=json structured diagnostics
# Re-run a sample of cases with NYX_DIAG=json and verify each
# diagnostic line is valid JSON with the expected stable code.
# v0.14: also verify line:column — "<expected line>" is the exact
# 1-based line in the SOURCE FILE (rebased past prelude/imports);
# "+" means "any line > 0"; "-" skips the check.
# Format: "<file> | <code> | <suggestion or -> | <line, + or ->"
# ==============================================================
JSON_TESTS=(
  "tests/compiler/errors/test-m08-type-mismatch.nx|NYX1003|-|5"
  "tests/compiler/errors/test-m08-unknown-type.nx|NYX1001|-|+"
  "tests/compiler/errors/test-m08-arg-mismatch.nx|NYX1005|-|+"
  "tests/compiler/errors/test-m08-return-mismatch.nx|NYX1004|-|+"
  "tests/compiler/errors/test-m08-call-non-function.nx|NYX1007|-|+"
  "tests/compiler/errors/test-m08-imported-field-typo.nx|NYX1017|program|+"
  "tests/compiler/errors/test-m08-trait-missing-neg.nx|NYX1011|-|+"
  "tests/compiler/errors/test-m08-dyn-trait-mismatch.nx|NYX1012|-|+"
  "tests/compiler/errors/test-m08-infer-missing-path.nx|NYX1008|-|+"
  "tests/compiler/errors/test-m08-trait-bound-unsatisfied.nx|NYX1020|-|+"
  "tests/compiler/errors/test-m08-enum-payload-arity.nx|NYX1006|-|+"
)

for entry in "${JSON_TESTS[@]}"; do
  file=$(echo "$entry" | cut -d'|' -f1)
  code=$(echo "$entry" | cut -d'|' -f2)
  sugg=$(echo "$entry" | cut -d'|' -f3)
  eline=$(echo "$entry" | cut -d'|' -f4)
  name="json:$(basename "$file" .nx)"

  cp "$file" script.nx
  json_line=$(NYX_DIAG=json ./nyx_bootstrap 2>&1 | grep -m1 "^{")

  verdict=$(echo "$json_line" | python3 -c "
import sys, json
expected_code = '$code'
expected_sugg = '$sugg'
expected_line = '$eline'
try:
    d = json.loads(sys.stdin.readline())
except Exception as e:
    print('invalid JSON:', e); sys.exit(0)
if d.get('code') != expected_code:
    print('code mismatch: got', d.get('code')); sys.exit(0)
if d.get('severity') != 'error' or d.get('phase') != 'semantic':
    print('missing severity/phase'); sys.exit(0)
if not d.get('message'):
    print('empty message'); sys.exit(0)
if expected_sugg != '-' and d.get('suggestion') != expected_sugg:
    print('suggestion mismatch: got', d.get('suggestion')); sys.exit(0)
if expected_line == '+':
    if not (isinstance(d.get('line'), int) and d['line'] > 0):
        print('line missing or <= 0: got', d.get('line')); sys.exit(0)
elif expected_line != '-':
    if d.get('line') != int(expected_line):
        print('line mismatch: got', d.get('line'), 'want', expected_line); sys.exit(0)
print('OK')
")

  if [ "$verdict" = "OK" ]; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"
    printf "    %s\n" "$verdict"
    printf "    line: %s\n" "$json_line"
    FAIL=$((FAIL + 1))
    FAILED_TESTS+=("$name")
  fi
done

# ==============================================================
# Parse error tests (text)
# Each test: "<file> | <expected output fragment>"
# These tests must: exit != 0, contain the fragment, and show
# "parse   FAILED" in the output.
# test-parse-multi-error appears 3 times (one per error fragment),
# mirroring the pattern used for test-m08-multi-error above.
# ==============================================================
PARSE_TESTS=(
  "tests/compiler/errors/test-parse-keyword-as-ident.nx|cannot use keyword 'match' as an identifier"
  "tests/compiler/errors/test-parse-missing-paren.nx|expected 'RIGHT_PAREN', found 'return' (RETURN)"
  "tests/compiler/errors/test-parse-unexpected-eof.nx|unexpected end of file: missing closing '}'"
  "tests/compiler/errors/test-parse-too-many-errors.nx|too many parse errors, aborting"
  "tests/compiler/errors/test-parse-multi-error.nx|cannot use keyword 'match' as an identifier"
  "tests/compiler/errors/test-parse-multi-error.nx|cannot use keyword 'enum' as an identifier"
  "tests/compiler/errors/test-parse-multi-error.nx|cannot use keyword 'while' as an identifier"
)

for entry in "${PARSE_TESTS[@]}"; do
  file="${entry%%|*}"
  expected="${entry#*|}"
  name=$(basename "$file" .nx)

  cp "$file" script.nx
  output=$(timeout 15 ./nyx_bootstrap 2>&1)
  rc=$?

  if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "$expected" && echo "$output" | grep -q "parse   FAILED"; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"
    printf "    expected fragment: %s\n" "$expected"
    printf "    exit code: %d\n" "$rc"
    printf "    got:\n"
    echo "$output" | sed 's/^/      /'
    FAIL=$((FAIL + 1))
    FAILED_TESTS+=("$name")
  fi
done

# ==============================================================
# Parse JSON tests
# Re-run parse cases with NYX_DIAG=json and verify each
# diagnostic line is valid NDJSON with the expected code and
# phase=="parse".
# For test-parse-keyword-as-ident also verify the exact line.
# Format: "<file> | <code> | <expected line, + or ->"
# ==============================================================
PARSE_JSON_TESTS=(
  "tests/compiler/errors/test-parse-keyword-as-ident.nx|NYX0102|2"
  "tests/compiler/errors/test-parse-multi-error.nx|NYX0102|+"
  "tests/compiler/errors/test-parse-missing-paren.nx|NYX0101|+"
  "tests/compiler/errors/test-parse-unexpected-eof.nx|NYX0104|+"
  "tests/compiler/errors/test-parse-too-many-errors.nx|NYX0103|-"
)

for entry in "${PARSE_JSON_TESTS[@]}"; do
  file=$(echo "$entry" | cut -d'|' -f1)
  code=$(echo "$entry" | cut -d'|' -f2)
  eline=$(echo "$entry" | cut -d'|' -f3)
  name="json:$(basename "$file" .nx)"

  cp "$file" script.nx
  all_json=$(NYX_DIAG=json timeout 15 ./nyx_bootstrap 2>&1 | grep "^{")
  # Pick the line matching the expected code (first match); fallback to first JSON line
  json_line=$(echo "$all_json" | grep -m1 "\"$code\"" || echo "$all_json" | head -1)

  verdict=$(echo "$json_line" | python3 -c "
import sys, json
expected_code = '$code'
expected_line = '$eline'
try:
    d = json.loads(sys.stdin.readline())
except Exception as e:
    print('invalid JSON:', e); sys.exit(0)
if d.get('code') != expected_code:
    print('code mismatch: got', d.get('code')); sys.exit(0)
if d.get('severity') != 'error' or d.get('phase') != 'parse':
    print('severity/phase mismatch: got severity=' + str(d.get('severity')) + ' phase=' + str(d.get('phase'))); sys.exit(0)
if not d.get('message'):
    print('empty message'); sys.exit(0)
if expected_line == '+':
    if not (isinstance(d.get('line'), int) and d['line'] > 0):
        print('line missing or <= 0: got', d.get('line')); sys.exit(0)
elif expected_line != '-':
    if d.get('line') != int(expected_line):
        print('line mismatch: got', d.get('line'), 'want', expected_line); sys.exit(0)
print('OK')
")

  if [ "$verdict" = "OK" ]; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"
    printf "    %s\n" "$verdict"
    printf "    line: %s\n" "$json_line"
    FAIL=$((FAIL + 1))
    FAILED_TESTS+=("$name")
  fi
done

# ==============================================================
# Driver import-resolution errors
# Un import que no resuelve a ningún archivo aborta con exit != 0
# ANTES de parse/check (no hay "check FAILED"/"parse FAILED" — el
# error sale de resolve_source en el driver). Verifica: exit != 0
# + el fragmento del mensaje.
# Each test: "<file> | <expected output fragment>"
# ==============================================================
RESOLVE_TESTS=(
  "tests/compiler/errors/test-import-unresolved.nx|could not resolve import \"definitivamente_inexistente_xyz\""
  # extern "js" (WASM FFI) en target NATIVO → error de codegen, exit != 0.
  # Bajo NYX_TARGET=wasm32-wasi el mismo programa compila (import js::).
  "tests/compiler/errors/test-extern-js-native-target.nx|requires NYX_TARGET=wasm32-wasi"
  # extern duplicado con firma/ABI conflictiva → error de codegen, exit != 0.
  # (Firma idéntica sigue dedupeando sin error — ver test-251.)
  "tests/compiler/errors/test-extern-conflict.nx|redeclared with incompatible signature"
  # #7: extern de USUARIO colisiona con uno provisto por std/ (importado) →
  # error del compilador con hint accionable, no clang crash.
  "tests/compiler/errors/test-extern-conflict-std.nx|redeclared with incompatible signature"
  # c_fn_ptr sobre algo que no es fn top-level → error del compilador.
  "tests/compiler/errors/test-c-fn-ptr-notfn.nx|c_fn_ptr expects a top-level function name"
  # c_fn_ptr sobre un closure con entorno → error del compilador.
  "tests/compiler/errors/test-c-fn-ptr-closure.nx|cannot be passed as C callbacks"
  # c_fn_ptr sobre un LOCAL que shadowea una fn top-level homónima → error
  # (antes: tomaba silenciosamente la dirección de la fn global).
  "tests/compiler/errors/test-c-fn-ptr-shadow.nx|is a local variable here, not a top-level function"
)

for entry in "${RESOLVE_TESTS[@]}"; do
  file="${entry%%|*}"
  expected="${entry#*|}"
  name=$(basename "$file" .nx)

  cp "$file" script.nx
  output=$(timeout 15 ./nyx_bootstrap 2>&1)
  rc=$?

  if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "$expected"; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"
    printf "    expected fragment: %s\n" "$expected"
    printf "    exit code: %d\n" "$rc"
    printf "    got:\n"
    echo "$output" | sed 's/^/      /'
    FAIL=$((FAIL + 1))
    FAILED_TESTS+=("$name")
  fi
done

# ==============================================================
# Driver import-resolution: caso POSITIVO de paquete vendoreado.
# Un paquete bajo packages/ con import INTERNO "src/X" debe resolver
# vía reescritura textual (detect_package_name + rewrite_package_imports).
# Regresión: marker_len=14 (vs "packages/"=9) y src_marker off-by-1
# dejaban la reescritura muerta → "could not resolve import 'src/X'".
# Verifica: exit == 0 + emite script.ll + NO imprime "could not resolve".
# ==============================================================
VENDORED_FX="tests/compiler/errors/fixtures/vendored-pkg"
name="resolve-vendored-pkg-src-import"
cp "$VENDORED_FX/src/main.nx" script.nx
output=$(NYX_PROJECT_DIR="$(pwd)/$VENDORED_FX" timeout 15 ./nyx_bootstrap 2>&1)
rc=$?
if [ "$rc" -eq 0 ] && [ -f script.ll ] && ! echo "$output" | grep -qF "could not resolve"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado 0)\n" "$rc"
  printf "    got:\n"
  echo "$output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# Codegen target guard: un builtin no portable (net/tls/thread/...) bajo
# NYX_TARGET=wasm32-wasi debe fallar con error bilingüe + exit != 0.
# El mismo programa en target nativo compila (exit 0). Necesita el env var
# (el runner estándar corre sin él), por eso va en su propio bloque.
# ==============================================================
name="test-wasm-forbidden-builtin"
cp "tests/compiler/errors/$name.nx" script.nx
output=$(NYX_TARGET=wasm32-wasi timeout 15 ./nyx_bootstrap 2>&1)
rc=$?
if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "is not supported on target 'wasm32-wasi'"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado != 0)\n" "$rc"
  echo "$output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# Camino B fuera de scope v1: un método '&mut self' despachado vía
# dyn Trait debe fallar con error bilingüe en codegen (el thunk de la
# vtable carga self by-value → la mutación se perdería en silencio).
# ==============================================================
name="test-dyn-mutref"
cp "tests/compiler/errors/$name.nx" script.nx
output=$(timeout 15 ./nyx_bootstrap 2>&1)
rc=$?
if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "cannot be dispatched via 'dyn Bumper'"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado != 0)\n" "$rc"
  echo "$output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# Borrow checker (T1a): use-after-move NYX1201 = move-lint UNSOUND
# sobre código GC (mover un String/Array no invalida el original bajo
# GC). Por eso NO es un gate: se muestra como HINT en NYX_BORROW=warn
# (nunca falla el build) y se SUPRIME en NYX_BORROW=error (gate limpio
# de free-safety). El programa es semánticamente válido.
name="test-borrow-use-after-move"
cp "tests/compiler/errors/$name.nx" script.nx
# --- warn: el hint aparece pero el build NO falla (rc == 0) ---
warn_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1)
warn_rc=$?
if [ "$warn_rc" -eq 0 ] && echo "$warn_output" | grep -qF "use of moved value 'a'"; then
  printf "  ✓ %s\n" "$name-warn-hint"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-warn-hint"
  printf "    exit code: %d (esperado 0, con hint NYX1201)\n" "$warn_rc"
  echo "$warn_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-warn-hint")
fi
# --- error: el move-lint (unsound) se SUPRIME → no gatea (rc == 0,
# sin diag). Prueba que el gate de free-safety es LIMPIO. ---
err_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
err_rc=$?
if [ "$err_rc" -eq 0 ] && ! echo "$err_output" | grep -qF "use of moved value"; then
  printf "  ✓ %s\n" "$name-error-suppressed"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-error-suppressed"
  printf "    exit code: %d (esperado 0, move-lint suprimido en error)\n" "$err_rc"
  echo "$err_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-error-suppressed")
fi
# Modo OFF (sin NYX_BORROW): el MISMO programa compila+corre sin emitir
# el diagnóstico (contrato crítico: make test no debe contaminarse).
off_output=$(./nyx_bootstrap 2>&1)
off_rc=$?
if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "use of moved value"; then
  printf "  ✓ %s\n" "$name-off-silent"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"
  printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
  echo "$off_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

# ==============================================================
# Borrow checker (T3a): memory-safety REAL sobre memoria manual
# (alloc/free/*T). use-after-free NYX1220 + double-free NYX1221.
# Necesita NYX_BORROW=error (modo OFF = silencioso). Es SOUND: solo
# se activa cuando el programa llama free() — el código GC no lo
# hace, así que no hay falsos positivos. Los programas son
# semánticamente válidos (NO hay "check FAILED").
# --- use-after-free NYX1220 ---
name="test-borrow-use-after-free"
cp "tests/compiler/errors/$name.nx" script.nx
output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
rc=$?
if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "use of freed value 'p'"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado != 0, NYX1220)\n" "$rc"
  echo "$output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
# Modo OFF: mismo programa compila+corre sin emitir el diagnóstico.
off_output=$(./nyx_bootstrap 2>&1)
off_rc=$?
if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "use of freed value"; then
  printf "  ✓ %s\n" "$name-off-silent"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"
  printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
  echo "$off_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

# --- double-free NYX1221 ---
name="test-borrow-double-free"
cp "tests/compiler/errors/$name.nx" script.nx
output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
rc=$?
if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "double free of 'p'"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado != 0, NYX1221)\n" "$rc"
  echo "$output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll

# MAX flow-sensitive: free condicional cazado (antes MISS).
name="test-borrow-cond-free"
cp "tests/compiler/errors/$name.nx" script.nx
cf_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); cf_rc=$?
if [ "$cf_rc" -ne 0 ] && echo "$cf_output" | grep -qF "use of freed value 'p'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1220 flow-sensitive)\n" "$cf_rc"
  echo "$cf_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll
name="test-borrow-cond-free-both"
cp "tests/compiler/errors/$name.nx" script.nx
cfb_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); cfb_rc=$?
if [ "$cfb_rc" -ne 0 ] && echo "$cfb_output" | grep -qF "double free of 'p'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1221 flow-sensitive)\n" "$cfb_rc"
  echo "$cfb_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

# --- caso CORRECTO: free-safety es SOUND, no sobre-marca ---
# El programa usa memoria manual correctamente (free al final +
# re-alloc-revive). Con el move-lint suprimido en error mode, el gate
# es LIMPIO: un programa de memoria manual correcto → NYX_BORROW=error
# → exit 0, SIN ningún diagnóstico. (Antes el move-lint NYX1201
# sobre-marcaba el prelude y no se podía chequear exit 0; ahora sí.)
name="test-borrow-free-ok"
cp "tests/compiler/errors/$name.nx" script.nx
ok_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
ok_rc=$?
if [ "$ok_rc" -eq 0 ] && ! echo "$ok_output" | grep -qE "freed value|double free"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado 0, gate limpio sin diag)\n" "$ok_rc"
  echo "$ok_output" | grep -E "freed value|double free" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
# Modo OFF (lo que corre make test): compila+corre sin NINGÚN diag, exit 0.
ok_off_output=$(./nyx_bootstrap 2>&1)
ok_off_rc=$?
if [ "$ok_off_rc" -eq 0 ] && ! echo "$ok_off_output" | grep -qE "freed value|double free|use of moved"; then
  printf "  ✓ %s\n" "$name-off-silent"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"
  printf "    exit code: %d (esperado 0, sin diag)\n" "$ok_off_rc"
  echo "$ok_off_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

# ==============================================================
# Borrow checker (Track 3b): exclusividad de &mut (statement-scoped).
# Dos &mut al MISMO place en un statement → NYX1210. LINT no-gating
# (el lowering de &mut no emite noalias → aliasing no es UB): se ve en
# warn, se SUPRIME en error (gate limpio). El programa es válido.
name="test-borrow-mut-exclusive"
cp "tests/compiler/errors/$name.nx" script.nx
# --- warn: el hint NYX1210 aparece, build NO falla (rc == 0) ---
warn_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1)
warn_rc=$?
if [ "$warn_rc" -eq 0 ] && echo "$warn_output" | grep -qF "as mutable more than once"; then
  printf "  ✓ %s\n" "$name-warn-hint"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-warn-hint"
  printf "    exit code: %d (esperado 0, con hint NYX1210)\n" "$warn_rc"
  echo "$warn_output" | grep -F "NYX1210" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-warn-hint")
fi
# --- error: el lint (no-gating) se SUPRIME → no gatea (rc == 0, sin diag) ---
err_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
err_rc=$?
if [ "$err_rc" -eq 0 ] && ! echo "$err_output" | grep -qF "as mutable more than once"; then
  printf "  ✓ %s\n" "$name-error-suppressed"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-error-suppressed"
  printf "    exit code: %d (esperado 0, lint suprimido en error)\n" "$err_rc"
  echo "$err_output" | grep -F "NYX1210" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-error-suppressed")
fi
# Modo OFF: silencioso.
off_output=$(./nyx_bootstrap 2>&1)
off_rc=$?
if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "as mutable"; then
  printf "  ✓ %s\n" "$name-off-silent"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"
  printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
  echo "$off_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll
# --- caso CORRECTO: dos &mut a places DISTINTOS NO conflictúan (ni en warn) ---
name="test-borrow-mut-exclusive-ok"
cp "tests/compiler/errors/$name.nx" script.nx
okx_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1)
okx_rc=$?
if [ "$okx_rc" -eq 0 ] && ! echo "$okx_output" | grep -qF "as mutable"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    (exclusividad falseó sobre places distintos)\n"
  echo "$okx_output" | grep -F "NYX1210" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# T3 inc 3b Etapa 1: dangling inter-procedural por ELISIÓN. LINT no-gating
# (elisión es sobre-aproximación). NYX1223: warn muestra, error suprime, off silencioso.
name="test-borrow-interproc-elision"
cp "tests/compiler/errors/$name.nx" script.nx
warn_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); warn_rc=$?
if [ "$warn_rc" -eq 0 ] && echo "$warn_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-warn-hint"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-warn-hint"; printf "    exit code: %d (esperado 0, con hint NYX1223)\n" "$warn_rc"
  echo "$warn_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-warn-hint")
fi
err_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); err_rc=$?
if [ "$err_rc" -eq 0 ] && ! echo "$err_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-error-suppressed"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-error-suppressed"; printf "    exit code: %d (esperado 0, lint suprimido)\n" "$err_rc"
  echo "$err_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-error-suppressed")
fi
off_output=$(./nyx_bootstrap 2>&1); off_rc=$?
if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
  echo "$off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

# ==============================================================
# T3 inc 3b (fix Crítico de review): softness monotónica. Origen SOFT (elisión)
# pasado por una fn 'a HARD debe seguir SOFT — NO promover a NYX1222 gating.
name="test-borrow-interproc-soft-hard"
cp "tests/compiler/errors/$name.nx" script.nx
warn_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); warn_rc=$?
if [ "$warn_rc" -eq 0 ] && echo "$warn_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-warn-hint"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-warn-hint"; printf "    exit code: %d (esperado 0, con hint NYX1223)\n" "$warn_rc"
  echo "$warn_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-warn-hint")
fi
err_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); err_rc=$?
if [ "$err_rc" -eq 0 ] && ! echo "$err_output" | grep -qF "NYX1222"; then
  printf "  ✓ %s\n" "$name-error-suppressed"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-error-suppressed"; printf "    exit code: %d (esperado 0, sin NYX1222 — FP)\n" "$err_rc"
  echo "$err_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-error-suppressed")
fi
rm -f script.ll

# ==============================================================
# T3 inc 3b Etapa 1: cobertura inter-procedural elisión — encadenado, agregado, y negativos.
# Positivos (chain, agg): warn muestra NYX1223, error suprime, off silencioso.
# Negativos (global-neg, ambig-neg): NO marcan en NINGÚN modo (rc=0, sin NYX1222/1223).
for name in test-borrow-interproc-chain test-borrow-interproc-agg; do
  cp "tests/compiler/errors/$name.nx" script.nx
  warn_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); warn_rc=$?
  if [ "$warn_rc" -eq 0 ] && echo "$warn_output" | grep -qF "NYX1223"; then
    printf "  ✓ %s\n" "$name-warn-hint"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name-warn-hint"; printf "    exit code: %d (esperado 0, con hint NYX1223)\n" "$warn_rc"
    echo "$warn_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-warn-hint")
  fi
  err_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); err_rc=$?
  if [ "$err_rc" -eq 0 ] && ! echo "$err_output" | grep -qF "NYX1223"; then
    printf "  ✓ %s\n" "$name-error-suppressed"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name-error-suppressed"; printf "    exit code: %d (esperado 0, lint suprimido)\n" "$err_rc"
    echo "$err_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-error-suppressed")
  fi
  off_output=$(./nyx_bootstrap 2>&1); off_rc=$?
  if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "NYX1223"; then
    printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
    echo "$off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
  fi
  rm -f script.ll
done

# Negativo: NO debe marcar en NINGÚN modo.
for name in test-borrow-interproc-global-neg test-borrow-interproc-ambig-neg; do
  cp "tests/compiler/errors/$name.nx" script.nx
  neg_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); neg_rc=$?
  if [ "$neg_rc" -eq 0 ] && ! echo "$neg_output" | grep -qE "NYX1222|NYX1223"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin diag)\n" "$neg_rc"
    echo "$neg_output" | grep -E "NYX1222|NYX1223" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  rm -f script.ll
done

# ==============================================================
# T3 inc 3b Etapa 2: dangling inter-procedural por 'a EXPLÍCITO. HARD → NYX1222 gatea.
for name in test-borrow-interproc-lifetime test-borrow-interproc-lifetime-pick test-borrow-interproc-join-hard; do
  cp "tests/compiler/errors/$name.nx" script.nx
  lt_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); lt_rc=$?
  if [ "$lt_rc" -ne 0 ] && echo "$lt_output" | grep -qF "NYX1222"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1222 gating)\n" "$lt_rc"
    echo "$lt_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  off_output=$(./nyx_bootstrap 2>&1); off_rc=$?
  if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "NYX1222"; then
    printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
    echo "$off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
  fi
  rm -f script.ll
done

# T3 inc 3c-1: MULTI-SOURCE outlives — 'a compartido entre varios params. El retorno
# presta de CUALQUIERA (src_indices set) → MAY-analysis: si alguna fuente es frame-bound
# gatea NYX1222. multisrc = &local en pos 0; multisrc2 = &local en pos 1 (verifica que
# itera todas las fuentes). HARD → gating (mismo path que 'a explícito de inc 3b).
for name in test-borrow-interproc-multisrc test-borrow-interproc-multisrc2; do
  cp "tests/compiler/errors/$name.nx" script.nx
  lt_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); lt_rc=$?
  if [ "$lt_rc" -ne 0 ] && echo "$lt_output" | grep -qF "NYX1222"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1222 gating)\n" "$lt_rc"
    echo "$lt_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  off_output=$(./nyx_bootstrap 2>&1); off_rc=$?
  if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "NYX1222"; then
    printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
    echo "$off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
  fi
  rm -f script.ll
done

# T3 inc 3c-1 NEG: multi-source con AMBOS args globales → ninguna fuente frame-bound →
# sin marca en ningún modo (no FP).
name="test-borrow-interproc-multisrc-neg"
cp "tests/compiler/errors/$name.nx" script.nx
neg_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); neg_rc=$?
if [ "$neg_rc" -eq 0 ] && ! echo "$neg_output" | grep -qE "NYX1222|NYX1223"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1222/1223 — no FP)\n" "$neg_rc"
  echo "$neg_output" | grep -E "NYX1222|NYX1223" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

# T3 inc 3c-2a: struct-con-lifetime (Ref<'a>) como retorno "ref-like". Un constructor
# con 1 param-ref (elisión) que devuelve un struct-con-'a tinta el resultado SOFT →
# NYX1223 LINT (warn muestra, error suprime, off silencioso). Field-insensitive (marca
# `return h`). NEGs: struct sin 'a (no ref-like) y arg global (no frame-bound).
name="test-borrow-interproc-struct"
cp "tests/compiler/errors/$name.nx" script.nx
warn_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); warn_rc=$?
if [ "$warn_rc" -eq 0 ] && echo "$warn_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-warn-hint"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-warn-hint"; printf "    exit code: %d (esperado 0, con hint NYX1223)\n" "$warn_rc"
  echo "$warn_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-warn-hint")
fi
err_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); err_rc=$?
if [ "$err_rc" -eq 0 ] && ! echo "$err_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-error-suppressed"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-error-suppressed"; printf "    exit code: %d (esperado 0, NYX1223 suprimido en error)\n" "$err_rc"
  echo "$err_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-error-suppressed")
fi
off_output=$(./nyx_bootstrap 2>&1); off_rc=$?
if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
  echo "$off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

for name in test-borrow-interproc-struct-neg test-borrow-interproc-struct-glob-neg; do
  cp "tests/compiler/errors/$name.nx" script.nx
  sneg_output=$(NYX_BORROW=warn timeout 15 ./nyx_bootstrap 2>&1); sneg_rc=$?
  if [ "$sneg_rc" -eq 0 ] && ! echo "$sneg_output" | grep -qE "NYX1222|NYX1223"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1222/1223 — no FP)\n" "$sneg_rc"
    echo "$sneg_output" | grep -E "NYX1222|NYX1223" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  rm -f script.ll
done

# T3 inc 3c-2b: struct-con-lifetime con 'a EXPLÍCITO (make<'a>(x:&'a)->Ref<'a>) → el mismo
# patrón que 3c-2a pero GATING NYX1222 (el usuario declara la relación; el 'a del ret-type
# se extrae del string "Ref<'a>", sin tocar el parser). POS gatea en error; NEG (arg global)
# no marca.
name="test-borrow-interproc-struct-hard"
cp "tests/compiler/errors/$name.nx" script.nx
sh_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); sh_rc=$?
if [ "$sh_rc" -ne 0 ] && echo "$sh_output" | grep -qF "NYX1222"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1222 gating)\n" "$sh_rc"
  echo "$sh_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
sh_off_output=$(./nyx_bootstrap 2>&1); sh_off_rc=$?
if [ "$sh_off_rc" -eq 0 ] && ! echo "$sh_off_output" | grep -qF "NYX1222"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$sh_off_rc"
  echo "$sh_off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

name="test-borrow-interproc-struct-hard-neg"
cp "tests/compiler/errors/$name.nx" script.nx
shn_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); shn_rc=$?
if [ "$shn_rc" -eq 0 ] && ! echo "$shn_output" | grep -qE "NYX1222|NYX1223"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1222/1223 — no FP)\n" "$shn_rc"
  echo "$shn_output" | grep -E "NYX1222|NYX1223" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

# Multi-lifetime: struct con DOS lifetimes (Holder<'a,'b>). El matching HARD considera
# TODOS los lifetimes del ret-type (extract_lifetimes) → un &local en la posición del 2do
# lifetime también gatea. POS gate + off-silent; NEG (ambos globales).
name="test-borrow-interproc-multi-lt"
cp "tests/compiler/errors/$name.nx" script.nx
mlt_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); mlt_rc=$?
if [ "$mlt_rc" -ne 0 ] && echo "$mlt_output" | grep -qF "NYX1222"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1222 gating)\n" "$mlt_rc"
  echo "$mlt_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
mlt_off_output=$(./nyx_bootstrap 2>&1); mlt_off_rc=$?
if [ "$mlt_off_rc" -eq 0 ] && ! echo "$mlt_off_output" | grep -qF "NYX1222"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$mlt_off_rc"
  echo "$mlt_off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

name="test-borrow-interproc-multi-lt-neg"
cp "tests/compiler/errors/$name.nx" script.nx
mltn_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); mltn_rc=$?
if [ "$mltn_rc" -eq 0 ] && ! echo "$mltn_output" | grep -qE "NYX1222|NYX1223"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1222/1223 — no FP)\n" "$mltn_rc"
  echo "$mltn_output" | grep -E "NYX1222|NYX1223" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

# T3 inc 3c: xdup vive en otro archivo, pero resolve_source INLINA los user imports →
# xdup queda como fn top-level local → sig_build local la registra como elisión →
# passthrough por-inlining marca NYX1223 LINT (warn muestra, error suprime, off silencioso).
# NEG (arg global) no marca. (No hace falta scan cross-módulo — el inlining lo da gratis.)
name="test-borrow-interproc-xmodule"
cp "tests/compiler/errors/$name.nx" script.nx
xm_warn=$(NYX_BORROW=warn timeout 20 ./nyx_bootstrap 2>&1); xm_warn_rc=$?
if [ "$xm_warn_rc" -eq 0 ] && echo "$xm_warn" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-warn-hint"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-warn-hint"; printf "    exit code: %d (esperado 0, con hint NYX1223)\n" "$xm_warn_rc"
  echo "$xm_warn" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-warn-hint")
fi
xm_err=$(NYX_BORROW=error timeout 20 ./nyx_bootstrap 2>&1); xm_err_rc=$?
if [ "$xm_err_rc" -eq 0 ] && ! echo "$xm_err" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-error-suppressed"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-error-suppressed"; printf "    exit code: %d (esperado 0, NYX1223 suprimido)\n" "$xm_err_rc"
  echo "$xm_err" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-error-suppressed")
fi
xm_off=$(./nyx_bootstrap 2>&1); xm_off_rc=$?
if [ "$xm_off_rc" -eq 0 ] && ! echo "$xm_off" | grep -qF "NYX1223"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$xm_off_rc"
  echo "$xm_off" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll

name="test-borrow-interproc-xmodule-neg"
cp "tests/compiler/errors/$name.nx" script.nx
xmn_out=$(NYX_BORROW=warn timeout 20 ./nyx_bootstrap 2>&1); xmn_rc=$?
if [ "$xmn_rc" -eq 0 ] && ! echo "$xmn_out" | grep -qE "NYX1222|NYX1223"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1222/1223 — no FP)\n" "$xmn_rc"
  echo "$xmn_out" | grep -E "NYX1222|NYX1223" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# Borrow checker (Track 4): use-after-move de un tipo #[affine] → NYX1230.
# SOUND/gating: un tipo afín es single-owner por contrato (opt-in) →
# usarlo tras moverlo es un bug real (semántica Rust). Gatea en
# NYX_BORROW=error (a diferencia del move-lint GC NYX1201, no-gating).
name="test-borrow-affine-move"
cp "tests/compiler/errors/$name.nx" script.nx
# --- error: NYX1230 gatea → exit != 0 ---
aff_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
aff_rc=$?
if [ "$aff_rc" -ne 0 ] && echo "$aff_output" | grep -qF "NYX1230: use of moved value 'a'"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado != 0, NYX1230 gating)\n" "$aff_rc"
  echo "$aff_output" | grep -F "NYX123" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
# Modo OFF: compila+corre sin emitir (make test no se contamina).
aff_off_output=$(./nyx_bootstrap 2>&1)
aff_off_rc=$?
if [ "$aff_off_rc" -eq 0 ] && ! echo "$aff_off_output" | grep -qF "NYX1230"; then
  printf "  ✓ %s\n" "$name-off-silent"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"
  printf "    exit code: %d (esperado 0, sin diag)\n" "$aff_off_rc"
  echo "$aff_off_output" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll
# inc 4 pre-2: use-after-move de un #[affine] GENÉRICO (Boxx<int>) → NYX1230 (strip de
# generic-args en tm_type_is_affine). POS gatea; OFF silencioso (compila+corre con turbofish);
# NEG (sin mover) no marca.
name="test-borrow-affine-generic"
cp "tests/compiler/errors/$name.nx" script.nx
afg_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); afg_rc=$?
if [ "$afg_rc" -ne 0 ] && echo "$afg_output" | grep -qF "NYX1230: use of moved value 'a'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1230 gating)\n" "$afg_rc"
  echo "$afg_output" | grep -F "NYX123" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
afg_off=$(./nyx_bootstrap 2>&1); afg_off_rc=$?
if [ "$afg_off_rc" -eq 0 ] && ! echo "$afg_off" | grep -qF "NYX1230"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$afg_off_rc"
  echo "$afg_off" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll
name="test-borrow-affine-generic-ok"
cp "tests/compiler/errors/$name.nx" script.nx
afgok=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); afgok_rc=$?
if [ "$afgok_rc" -eq 0 ] && ! echo "$afgok" | grep -qF "NYX1230"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1230)\n" "$afgok_rc"
  echo "$afgok" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll
# inc 4 Etapa 3: MoveOnly<T> afín REAL desde std/owned (enforcement compile-time).
# move_consume(m) consume by-value → un segundo move_consume(m) = use-after-move → NYX1230.
# Reemplaza el enforcement RUNTIME (flag en Array) del viejo std/owned.
name="test-borrow-moveonly"
cp "tests/compiler/errors/$name.nx" script.nx
mo_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); mo_rc=$?
if [ "$mo_rc" -ne 0 ] && echo "$mo_output" | grep -qF "NYX1230: use of moved value 'm'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1230 gating)\n" "$mo_rc"
  echo "$mo_output" | grep -F "NYX123" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
# Modo OFF: compila sin emitir (make test no se contamina).
mo_off=$(./nyx_bootstrap 2>&1); mo_off_rc=$?
if [ "$mo_off_rc" -eq 0 ] && ! echo "$mo_off" | grep -qF "NYX1230"; then
  printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$mo_off_rc"
  echo "$mo_off" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
fi
rm -f script.ll
# inc 4 Etapa 3 NEG: MoveOnly consumido UNA vez → NO gatea NYX1230.
name="test-borrow-moveonly-ok"
cp "tests/compiler/errors/$name.nx" script.nx
mook=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); mook_rc=$?
if [ "$mook_rc" -eq 0 ] && ! echo "$mook" | grep -qF "NYX1230"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1230)\n" "$mook_rc"
  echo "$mook" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll
# --- caso CORRECTO: un struct NORMAL (no afín) reusado NO dispara NYX1230 ---
name="test-borrow-affine-ok"
cp "tests/compiler/errors/$name.nx" script.nx
affok_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
affok_rc=$?
if [ "$affok_rc" -eq 0 ] && ! echo "$affok_output" | grep -qF "NYX1230"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado 0, struct normal no es afín)\n" "$affok_rc"
  echo "$affok_output" | grep -F "NYX1230" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll
# --- FP fix (2026-07-14): drop que libera DOS campos puntero DISTINTOS de self
#     (free(self.a)+free(self.b)) NO es double-free → NO debe disparar NYX1221.
#     place_path field-sensitive; antes place_of colapsaba a "self" (rompía Rc<T>).
name="test-borrow-drop-two-fields-ok"
cp "tests/compiler/errors/$name.nx" script.nx
d2f_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1)
d2f_rc=$?
if [ "$d2f_rc" -eq 0 ] && ! echo "$d2f_output" | grep -qF "NYX1221"; then
  printf "  ✓ %s\n" "$name"
  PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"
  printf "    exit code: %d (esperado 0, dos campos distintos no es double-free)\n" "$d2f_rc"
  echo "$d2f_output" | grep -F "NYX1221" | sed 's/^/      /'
  FAIL=$((FAIL + 1))
  FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# Borrow checker (Track 3 inc 1): dangling refs vía return (NYX1222).
# Escape de &<local del frame> por return → gate en error + off-silent. NEG:
# exclusiones (identifier sin origen, field_access, deref) → NO gatean. Flow-merge:
# branch-oneside (dangling en una sola rama, sigue gateando) es POS; branch-clear-ok
# (reasignado a externo en AMBAS ramas → ya no marca, regresión del FP) es NEG.
# Track 3 inc 2: además de return directo, NYX1222 marca (A) return de un agregado
# (array/struct_init) con un ref frame-bound adentro (agg-return, agg-struct) y (B)
# store de &local a un destino que sobrevive — global (global-store) o a través de
# un puntero/ref parámetro (outparam). El mensaje de store difiere del de return
# ("...escapes into a longer-lived location" vs "...escapes the function that owns
# it") pero ambos arrancan con "reference to local '<x>' escapes" — por eso el grep
# de esta sección usa ese substring común, no el sufijo completo.
for pos in "test-borrow-dangling-return:x" "test-borrow-dangling-propagate:x" "test-borrow-dangling-reassign:y" "test-borrow-dangling-branch-oneside:x" "test-borrow-dangling-while:x" "test-borrow-dangling-agg-return:x" "test-borrow-dangling-agg-struct:x" "test-borrow-dangling-global-store:x" "test-borrow-dangling-outparam:v" "test-borrow-taint-index-return:x" "test-borrow-taint-field-return:x"; do
  name="${pos%%:*}"; origin="${pos##*:}"
  cp "tests/compiler/errors/$name.nx" script.nx
  output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); rc=$?
  if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "reference to local '$origin' escapes"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1222 '%s')\n" "$rc" "$origin"
    echo "$output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  off_output=$(./nyx_bootstrap 2>&1); off_rc=$?
  if [ "$off_rc" -eq 0 ] && ! echo "$off_output" | grep -qF "reference to local"; then
    printf "  ✓ %s\n" "$name-off-silent"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name-off-silent"; printf "    exit code: %d (esperado 0, sin diag)\n" "$off_rc"
    echo "$off_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name-off-silent")
  fi
  rm -f script.ll
done
for name in test-borrow-dangling-neg-passthrough test-borrow-dangling-neg-self test-borrow-dangling-neg-deref test-borrow-dangling-branch-clear-ok test-borrow-dangling-match-clear-ok test-borrow-dangling-agg-neg test-borrow-dangling-local-struct-neg test-borrow-dangling-forvar-neg test-borrow-dangling-match-bind-neg test-borrow-dangling-self-store-neg test-borrow-taint-local-noescape; do
  cp "tests/compiler/errors/$name.nx" script.nx
  neg_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); neg_rc=$?
  if [ "$neg_rc" -eq 0 ] && ! echo "$neg_output" | grep -qF "reference to local"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, sin NYX1222 — exclusión)\n" "$neg_rc"
    echo "$neg_output" | grep -F "NYX1222" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  rm -f script.ll
done
# Flow-merge guard: free + revive condicional + re-free → NYX1221 (double-free) DEBE seguir
# marcando (el path fall-through deja p liberado). Blinda contra reintroducir el min-join de
# moved/freed. Gate-only (correr el programa haría un double-free real → sin off-silent).
name="test-borrow-freed-revive-branch"
cp "tests/compiler/errors/$name.nx" script.nx
frev_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); frev_rc=$?
if [ "$frev_rc" -ne 0 ] && echo "$frev_output" | grep -qF "double free of 'p'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1221 — no regresión del min-join)\n" "$frev_rc"
  echo "$frev_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll
# Free-safety dentro de un método impl: blinda contra el gotcha methods[mi] inline (el
# cuerpo del método no se walkeaba → double-free perdido). Gate-only (double-free real en runtime).
name="test-borrow-impl-double-free"
cp "tests/compiler/errors/$name.nx" script.nx
idf_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); idf_rc=$?
if [ "$idf_rc" -ne 0 ] && echo "$idf_output" | grep -qF "double free of 'p'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1221 dentro de impl method)\n" "$idf_rc"
  echo "$idf_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

echo ""
echo "  $PASS passed, $FAIL failed"

if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
