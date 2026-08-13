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
  # A8 (friction-browser): métodos builtin de String rechazan args de más —
  # antes pasaban mudos (startsWith(p,99) ignoraba el 99, trim(42)/length(7)
  # ídem). indexOf sigue aceptando 1 o 2 args (overload legítimo, sin tocar).
  "tests/compiler/errors/test-a8-string-arity-startswith.nx|'startsWith' accepts at most 1 argument(s), got 2"
  "tests/compiler/errors/test-a8-string-arity-trim.nx|'trim' accepts at most 0 argument(s), got 1"
  "tests/compiler/errors/test-a8-string-arity-length.nx|'length' accepts at most 0 argument(s), got 1"
  # SP4 Task 3: un import NO puede apagar NYX1001 en todo el archivo. La rama
  # `import` (llaves) ni siquiera escaneaba el módulo, y la forma `import "m"`
  # dejaba g_has_imports en true → todo nombre de tipo desconocido degradaba a
  # wildcard silencioso (o sea: NYX1001 muerto en casi todo programa real).
  "tests/compiler/errors/test-braced-import-type-typo.nx|unknown type 'Poimt' (did you mean 'Point'?)"
  "tests/compiler/errors/test-module-import-type-typo.nx|unknown type 'Poimt' (did you mean 'Point'?)"
  # SP4 Task 3b, control positivo: registrar los `pub struct` como tipo NO
  # puede ablandar NYX1001 — un typo real sigue saliendo, con did-you-mean.
  "tests/compiler/errors/test-pub-struct-type-typo.nx|unknown type 'Tagg' (did you mean 'Tag'?)"
  # Task 1 (campaña "Primer intento verde", Fase 2): campo inexistente en
  # field_access/field_assign (lectura/escritura) compilaba mudo y evaluaba a
  # 0 — ya cablea al mismo NYX1017 que struct_init, con did-you-mean.
  "tests/compiler/errors/test-field-access-typo.nx|field 'nombree' does not exist in struct 'Usuario' (did you mean 'nombre'?)"
  "tests/compiler/errors/test-field-access-typo-fncall.nx|field 'nombree' does not exist in struct 'Usuario' (did you mean 'nombre'?)"
  "tests/compiler/errors/test-field-assign-typo.nx|field 'nombree' does not exist in struct 'Usuario' (did you mean 'nombre'?)"
  # Task 1 ronda 2: mismo NYX1017 pero sobre `self.<typo>` DENTRO de un
  # método de impl — validate_impl/validate_impl_trait no bindeaban el
  # tipo real de self antes de esta ronda (ty_of_expr(self) daba
  # TyUnknown/TyRef-basura, el guard de check_field_exists correctamente
  # se abstenía). Cubre lectura (&self) y escritura (&mut self).
  "tests/compiler/errors/test-self-field-access-typo.nx|field 'nombree' does not exist in struct 'Usuario' (did you mean 'nombre'?)"
  "tests/compiler/errors/test-self-field-assign-typo.nx|field 'nombree' does not exist in struct 'Usuario' (did you mean 'nombre'?)"
  # Task 2 (campaña "cerrar-silently-wrong"): NYX1022 — el método debe EXISTIR
  # para el kind del receptor. Antes de este chequeo m.length() sobre un Map
  # colaba a la rama de Array en codegen y emitía nyx_array_length sobre un
  # puntero que no es un array (silencioso, sin ningún catch-all que se entere).
  "tests/compiler/errors/test-nyx1022-map-length.nx|has no method 'length'"
  "tests/compiler/errors/test-nyx1022-string-push.nx|has no method 'push'"
  # B2 (fricción ERP 2026-08-10): la familia datetime_* con tipos reales en
  # builtin_fn_ret — el SPEC viejo decía `let now: int = datetime_now()` y el
  # checker callaba → IR inválido. Ahora es NYX1003.
  "tests/compiler/errors/test-datetime-now-int-annotation.nx|type mismatch in 'now': expected int, got String"
  # E2 (errores tipados): el camino Err de `?` hace `ret` del enum tal cual,
  # así que la fn que lo usa DEBE devolver Result. Sin este chequeo el error
  # lo tiraba clang sobre script.ll ("value doesn't match function result
  # type 'i64'"), sin la línea del usuario ni explicación.
  "tests/compiler/errors/test-tryop-outside-result-fn.nx|NYX1023"
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
  "tests/compiler/errors/test-a8-string-arity-startswith.nx|NYX1006|-|+"
  "tests/compiler/errors/test-field-access-typo.nx|NYX1017|nombre|+"
  "tests/compiler/errors/test-module-import-type-typo.nx|NYX1001|Point|11"
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
# Lex error tests (text) — SP4 Task 2: el lexer ahora cuenta sus errores
# (string/comentario-de-bloque/raw-string/multilínea sin cerrar) y el
# driver gatea ANTES del parse (un lexer roto hace que el AST no
# signifique nada — antes esto cascadeaba en decenas de NYX0107 de parse
# hasta "too many parse errors, aborting", o en el peor caso emitía
# binario con la fuente truncada silenciosamente).
# Each test: "<file> | <expected output fragment>"
# These tests must: exit != 0, contain the fragment, and show
# "lex     FAILED" in the output.
# ==============================================================
LEX_TESTS=(
  "tests/compiler/errors/test-lex-unterminated-string.nx|Error: String sin cerrar"
)

for entry in "${LEX_TESTS[@]}"; do
  file="${entry%%|*}"
  expected="${entry#*|}"
  name=$(basename "$file" .nx)

  cp "$file" script.nx
  output=$(timeout 15 ./nyx_bootstrap 2>&1)
  rc=$?

  if [ "$rc" -ne 0 ] && echo "$output" | grep -qF "$expected" && echo "$output" | grep -q "lex     FAILED"; then
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
  # T14: fallback del dispatcher de atributos ahora es un NYX0105 contado
  # (antes silencioso — el nodo desaparecía del AST sin error).
  "tests/compiler/errors/test-parse-attr-unexpected-item.nx|#[...] is only supported before fn, struct, enum, or pub fn/struct/enum"
  # Campaña "Primer intento verde" Fase 2 Task 3: catch-all de parse_primary
  # ahora es un NYX0107 contado (antes silencioso — print sin p_diag).
  "tests/compiler/errors/test-parse-primary-unexpected.nx|unexpected token in expression: ')' (RIGHT_PAREN)"
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
  "tests/compiler/errors/test-parse-attr-unexpected-item.nx|NYX0105|+"
  "tests/compiler/errors/test-parse-primary-unexpected.nx|NYX0107|+"
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
  # Task 10 (Fase 4): did-you-mean real (Levenshtein contra std/) en vez
  # del hint fijo "src/<path>" — "jso" sugiere "std/json" (NYX0301).
  "tests/compiler/errors/test-import-not-found-suggests-std.nx|Did you mean \"std/json\""
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
  # E3 (2026-07-22): turbofish en method calls — mismatch con el receiver
  # monomorfizado y turbofish sobre método no genérico → error, no silencio.
  "tests/compiler/errors/test-method-turbofish-mismatch.nx|do not match receiver"
  "tests/compiler/errors/test-method-turbofish-nongeneric.nx|only accepted on GENERIC impl methods"
  # E3 follow-up (2026-07-22): método con type params PROPIOS llamado SIN
  # turbofish → error accionable (antes: SEGFAULT del compilador).
  "tests/compiler/errors/test-method-generic-needs-turbofish.nx|call it with turbofish"
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
# Driver import-resolution: NYX_DIAG=json (Task 10, Fase 4). El resolver
# no tiene registry de diagnósticos (no es semantic.nx) — construye la
# línea NDJSON directo; se verifica el esquema completo acá en vez de
# reusar el helper Python de JSON_TESTS/PARSE_JSON_TESTS (que asumen
# phase parse/semantic).
# ==============================================================
name="json:test-import-not-found-suggests-std"
cp "tests/compiler/errors/test-import-not-found-suggests-std.nx" script.nx
json_line=$(NYX_DIAG=json timeout 15 ./nyx_bootstrap 2>&1 | grep -m1 "^{")
verdict=$(echo "$json_line" | python3 -c "
import sys, json
try:
    d = json.loads(sys.stdin.readline())
except Exception as e:
    print('invalid JSON:', e); sys.exit(0)
if d.get('code') != 'NYX0301':
    print('code mismatch: got', d.get('code')); sys.exit(0)
if d.get('severity') != 'error' or d.get('phase') != 'resolve':
    print('severity/phase mismatch: got', d.get('severity'), d.get('phase')); sys.exit(0)
if not d.get('message'):
    print('empty message'); sys.exit(0)
if d.get('suggestion') != 'std/json':
    print('suggestion mismatch: got', d.get('suggestion')); sys.exit(0)
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
for pos in "test-borrow-dangling-return:x" "test-borrow-dangling-propagate:x" "test-borrow-dangling-reassign:y" "test-borrow-dangling-branch-oneside:x" "test-borrow-dangling-while:x" "test-borrow-dangling-agg-return:x" "test-borrow-dangling-agg-struct:x" "test-borrow-dangling-global-store:x" "test-borrow-dangling-outparam:v" "test-borrow-taint-index-return:x" "test-borrow-taint-field-return:x" "test-borrow-mutself-store:x" "test-borrow-derefassign-outparam:x"; do
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
for name in test-borrow-dangling-neg-passthrough test-borrow-dangling-neg-self test-borrow-dangling-neg-deref test-borrow-dangling-branch-clear-ok test-borrow-dangling-match-clear-ok test-borrow-dangling-agg-neg test-borrow-dangling-local-struct-neg test-borrow-dangling-forvar-neg test-borrow-dangling-match-bind-neg test-borrow-dangling-self-store-neg test-borrow-taint-local-noescape test-borrow-derefassign-local-neg test-borrow-lambda-capture-neg; do
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
# D3 (2026-07-22): while_let ganó handler en bc_walk — un double-free en su body
# marca NYX1221 (antes el body no se checkeaba = miss). Gate-only.
# E1 (2026-07-22): warning NO-fatal de semantic — `"s" + arr[i]` con Array PELADO
# avisa (slot i64 sin tag, codegen adivina); Array<String> tipado NO avisa; el
# programa COMPILA igual (exit 0 del check semantico).
name="test-warn-bare-array-concat"
cp "tests/compiler/errors/$name.nx" script.nx
warn_output=$(timeout 15 ./nyx_bootstrap 2>&1); warn_rc=$?
warn_n=$(echo "$warn_output" | grep -c "untyped Array")
if [ "$warn_rc" -eq 0 ] && [ "$warn_n" -eq 1 ]; then
  printf "  \u2713 %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  \u2717 %s\n" "$name"; printf "    exit: %d warns: %s (esperado 0 / 1)\n" "$warn_rc" "$warn_n"
  echo "$warn_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll
name="test-borrow-whilelet-free"
cp "tests/compiler/errors/$name.nx" script.nx
wlf_output=$(NYX_BORROW=error timeout 15 ./nyx_bootstrap 2>&1); wlf_rc=$?
if [ "$wlf_rc" -ne 0 ] && echo "$wlf_output" | grep -qF "double free of 'p'"; then
  printf "  \u2713 %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  \u2717 %s\n" "$name"; printf "    exit code: %d (esperado != 0, NYX1221 en body de while_let)\n" "$wlf_rc"
  echo "$wlf_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll
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

# ==============================================================
# Driver crudo (nyx_bootstrap): argv desconocido y fuente ausente/vacía
# abortan con error bilingüe + exit != 0 (AI-first — antes "✓" silencioso
# con 0 funciones generadas). Ver TASKS.md "bin/nyx (driver crudo) IGNORA
# argv". Sin NYX_SRC seteado y sin script.nx presente en el cwd.
# ==============================================================
name="test-driver-unknown-arg"
rm -f script.nx script.ll
argv_output=$(env -u NYX_SRC timeout 15 ./nyx_bootstrap build 2>&1); argv_rc=$?
if [ "$argv_rc" -ne 0 ] && echo "$argv_output" | grep -qF "unknown argument 'build'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0)\n" "$argv_rc"
  echo "$argv_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="test-driver-missing-source"
rm -f script.nx script.ll
missing_output=$(env -u NYX_SRC timeout 15 ./nyx_bootstrap 2>&1); missing_rc=$?
if [ "$missing_rc" -ne 0 ] && echo "$missing_output" | grep -qF "does not exist (or is empty)"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0)\n" "$missing_rc"
  echo "$missing_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.nx script.ll

# ==============================================================
# `nyx run <archivo.nx>` (wrapper scripts/nyx) — B1 friction-browser.
# El wrapper compila el archivo suelto y ANTES tragaba TODO el output del
# driver con `>/dev/null 2>&1`: un error de compilación daba una sola línea
# muda ("compilation failed") y CERO NDJSON bajo NYX_DIAG=json. Ahora los
# diagnósticos fluyen (texto Y json), con la línea de error como cierre y
# exit != 0. Se invoca el wrapper REAL; NYX_HOME se auto-resuelve al repo
# (encuentra ./nyx_bootstrap). El caso que falla corta en el driver (check
# FAILED) antes de clang → rápido, no linkea.
# ==============================================================
WRAP="scripts/nyx"
B1_FIXTURE="$(pwd)/tests/compiler/errors/fixtures/run-wrapper/broken.nx"

name="run-wrapper-b1-text"
b1_output=$(bash "$WRAP" run "$B1_FIXTURE" 2>&1); b1_rc=$?
if [ "$b1_rc" -ne 0 ] && echo "$b1_output" | grep -qF "type mismatch in 'x': expected int, got String"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, con el diagnóstico de texto)\n" "$b1_rc"
  echo "$b1_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="run-wrapper-b1-json"
b1j_line=$(NYX_DIAG=json bash "$WRAP" run "$B1_FIXTURE" 2>&1 | grep -m1 '^{')
if echo "$b1j_line" | grep -qF '"code":"NYX1003"'; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    esperado: una línea NDJSON con \"code\":\"NYX1003\"\n"
  printf "    got: %s\n" "$b1j_line"; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# ==============================================================
# `nyx run src/main.nx` DENTRO de un proyecto (nyx.toml) — B2 friction-browser.
# El wrapper deduce el proyecto subiendo hasta nyx.toml (como `nyx build`) y
# exporta NYX_PROJECT_DIR, así `import "src/..."` resuelve SIN que el usuario
# ponga NYX_PROJECT_DIR=$PWD a mano. Compila y linkea de verdad (clang) →
# el binario corre y emite la salida del programa. Ruta absoluta al wrapper
# porque el test hace `cd` al fixture. Se salta si no hay clang.
# ==============================================================
if command -v clang >/dev/null 2>&1; then
  REPO_ROOT="$(pwd)"
  B2_PROJ="$REPO_ROOT/tests/compiler/errors/fixtures/run-wrapper-project"
  name="run-wrapper-b2-project"
  b2_output=$(cd "$B2_PROJ" && env -u NYX_PROJECT_DIR bash "$REPO_ROOT/scripts/nyx" run src/main.nx 2>&1); b2_rc=$?
  if [ "$b2_rc" -eq 0 ] && echo "$b2_output" | grep -qF "Hola, mundo"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0, con 'Hola, mundo' — import src/greet resuelto sin NYX_PROJECT_DIR)\n" "$b2_rc"
    echo "$b2_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
else
  printf "  ⚠ run-wrapper-b2-project SKIP (clang no disponible)\n"
fi

# ==============================================================
# `nyx run` en modo PROYECTO reenvía los args al binario — P1 friction-portscan.
# Antes el PM ejecutaba `./<name>` pelado: get_args() solo traía argv[0] ni con
# `--`, aunque el binario invocado a mano SÍ los recibía. Se verifica también el
# citado: un arg con ESPACIOS llega como UNO solo y uno con metacaracteres de
# shell (`;`, `$(...)`) llega LITERAL (exec_code va por system(), así que sin
# comillas el shell lo partiría o lo ejecutaría). Se salta si no hay clang.
# ==============================================================
if command -v clang >/dev/null 2>&1; then
  REPO_ROOT="$(pwd)"
  ARGS_PROJ="$REPO_ROOT/tests/compiler/errors/fixtures/run-args-project"
  name="run-wrapper-args-forward"
  args_output=$(cd "$ARGS_PROJ" && env -u NYX_PROJECT_DIR bash "$REPO_ROOT/scripts/nyx" run alfa "dos palabras" 'x;echo PWNED' 2>&1); args_rc=$?
  if [ "$args_rc" -eq 0 ] \
     && echo "$args_output" | grep -qF "ARG[1]=alfa" \
     && echo "$args_output" | grep -qF "ARG[2]=dos palabras" \
     && echo "$args_output" | grep -qF "ARG[3]=x;echo PWNED" \
     && echo "$args_output" | grep -qF "COUNT=3" \
     && ! echo "$args_output" | grep -qx "PWNED"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0 con ARG[1..3] y COUNT=3; el arg con ';' debe llegar literal, no ejecutarse)\n" "$args_rc"
    echo "$args_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi

  # `--` separa flags del PM de los args del programa: lo posterior va literal.
  name="run-wrapper-args-dashdash"
  dd_output=$(cd "$ARGS_PROJ" && env -u NYX_PROJECT_DIR bash "$REPO_ROOT/scripts/nyx" run -- --release 2>&1); dd_rc=$?
  if [ "$dd_rc" -eq 0 ] && echo "$dd_output" | grep -qF "ARG[1]=--release" && echo "$dd_output" | grep -qF "COUNT=1"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado 0 con ARG[1]=--release y COUNT=1 — tras `--` los flags del PM son args del programa)\n" "$dd_rc"
    echo "$dd_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
else
  printf "  ⚠ run-wrapper-args SKIP (clang no disponible)\n"
fi

# ==============================================================
# Catch-all de codegen_method_call: un método no reconocido sobre un receiver
# ya NO compila devolviendo 0 en silencio — error accionable (2026-07-26).
# Era la causa estructural de la familia silently-wrong (f(x).length() sobre
# Array, obj.campo.remove() no-op, to_string sobre primitivos). Medido antes de
# activarlo: 0 rutas legítimas del corpus dependían del fallback.
#
# Task 2 (campaña "cerrar-silently-wrong"), ronda de review: desde que NYX1022
# se activó en semantic, este fixture (receiver TyArray, kind CATALOGADO) ya
# NUNCA llega al catch-all de codegen — ty_of_expr(tres()) resuelve TyArray
# desde el tipo de retorno declarado, así que NYX1022 lo caza SIEMPRE en
# 'check', determinista, con "type Array has no method
# 'metodo_que_no_existe'". La aserción queda PINNEADA a ese único mensaje
# (no "not available") a propósito: si algún día NYX1022 deja de dispararse
# para este caso y cae de nuevo al catch-all silencioso de codegen, esta
# aserción tiene que romperse para que alguien se entere — aceptar ambos
# mensajes ocultaría exactamente esa regresión.
# ==============================================================
name="method-not-available-errors"
mna_out=$(NYX_SRC=tests/compiler/errors/fixtures/method-not-available.nx ./nyx_bootstrap 2>&1); mna_rc=$?
if [ "$mna_rc" -ne 0 ] \
   && echo "$mna_out" | grep -qF "metodo_que_no_existe" \
   && echo "$mna_out" | grep -qiE "has no method|no tiene el método"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, nombrando el método, con 'has no method')\n" "$mna_rc"
  echo "$mna_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# ==============================================================
# Task 2, ronda de review: la aserción de arriba dejó SIN cobertura al
# catch-all real de codegen_method_call (codegen.nx ~9377) — ningún fixture
# restante lo alcanzaba. Este SÍ debe llegar: receiver TyStruct (kind NO
# catalogado por methods_for_kind — devuelve [] por diseño, tipado gradual),
# así que NYX1022 nunca objeta y el método inexistente cae hasta la fase
# 'gen', donde el catch-all lo caza con "not available". Verificado a mano
# antes de fijar esta aserción (no se fuerza a ciegas).
# ==============================================================
name="method-not-available-catchall-struct"
mnas_out=$(NYX_SRC=tests/compiler/errors/fixtures/method-not-available-struct.nx ./nyx_bootstrap 2>&1); mnas_rc=$?
if [ "$mnas_rc" -ne 0 ] \
   && echo "$mnas_out" | grep -qF "metodo_que_no_existe" \
   && echo "$mnas_out" | grep -qiE "not available|no está disponible"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0, nombrando el método, con 'not available')\n" "$mnas_rc"
  echo "$mnas_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# ==============================================================
# Fase 3, Task 4: tres catch-alls MUDOS de codegen que devolvían "i64 0" en
# silencio ahora abortan con NYX20xx (mismo patrón v0.22.14 que el bloque
# de arriba). Los tres pasan `check OK` (semantic no objeta nada) y fallan
# recién en la fase de generación de código — por eso NO chequean
# "check   FAILED" como el bloque TESTS[] de arriba.
# ==============================================================

# 4a: catch-all maestro de codegen_expr — `let r = 0..5` fuera de un for.
name="codegen-range-standalone"
crs_out=$(NYX_SRC=tests/compiler/errors/fixtures/codegen-range-standalone.nx ./nyx_bootstrap 2>&1); crs_rc=$?
if [ "$crs_rc" -ne 0 ] && echo "$crs_out" | grep -qF "NYX2001"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2001)\n" "$crs_rc"
  echo "$crs_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# 4b: método no reconocido sobre un global registrado SOLO en const_values
# (const literal a nivel de archivo) — rama separada del catch-all de 4a/8866.
name="codegen-method-on-const-global"
cmg_out=$(NYX_SRC=tests/compiler/errors/fixtures/codegen-method-on-const-global.nx ./nyx_bootstrap 2>&1); cmg_rc=$?
if [ "$cmg_rc" -ne 0 ] && echo "$cmg_out" | grep -qF "NYX2002" && echo "$cmg_out" | grep -qF "metodo_que_no_existe"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2002 nombrando el método)\n" "$cmg_rc"
  echo "$cmg_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# 4b-bis (Task 3, cerrar-silently-wrong): NYX2007 — backstop de codegen para
# un método despachado a la rama de otro tipo. Corre con NYX_SKIP_SEMANTIC=1
# A PROPÓSITO: con semantic activo esto lo caza NYX1022, y el punto del test es
# justamente el camino donde semantic NO corre (run_single_test.sh compila así).
name="codegen-nyx2007-field-map-push"
n7_out=$(NYX_SKIP_SEMANTIC=1 NYX_SRC=tests/compiler/errors/test-nyx2007-field-map-push.nx ./nyx_bootstrap 2>&1); n7_rc=$?
if [ "$n7_rc" -ne 0 ] && echo "$n7_out" | grep -qF "NYX2007" && echo "$n7_out" | grep -qF "'push'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'push')\n" "$n7_rc"
  echo "$n7_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# NYX2007 en el MISMO bloque field_access, ronda 2: `length` sobre un campo Map
# (era idéntico al bug de `push` — todo el bloque despachaba por nombre).
name="codegen-nyx2007-field-map-length"
n7l_out=$(NYX_SKIP_SEMANTIC=1 NYX_SRC=tests/compiler/errors/test-nyx2007-field-map-length.nx ./nyx_bootstrap 2>&1); n7l_rc=$?
if [ "$n7l_rc" -ne 0 ] && echo "$n7l_out" | grep -qF "NYX2007" && echo "$n7l_out" | grep -qF "'length'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'length')\n" "$n7l_rc"
  echo "$n7l_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# NYX2007 anti-regresión: `contains` sobre un campo int. La forma conjunta
# (`and fa_type == "i8*"`) dejaba escapar el caso al camino genérico, que hace
# `inttoptr i64 → %nyx_string*` incondicional: convertía un error duro de clang
# en IR válido que segfaultea. `contains` lleva la forma de `length`.
name="codegen-nyx2007-field-int-contains"
n7i_out=$(NYX_SKIP_SEMANTIC=1 NYX_SRC=tests/compiler/errors/test-nyx2007-field-int-contains.nx ./nyx_bootstrap 2>&1); n7i_rc=$?
if [ "$n7i_rc" -ne 0 ] && echo "$n7i_out" | grep -qF "NYX2007" && echo "$n7i_out" | grep -qF "'contains'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'contains')\n" "$n7i_rc"
  echo "$n7i_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# NYX2007 sitio S3: `length` sobre una variable local Map (la rama que caía a
# nyx_array_length sin mirar var_vtype). También con NYX_SKIP_SEMANTIC=1: con
# semantic activo esto es NYX1022, y el backstop cubre justo el caso sin él.
name="codegen-nyx2007-map-local-length"
n7m_out=$(NYX_SKIP_SEMANTIC=1 NYX_SRC=tests/compiler/errors/test-nyx2007-map-local-length.nx ./nyx_bootstrap 2>&1); n7m_rc=$?
if [ "$n7m_rc" -ne 0 ] && echo "$n7m_out" | grep -qF "NYX2007" && echo "$n7m_out" | grep -qF "'length'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'length')\n" "$n7m_rc"
  echo "$n7m_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# NYX2007 sitio S1: un método del trío de Map sobre un const primitivo (global
# registrado SOLO en const_values). Sin NYX_SKIP_SEMANTIC: semantic lo deja
# pasar, así que este camino es el único que lo caza. Complementa al test de
# NYX2002 de arriba, que cubre los métodos FUERA del trío sobre el mismo global.
name="codegen-nyx2007-const-global-map-method"
n7c_out=$(NYX_SRC=tests/compiler/errors/test-nyx2007-const-global-map-method.nx ./nyx_bootstrap 2>&1); n7c_rc=$?
if [ "$n7c_rc" -ne 0 ] && echo "$n7c_out" | grep -qF "NYX2007" && echo "$n7c_out" | grep -qF "'get'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'get')\n" "$n7c_rc"
  echo "$n7c_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# NYX2007 en el bloque de acceso ANIDADO de codegen_field_access: `.length`
# como PROPIEDAD sobre un campo Map. NYX1022 de semantic mira llamadas a
# métodos, así que la forma sin paréntesis se le escapa; codegen devolvía
# `i64 0` con un print mudo por stdout y exit 0. Sin NYX_SKIP_SEMANTIC a
# propósito: lo importante es justamente que semantic lo deja pasar.
name="codegen-nyx2007-nested-map-length-property"
n7n_out=$(NYX_SRC=tests/compiler/errors/test-nyx2007-nested-map-length-property.nx ./nyx_bootstrap 2>&1); n7n_rc=$?
if [ "$n7n_rc" -ne 0 ] && echo "$n7n_out" | grep -qF "NYX2007" && echo "$n7n_out" | grep -qF "'length'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'length')\n" "$n7n_rc"
  echo "$n7n_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# El formato humano de semantic lleva el código NYX (v0.24.8): nyx_check
# emitía "error in 'main': ..." SIN código — la audiencia AI-first matchea
# códigos estables, no prosa (lo destapó el scorer del banco contándolos
# como fallos mudos). NYX0000 (sin código) se omite a propósito.
# Struct de nombre corto (≤2 chars) con bound insatisfecho → NYX2004
# (antes: bypasaba el chequeo entero e IR inválido con exit 0 — ficha Q).
name="codegen-nyx2004-short-struct-bound"
ssb_out=$(NYX_SRC=tests/compiler/errors/test-nyx2004-short-struct-bound.nx ./nyx_bootstrap 2>&1); ssb_rc=$?
if [ "$ssb_rc" -ne 0 ] && echo "$ssb_out" | grep -qF "NYX2004" && echo "$ssb_out" | grep -qF "'Other'"; then
  printf "  ✓ %s
" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s
" "$name"; printf "    exit: %d (esperado != 0 con NYX2004 nombrando Other)
" "$ssb_rc"
  echo "$ssb_out" | tail -3 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="check-diag-carries-code"
if [ ! -x ./nyx_check ]; then
  printf "  ⚠️  nyx_check no existe — corré 'make build-check' (se salta este check)\n"
else
  cdc_src=$(mktemp /tmp/cdc-XXXX.nx)
  printf 'fn main() -> int {\n    prinln("x")\n    return 0\n}\n' > "$cdc_src"
  cdc_out=$(NYX_SRC="$cdc_src" ./nyx_check 2>&1)
  rm -f "$cdc_src"
  if echo "$cdc_out" | grep -q "error \[NYX1" && echo "$cdc_out" | grep -q "DIAG:ERROR:.*\[NYX1"; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s (el formato humano de nyx_check no lleva código NYX)\n" "$name"
    echo "$cdc_out" | grep -E "✗|DIAG" | head -3 | sed 's/^/      /'
    FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
fi

name="stdin-eof-builtin"
# stdin_eof() (fricción MCP-stdio 2026-08-06): señal INEQUÍVOCA de EOF de
# stdin — el loop del reporte termina limpio con pipe real (antes: infinito).
seb_src=$(mktemp /tmp/seb-XXXX.nx)
printf 'fn main() -> int {\n    var n = 0\n    while true {\n        let l: String = read_line()\n        if stdin_eof() {\n            print("EOF:" + int_to_string(n))\n            return 0\n        }\n        n = n + 1\n    }\n    return 0\n}\n' > "$seb_src"
seb_out=$(printf 'x\ny\nz\n' | timeout 60 bash "$(pwd)/scripts/nyx" run "$seb_src" 2>&1); seb_rc=$?
rm -f "$seb_src"
if [ "$seb_rc" -eq 0 ] && echo "$seb_out" | grep -qF "EOF:3"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (esperado rc=0 con EOF:3; rc=%d)\n" "$name" "$seb_rc"
  echo "$seb_out" | tail -2 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="nyx1008-try-catch-exhaustive"
# Fricción serve 2026-08-06: try/catch con AMBAS ramas retornando es camino
# exhaustivo (antes exigía un return inalcanzable). Dos direcciones: el patrón
# del dispatcher compila; try SIN return sigue siendo NYX1008.
tce_ok=$(mktemp /tmp/tce-XXXX.nx)
printf 'fn f() -> String {\n    try {\n        return "a"\n    } catch(e: String) {\n        return "b"\n    }\n}\nfn main() -> int {\n    print(f())\n    return 0\n}\n' > "$tce_ok"
tce_ok_out=$(NYX_SRC="$tce_ok" ./nyx_bootstrap 2>&1); tce_ok_rc=$?
tce_bad=$(mktemp /tmp/tceb-XXXX.nx)
printf 'fn g() -> String {\n    try {\n        print("x")\n    } catch(e: String) {\n        return "b"\n    }\n}\nfn main() -> int { return 0 }\n' > "$tce_bad"
tce_bad_out=$(NYX_SRC="$tce_bad" ./nyx_bootstrap 2>&1); tce_bad_rc=$?
rm -f "$tce_ok" "$tce_bad"
if [ "$tce_ok_rc" -eq 0 ] && [ "$tce_bad_rc" -ne 0 ] && echo "$tce_bad_out" | grep -qF "NYX1008"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (ok_rc=%d esperado 0; bad_rc=%d esperado !=0 con NYX1008)\n" "$name" "$tce_ok_rc" "$tce_bad_rc"
  FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="tyeq-strict-fn-slot"
# ty_eq estricto v1 (cierre del arco gradual, 2026-08-05): `let f: Fn = "..."`
# pasaba MUDO (Fn parsea TyGeneric = comodín). String/float/bool a un slot Fn
# ahora es NYX1003; int sigue permitido (0 = slot nulo, i64 = fn pointers).
tef_src=$(mktemp /tmp/tef-XXXX.nx)
printf 'fn main() -> int {\n    let f: Fn = "no soy funcion"\n    return 0\n}\n' > "$tef_src"
tef_out=$(NYX_SRC="$tef_src" ./nyx_bootstrap 2>&1); tef_rc=$?
tef_ok_src=$(mktemp /tmp/tefok-XXXX.nx)
printf 'var g: Fn = 0\nfn s() -> int { return 0 }\nfn main() -> int {\n    g = s\n    let ok: Fn = s\n    return 0\n}\n' > "$tef_ok_src"
tef_ok_out=$(NYX_SRC="$tef_ok_src" ./nyx_bootstrap 2>&1); tef_ok_rc=$?
rm -f "$tef_src" "$tef_ok_src"
if [ "$tef_rc" -ne 0 ] && echo "$tef_out" | grep -qF "NYX1003" && echo "$tef_out" | grep -qF "expected Fn" && [ "$tef_ok_rc" -eq 0 ]; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (positivo rc=%d, control negativo rc=%d)\n" "$name" "$tef_rc" "$tef_ok_rc"
  echo "$tef_out" | tail -2 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="tyeq-strict-dyn-primitive"
# ty_eq estricto v1: `let c: dyn Trait = 42` pasaba MUDO (el checker de dyn
# hacía early-return para actuals no-struct). Primitivo a dyn = NYX1012.
ted_src=$(mktemp /tmp/ted-XXXX.nx)
printf 'trait Mostrable { fn ver(self) -> String }\nfn main() -> int {\n    let c: dyn Mostrable = 42\n    return 0\n}\n' > "$ted_src"
ted_out=$(NYX_SRC="$ted_src" ./nyx_bootstrap 2>&1); ted_rc=$?
rm -f "$ted_src"
if [ "$ted_rc" -ne 0 ] && echo "$ted_out" | grep -qF "NYX1012" && echo "$ted_out" | grep -qiF "primitive"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (esperado rc!=0 con NYX1012 primitivo; rc=%d)\n" "$name" "$ted_rc"
  echo "$ted_out" | tail -2 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="iterator-chain-type-mismatch"
# Sesión B (2026-08-05): la cadena iter/map/collect TIPA — un collect() de
# Iterator[int] asignado a String anotado es NYX1003 (antes: TyUnknown mudo).
icm_out=$(NYX_SRC=tests/compiler/errors/test-iterator-chain-type-mismatch.nx ./nyx_bootstrap 2>&1); icm_rc=$?
if [ "$icm_rc" -ne 0 ] && echo "$icm_out" | grep -qF "NYX1003"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (esperado rc!=0 con NYX1003; rc=%d)\n" "$name" "$icm_rc"
  echo "$icm_out" | tail -3 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="map-get-missing-key-actionable-abort"
# A2 (2026-08-05): el abort de Map.get con clave ausente nombra la clave Y
# sugiere la salida (contains / get_or). Control del comportamiento: exit != 0
# + ambas piezas en stderr. get_or es la variante que NO aborta (test-331).
mga_src=$(mktemp /tmp/mga-XXXX.nx)
printf 'fn main() -> int {\n    var m: Map = {"a": "1"}\n    let v: String = m.get("zzz")\n    print(v)\n    return 0\n}\n' > "$mga_src"
# Compila+linkea+corre de verdad vía el wrapper (el bootstrap crudo solo
# emite el .ll — la 1ª versión de este check corría un script_bin STALE).
mga_out=$(bash "$(pwd)/scripts/nyx" run "$mga_src" 2>&1); mga_rc=$?
rm -f "$mga_src"
if [ "$mga_rc" -ne 0 ] && echo "$mga_out" | grep -qF "'zzz'" && echo "$mga_out" | grep -qF "get_or"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (abort sin clave o sin sugerencia get_or; rc=%d)\n" "$name" "$mga_rc"
  echo "$mga_out" | tail -3 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="assert-eq-expected-got"
# C2 (fricción ERP 2026-08-10): assert(a == b) fallido dice "expected X, got
# Y" (nyx_assert_eq_int, código muerto en runtime.c desde siempre, conectado)
# y el mensaje default del parser lleva la LÍNEA del assert. Compila+corre
# vía el wrapper, igual que map-get-missing-key-actionable-abort.
aeq_src=$(mktemp /tmp/aeq-XXXX.nx)
printf 'fn main() -> int {\n    let x: int = 1\n    assert(x == 2)\n    return 0\n}\n' > "$aeq_src"
aeq_out=$(bash "$(pwd)/scripts/nyx" run "$aeq_src" 2>&1); aeq_rc=$?
rm -f "$aeq_src"
if [ "$aeq_rc" -ne 0 ] && echo "$aeq_out" | grep -qF "expected 2, got 1" && echo "$aeq_out" | grep -qF "line 3"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (esperado rc!=0 con expected/got y línea; rc=%d)\n" "$name" "$aeq_rc"
  echo "$aeq_out" | tail -3 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="module-fn-ambiguous-unqualified"
# S3 namespacing (2026-08-11): dos módulos importados exportan `set`; la
# llamada NO calificada desde el main era silently-wrong (ganaba la última
# definición). Ahora: NYX2010 con los módulos nombrados. Compila vía el
# wrapper (necesita el resolver de imports del driver).
mfa_dir=$(mktemp -d /tmp/mfa-XXXX)
printf 'var g: int = 0\npub fn set(v: int) { g = v }\n' > "$mfa_dir/m_uno.nx"
printf 'var h: int = 0\npub fn set(v: int) { h = v }\n' > "$mfa_dir/m_dos.nx"
printf 'import "%s/m_uno"\nimport "%s/m_dos"\nfn main() -> int {\n    set(7)\n    return 0\n}\n' "$mfa_dir" "$mfa_dir" > "$mfa_dir/main.nx"
mfa_out=$(bash "$(pwd)/scripts/nyx" run "$mfa_dir/main.nx" 2>&1); mfa_rc=$?
rm -rf "$mfa_dir"
if [ "$mfa_rc" -ne 0 ] && echo "$mfa_out" | grep -qF "NYX2010" && echo "$mfa_out" | grep -qF "AMBIGUA"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (esperado rc!=0 con NYX2010; rc=%d)\n" "$name" "$mfa_rc"
  echo "$mfa_out" | tail -3 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="goroutine-stack-overflow-diagnosed"
# S4 Track 5c inc.1 (2026-08-12): una recursión desbocada en una GOROUTINE
# moría con SIGSEGV MUDO (exit 139, cero salida) — indistinguible de
# cualquier otro crash. Ahora la guard page la caza: mensaje accionable con
# el tamaño actual y exit 1. Se corre con el stack en el mínimo para que
# desborde rápido.
gso_src=$(mktemp /tmp/gso-XXXXXXXX.nx)
printf 'fn hondo(n: int) -> int {\n    let a: int = n * 2\n    if n <= 0 { return a }\n    return hondo(n - 1) + a - a\n}\nasync fn w() -> int { return hondo(1000000) }\nfn main() -> int {\n    let r: int = await w()\n    print(r)\n    return 0\n}\n' > "$gso_src"
gso_out=$(NYX_GOROUTINE_STACK_KB=64 bash "$(pwd)/scripts/nyx" run "$gso_src" 2>&1); gso_rc=$?
rm -f "$gso_src"
if [ "$gso_rc" -ne 0 ] && echo "$gso_out" | grep -qF "goroutine stack overflow" && echo "$gso_out" | grep -qF "64KB"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (esperado rc!=0 con el diagnóstico de overflow; rc=%d)\n" "$name" "$gso_rc"
  echo "$gso_out" | tail -3 | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

name="strict-warn-blind-counter"
# "Modo ceguera visible" (arco gradual 2026-08-04): NYX_STRICT=warn reporta las
# validaciones salteadas por TyUnknown — SOLO del código del usuario (el
# prelude va rebasado a línea 1000001+ y los módulos inlineados se excluyen
# por module_marker). Tres direcciones: (a) programa gradual → warning con
# contexto accionable y SIN ruido del prelude; (b) programa anotado → silencio
# (control positivo); (c) sin el flag → silencio (opt-in).
swb_src=$(mktemp /tmp/swb-XXXX.nx)
printf 'fn misterio(x) {\n    return x + 1\n}\nfn main() -> int {\n    let a = misterio(5)\n    print(a)\n    return 0\n}\n' > "$swb_src"
swb_ann=$(mktemp /tmp/swba-XXXX.nx)
printf 'fn claro(x: int) -> int {\n    return x + 1\n}\nfn main() -> int {\n    let a: int = claro(5)\n    print(a)\n    return 0\n}\n' > "$swb_ann"
swb_out=$(NYX_STRICT=warn NYX_SRC="$swb_src" ./nyx_bootstrap 2>&1)
swb_ann_out=$(NYX_STRICT=warn NYX_SRC="$swb_ann" ./nyx_bootstrap 2>&1)
swb_off_out=$(NYX_SRC="$swb_src" ./nyx_bootstrap 2>&1)
rm -f "$swb_src" "$swb_ann"
swb_ok=1
echo "$swb_out" | grep -q "checks skipped\|validaciones omitidas" || swb_ok=0
echo "$swb_out" | grep -q "'misterio'" || swb_ok=0
echo "$swb_out" | grep -q "array_sum\|array_min" && swb_ok=0
echo "$swb_ann_out" | grep -q "checks skipped\|validaciones omitidas" && swb_ok=0
echo "$swb_off_out" | grep -q "checks skipped\|validaciones omitidas" && swb_ok=0
if [ "$swb_ok" -eq 1 ]; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s (warning ausente, ruido de prelude, o no es opt-in)\n" "$name"
  echo "$swb_out" | grep -A3 "skipped\|omitidas" | head -5 | sed 's/^/      /'
  FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# Gemelo del anterior con receptor IDENTIFICADOR (residuo post-v0.24.0):
# `m.length` propiedad sobre una variable Map local. Sin NYX_SKIP_SEMANTIC:
# NYX1022 mira llamadas, la forma-propiedad pasa semantic limpia.
name="codegen-nyx2007-map-local-length-property"
n7p_out=$(NYX_SRC=tests/compiler/errors/test-nyx2007-map-local-length-property.nx ./nyx_bootstrap 2>&1); n7p_rc=$?
if [ "$n7p_rc" -ne 0 ] && echo "$n7p_out" | grep -qF "NYX2007" && echo "$n7p_out" | grep -qF "'length'"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2007 nombrando 'length')\n" "$n7p_rc"
  echo "$n7p_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# 4c: field_access con campo VÁLIDO sobre un receiver-expresión (f().campo
# sin bindear) — codegen_field_access no soporta ese receiver.
name="codegen-field-access-complex-receiver"
fac_out=$(NYX_SRC=tests/compiler/errors/fixtures/codegen-field-access-complex-receiver.nx ./nyx_bootstrap 2>&1); fac_rc=$?
if [ "$fac_rc" -ne 0 ] && echo "$fac_out" | grep -qF "NYX2003"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2003)\n" "$fac_rc"
  echo "$fac_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# 4d: bound de trait violado en un generic call con TURBOFISH EXPLÍCITO
# (`show_it<Point>(p)` sin `impl Display2 for Point`) — camino NORMAL con
# semantic activo, sin env especial: el chequeo de bounds de semantic
# (NYX1020) nunca cubre la forma con turbofish explícito, así que este caso
# SIEMPRE llega al backstop de codegen (codegen.nx ~2870). Distinto del caso
# NYX1020 de test-m08-trait-bound-unsatisfied.nx (forma implícita, con impl
# local de OTRO trait presente).
name="codegen-trait-bound-turbofish"
ctb_out=$(NYX_SRC=tests/compiler/errors/fixtures/test-codegen-trait-bound.nx ./nyx_bootstrap 2>&1); ctb_rc=$?
if [ "$ctb_rc" -ne 0 ] && echo "$ctb_out" | grep -qF "NYX2004"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2004)\n" "$ctb_rc"
  echo "$ctb_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# Sub-proyecto 4, Task 5: `a.b.c = x` con un eslabón intermedio que NO es un
# struct conocido (un Map). semantic la aprueba; antes codegen la descartaba
# con un print mudo y exit 0. Ahora NYX2005.
name="codegen-field-assign-chain-unresolved"
fac2_out=$(NYX_SRC=tests/compiler/errors/fixtures/codegen-field-assign-chain-unresolved.nx ./nyx_bootstrap 2>&1); fac2_rc=$?
if [ "$fac2_rc" -ne 0 ] && echo "$fac2_out" | grep -qF "NYX2005"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2005)\n" "$fac2_rc"
  echo "$fac2_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# Sub-proyecto 4, Task 5: receiver de asignación que no es identificador ni
# cadena de campos (`arr[0].x = 9`) — sin soporte de codegen, pero ruidoso.
name="codegen-field-assign-index-receiver"
fai_out=$(NYX_SRC=tests/compiler/errors/fixtures/codegen-field-assign-index-receiver.nx ./nyx_bootstrap 2>&1); fai_rc=$?
if [ "$fai_rc" -ne 0 ] && echo "$fai_out" | grep -qF "NYX2006"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit code: %d (esperado != 0 con NYX2006)\n" "$fai_rc"
  echo "$fai_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi

# ==============================================================
# Clave no-string en map literal -> NYX0106 CONTADO (antes: fallback mudo que
# emitía un binario que no ejecutaba nada).
# ==============================================================
name="test-map-literal-nonstring-key"
cp "tests/compiler/errors/$name.nx" script.nx
mlk_output=$(timeout 15 ./nyx_bootstrap 2>&1); mlk_rc=$?
if [ "$mlk_rc" -ne 0 ] && echo "$mlk_output" | grep -q "NYX0106"; then
  printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
else
  printf "  ✗ %s\n" "$name"; printf "    exit: %d (esperado != 0 con NYX0106)\n" "$mlk_rc"
  echo "$mlk_output" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
fi
rm -f script.ll

# ==============================================================
# SP4 Task 3b — POSITIVOS: un `pub struct` / `pub type` SÍ se registra como
# tipo. La rama `export` de collect_declarations sólo hacía `scope_declare`,
# así que el nombre existía pero el TIPO no: toda anotación daba NYX1001,
# incluso dentro del módulo que lo declara (std/{sync,args,csv,semver,llm,
# stack} eran inusables con `import { } from`). Estos tres casos eran ROJOS
# antes del fix; deben pasar `check OK` y compilar.
# ==============================================================
POSITIVE_TESTS=(
  "tests/compiler/errors/fixtures/pub-struct-braced-import.nx"
  "tests/compiler/errors/fixtures/pub-type-alias-local.nx"
  # El mixto es la REGRESIÓN concreta que abrió la Task 3: `import { } from`
  # (trae el pub struct sin registrar) + `import "..." as alias` (escaneable,
  # que deja el gate de NYX1001 abierto).
  "tests/compiler/errors/fixtures/pub-struct-mixed-imports.nx"
  # `#[affine] pub struct X` en UNA línea: scan_module_types strippeaba sólo
  # el `pub `, así que el mini-parser textual no veía el struct.
  "tests/compiler/errors/fixtures/scan-affine-oneline-attr.nx"
  # Control POSITIVO del backstop NYX2007: gatear el bloque field_access por
  # tipo no puede romper los métodos homónimos sobre campos String/Array/Map
  # (length/contains sobre String y Array eran, de hecho, silently-wrong antes).
  "tests/compiler/errors/fixtures/nyx2007-field-string-array-methods.nx"
)

for file in "${POSITIVE_TESTS[@]}"; do
  name="positive:$(basename "$file" .nx)"
  cp "$file" script.nx
  pos_out=$(timeout 30 ./nyx_bootstrap 2>&1); pos_rc=$?
  if [ "$pos_rc" -eq 0 ] && echo "$pos_out" | grep -q "check   OK" && [ -f script.ll ]; then
    printf "  ✓ %s\n" "$name"; PASS=$((PASS + 1))
  else
    printf "  ✗ %s\n" "$name"
    printf "    exit: %d (esperado 0 con 'check   OK' y script.ll generado)\n" "$pos_rc"
    echo "$pos_out" | sed 's/^/      /'; FAIL=$((FAIL + 1)); FAILED_TESTS+=("$name")
  fi
  rm -f script.ll
done

echo ""
echo "  $PASS passed, $FAIL failed"

if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
