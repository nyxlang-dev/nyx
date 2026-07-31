#!/usr/bin/env bash
# run_silent_failure_checks.sh — Task 1 (campaña "Primer intento verde",
# Fase 2): campo alucinado en field access/assign, que hoy YA NO compila
# mudo (NYX1017) — ver compiler/semantic.nx (validate_field_access /
# validate_field_assign / check_field_exists).
#
# Dos checks: campo inexistente sobre un identificador y sobre f().campo.
# Cada uno trae CONTROL POSITIVO obligatorio (regla del repo, ver
# run_gotcha_coverage.sh y su motivación): la variante CORRECTA del mismo
# programa debe compilar con exit 0. Sin el control positivo, este script
# pasaría en verde con un compilador roto o un path mal escrito — no
# alcanza con "vi el mensaje de field-no-existe en algún lado". (El texto
# humano no imprime el código NYX1017 literal — eso solo sale con
# NYX_DIAG=json; acá se matchea el mensaje bilingüe.)
#
# Igual que run_ai_first_tests.sh: cp prog.nx script.nx && ./nyx_bootstrap.
# No hace falta clang — alcanza con el exit code de la compilación.
#
# set -u sin pipefail: "grep -q" sobre un pipe con SIGPIPE ya mordió este
# repo (rc=141) — se usan archivos intermedios en su lugar.
set -u
cd "$(dirname "$0")/../.."

if [ ! -x ./nyx_bootstrap ]; then
    echo "  ✗ falta ./nyx_bootstrap — correr 'make bootstrap' primero"
    exit 1
fi

PASS=0
FAIL=0
FAILED=()

TMPDIR="$(mktemp -d)"
trap 'rm -f script.nx script.ll; rm -rf "$TMPDIR"' EXIT

# ------------------------------------------------------------------
# Check 1: campo alucinado sobre un identificador (u.nombree cuando el
# struct declara 'nombre').
# ------------------------------------------------------------------
cat > "$TMPDIR/bad_ident.nx" <<'NX'
struct Usuario {
    nombre: String
}

fn main() -> int {
    let u: Usuario = Usuario { nombre: "Ada" }
    let x: String = u.nombree
    return 0
}
NX

cat > "$TMPDIR/good_ident.nx" <<'NX'
struct Usuario {
    nombre: String
}

fn main() -> int {
    let u: Usuario = Usuario { nombre: "Ada" }
    let x: String = u.nombre
    return 0
}
NX

name="silent-field-hallucination-identifier"
cp "$TMPDIR/bad_ident.nx" script.nx
./nyx_bootstrap > "$TMPDIR/bad_ident.out" 2>&1
bad_rc=$?
cp "$TMPDIR/good_ident.nx" script.nx
./nyx_bootstrap > "$TMPDIR/good_ident.out" 2>&1
good_rc=$?

if [ "$bad_rc" -ne 0 ] && grep -q "does not exist in struct 'Usuario'" "$TMPDIR/bad_ident.out" \
   && [ "$good_rc" -eq 0 ]; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
else
    printf "  ✗ %s\n" "$name"
    printf "    bad rc=%d (esperado != 0 con NYX1017), good rc=%d (esperado 0 — control positivo)\n" "$bad_rc" "$good_rc"
    sed 's/^/      bad: /' "$TMPDIR/bad_ident.out"
    sed 's/^/      good: /' "$TMPDIR/good_ident.out"
    FAIL=$((FAIL + 1))
    FAILED+=("$name")
fi

# ------------------------------------------------------------------
# Check 2: campo alucinado sobre f().campo (el objeto viene de una
# llamada a función, no de un identificador directo).
# ------------------------------------------------------------------
cat > "$TMPDIR/bad_fncall.nx" <<'NX'
struct Usuario {
    nombre: String
}

fn make_usuario() -> Usuario {
    return Usuario { nombre: "Ada" }
}

fn main() -> int {
    let x: String = make_usuario().nombree
    return 0
}
NX

cat > "$TMPDIR/good_fncall.nx" <<'NX'
struct Usuario {
    nombre: String
}

fn make_usuario() -> Usuario {
    return Usuario { nombre: "Ada" }
}

fn main() -> int {
    // 2026-07-28 (Fase 3, Task 4c): field_access sobre un receiver-expresión
    // (SIN bindear) es un catch-all de codegen que hoy aborta con NYX2003 —
    // ya NO compila con rc=0 aunque el campo sea válido (antes evaluaba a 0
    // mudo; ver codegen.nx ~6293). El control positivo de ESTE check pasa
    // a usar el patrón bindeado que el propio mensaje de NYX2003 recomienda,
    // para seguir probando lo que Task 1/Fase 2 quería probar: un campo
    // válido no dispara NYX1017 (falso positivo de semantic).
    let u: Usuario = make_usuario()
    let x: String = u.nombre
    return 0
}
NX

name="silent-field-hallucination-fncall"
cp "$TMPDIR/bad_fncall.nx" script.nx
./nyx_bootstrap > "$TMPDIR/bad_fncall.out" 2>&1
bad_rc=$?
cp "$TMPDIR/good_fncall.nx" script.nx
./nyx_bootstrap > "$TMPDIR/good_fncall.out" 2>&1
good_rc=$?

if [ "$bad_rc" -ne 0 ] && grep -q "does not exist in struct 'Usuario'" "$TMPDIR/bad_fncall.out" \
   && [ "$good_rc" -eq 0 ]; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
else
    printf "  ✗ %s\n" "$name"
    printf "    bad rc=%d (esperado != 0 con NYX1017), good rc=%d (esperado 0 — control positivo)\n" "$bad_rc" "$good_rc"
    sed 's/^/      bad: /' "$TMPDIR/bad_fncall.out"
    sed 's/^/      good: /' "$TMPDIR/good_fncall.out"
    FAIL=$((FAIL + 1))
    FAILED+=("$name")
fi

# ------------------------------------------------------------------
# Check 3 (Task 2): el warning E1 (arr[i] sin tipar concatenado con String)
# sale como línea NDJSON bajo NYX_DIAG=json — antes se suprimía entero
# (semantic.nx:4578-4590 en la versión pre-Task-2). Control positivo
# obligatorio: un programa SIN el warning no debe emitir ninguna línea
# "severity":"warning" bajo el mismo modo. La línea NDJSON se valida
# parseándola de verdad con python3 -c "import json; ..." — NO
# pipefail+grep -q (SIGPIPE 141, ver comentario arriba).
# ------------------------------------------------------------------
cat > "$TMPDIR/warn_bad.nx" <<'NX'
fn f(parts: Array) {
    print("x" + parts[0])
}

fn main() {
    let parts: Array = []
    parts.push(1)
    f(parts)
}
NX

cat > "$TMPDIR/warn_good.nx" <<'NX'
fn f(parts: Array<String>) {
    print("x" + parts[0])
}

fn main() {
    let parts: Array<String> = []
    parts.push("y")
    f(parts)
}
NX

name="warning-visible-under-ndjson"
cp "$TMPDIR/warn_bad.nx" script.nx
NYX_DIAG=json ./nyx_bootstrap > "$TMPDIR/warn_bad.out" 2>&1
warn_bad_rc=$?
cp "$TMPDIR/warn_good.nx" script.nx
NYX_DIAG=json ./nyx_bootstrap > "$TMPDIR/warn_good.out" 2>&1
warn_good_rc=$?

grep '"severity":"warning"' "$TMPDIR/warn_bad.out" > "$TMPDIR/warn_bad_lines.txt" || true
grep '"severity":"warning"' "$TMPDIR/warn_good.out" > "$TMPDIR/warn_good_lines.txt" || true
bad_warn_count=$(wc -l < "$TMPDIR/warn_bad_lines.txt" | tr -d ' ')
good_warn_count=$(wc -l < "$TMPDIR/warn_good_lines.txt" | tr -d ' ')

json_ok=0
if [ "$bad_warn_count" -ge 1 ]; then
    if python3 -c "
import json, sys
with open('$TMPDIR/warn_bad_lines.txt') as f:
    line = f.readline().strip()
d = json.loads(line)
sys.exit(0 if d.get('severity') == 'warning' else 1)
" ; then
        json_ok=1
    fi
fi

if [ "$warn_bad_rc" -eq 0 ] && [ "$bad_warn_count" -ge 1 ] && [ "$json_ok" -eq 1 ] \
   && [ "$warn_good_rc" -eq 0 ] && [ "$good_warn_count" -eq 0 ]; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
else
    printf "  ✗ %s\n" "$name"
    printf "    bad rc=%d, bad warning lines=%s, json_ok=%d (esperado rc=0, >=1 línea, JSON válido)\n" \
        "$warn_bad_rc" "$bad_warn_count" "$json_ok"
    printf "    good rc=%d, good warning lines=%s (esperado rc=0, 0 líneas — control positivo)\n" \
        "$warn_good_rc" "$good_warn_count"
    sed 's/^/      bad: /' "$TMPDIR/warn_bad.out"
    sed 's/^/      good: /' "$TMPDIR/warn_good.out"
    FAIL=$((FAIL + 1))
    FAILED+=("$name")
fi

# ------------------------------------------------------------------
# Check 4 (Task 5, Fase 3): bound de trait violado en un generic call
# (`show_it<Point>(p)` con Point sin `impl Display for Point`) — CORREGIDO
# tras review (2026-07-28): NYX2004 es camino NORMAL con semantic activo
# para llamadas con turbofish explícito (`f<Point>(p)`, el chequeo de
# bounds de semantic ni pasa por ese nodo) y para la forma implícita cuando
# el tipo concreto no tiene ningún impl local (semantic solo es estricto —
# NYX1020 — cuando el tipo tiene al menos un impl local de cualquier
# trait). Este check en particular usa NYX_SKIP_SEMANTIC=1 para fijar
# específicamente el BACKSTOP de codegen (codegen.nx ~2870) como test del
# camino skip, no porque el repro lo necesite para disparar NYX2004 — ver
# `codegen-trait-bound-turbofish` en tests/compiler/errors/run_error_tests.sh
# para el caso equivalente con semantic activo, sin env especial. Antes
# imprimía "Error: ... does not implement trait ..." y SEGUÍA monomorfizando
# (rc=0); ahora aborta con NYX2004 y nombra la firma del método faltante.
# Control positivo obligatorio: el mismo programa CON el impl compila con
# rc=0 bajo el mismo skip.
# ------------------------------------------------------------------
cat > "$TMPDIR/bad_traitbound.nx" <<'NX'
trait Display {
    fn show(self) -> String
}

trait Other {
    fn tag(self) -> int
}

struct Point {
    x: int,
    y: int
}

impl Other for Point {
    fn tag(self) -> int {
        return 1
    }
}

fn show_it<T: Display>(x: T) -> int {
    return 0
}

fn main() -> int {
    let p: Point = Point { x: 1, y: 2 }
    let r: int = show_it<Point>(p)
    print(r)
    return 0
}
NX

cat > "$TMPDIR/good_traitbound.nx" <<'NX'
trait Display {
    fn show(self) -> String
}

struct Point {
    x: int,
    y: int
}

impl Display for Point {
    fn show(self) -> String {
        return "Point"
    }
}

fn show_it<T: Display>(x: T) -> int {
    return 0
}

fn main() -> int {
    let p: Point = Point { x: 1, y: 2 }
    let r: int = show_it<Point>(p)
    print(r)
    return 0
}
NX

name="silent-trait-bound-unsatisfied-codegen-backstop"
cp "$TMPDIR/bad_traitbound.nx" script.nx
NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap > "$TMPDIR/bad_traitbound.out" 2>&1
bad_rc=$?
cp "$TMPDIR/good_traitbound.nx" script.nx
NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap > "$TMPDIR/good_traitbound.out" 2>&1
good_rc=$?

if [ "$bad_rc" -ne 0 ] && grep -q "NYX2004" "$TMPDIR/bad_traitbound.out" \
   && grep -q "fn show(self) -> String" "$TMPDIR/bad_traitbound.out" \
   && [ "$good_rc" -eq 0 ]; then
    printf "  ✓ %s\n" "$name"
    PASS=$((PASS + 1))
else
    printf "  ✗ %s\n" "$name"
    printf "    bad rc=%d (esperado != 0 con NYX2004 + firma), good rc=%d (esperado 0 — control positivo)\n" "$bad_rc" "$good_rc"
    sed 's/^/      bad: /' "$TMPDIR/bad_traitbound.out"
    sed 's/^/      good: /' "$TMPDIR/good_traitbound.out"
    FAIL=$((FAIL + 1))
    FAILED+=("$name")
fi

# ==============================================================
# Task 10 (Fase 4, campaña "Primer intento verde"): atribución del fallo
# de clang en `nyx build` — antes volcaba el log de LLVM crudo sin puente
# a código Nyx (ver compiler/build.nx, clang_failure_attribution_bash).
# Repro real del banco (ficha [dogfooding:bench] en TASKS.md): Option<Item>
# con struct de 3 campos como payload → LINK error (IR inválido). A
# diferencia de los checks de arriba, este usa `nyx_build` (el PM, no
# nyx_bootstrap) porque el fallo ocurre en el LINK (clang), no en el
# compile — necesita make build-nyx-build corrido antes.
# Control positivo REAL: mismo runner, un proyecto sano (nyx init sin
# tocar) debe buildear limpio (exit 0) y SIN el texto de atribución.
# ==============================================================
NYX_BUILD="./nyx_build"
if [ ! -x "$NYX_BUILD" ]; then
    echo "  ⚠️  nyx_build no existe — corré 'make build-nyx-build' primero (se salta este check)"
else
    REPO_ROOT="$(pwd)"
    PROJ_BAD="$TMPDIR/proj_bad"
    PROJ_GOOD="$TMPDIR/proj_good"
    mkdir -p "$PROJ_BAD" "$PROJ_GOOD"

    (cd "$PROJ_BAD" && NYX_HOME="$REPO_ROOT" "$REPO_ROOT/$NYX_BUILD" init bad_repro >/dev/null 2>&1)
    (cd "$PROJ_GOOD" && NYX_HOME="$REPO_ROOT" "$REPO_ROOT/$NYX_BUILD" init good_repro >/dev/null 2>&1)

    cat > "$PROJ_BAD/bad_repro/src/main.nx" <<'NX'
struct Item {
    id: int,
    name: String,
    price: float
}

fn find_item(items: Array<Item>, id: int) -> Option<Item> {
    var i: int = 0
    while i < items.length() {
        let it: Item = items[i]
        if it.id == id {
            return Option.Some(it)
        }
        i = i + 1
    }
    return Option.None
}

fn main() -> int {
    var items: Array<Item> = [Item { id: 1, name: "a", price: 1.5 }]
    let r: Option<Item> = find_item(items, 1)
    match r {
        Option.Some(it) => print(it.name),
        Option.None => print("none")
    }
    return 0
}
NX

    name="clang-link-failure-attribution-ir-bug"
    (cd "$PROJ_BAD/bad_repro" && NYX_HOME="$REPO_ROOT" "$REPO_ROOT/$NYX_BUILD" build) > "$TMPDIR/bad_build.out" 2>&1
    bad_build_rc=$?
    (cd "$PROJ_GOOD/good_repro" && NYX_HOME="$REPO_ROOT" "$REPO_ROOT/$NYX_BUILD" build) > "$TMPDIR/good_build.out" 2>&1
    good_build_rc=$?

    if [ "$bad_build_rc" -ne 0 ] \
       && grep -q "Nyx compiler BUG" "$TMPDIR/bad_build.out" \
       && grep -q "defined with type" "$TMPDIR/bad_build.out" \
       && [ "$good_build_rc" -eq 0 ] \
       && ! grep -q "Nyx compiler BUG" "$TMPDIR/good_build.out"; then
        printf "  ✓ %s\n" "$name"
        PASS=$((PASS + 1))
    else
        printf "  ✗ %s\n" "$name"
        printf "    bad rc=%d (esperado != 0 con atribución), good rc=%d (esperado 0 — control positivo)\n" "$bad_build_rc" "$good_build_rc"
        sed 's/^/      bad: /' "$TMPDIR/bad_build.out"
        sed 's/^/      good: /' "$TMPDIR/good_build.out"
        FAIL=$((FAIL + 1))
        FAILED+=("$name")
    fi
fi

# ------------------------------------------------------------------
# Check (sub-proyecto 4, Task 6): `arr[i].metodo()` sobre un `Array` PELADO
# cuyo slot NO es String. El codegen elegía `inttoptr i64 -> %nyx_string*`
# mirando SOLO el nombre del método (`length`/`indexOf`/`contains`/`split`
# son homónimos String/Array), así que `nums[0].contains("x")` con
# nums[0] = 42 dereferenciaba la dirección 42: SEGV (139). Ahora el receptor
# se lee CHEQUEADO por el tag del slot → abort ordenado con mensaje.
#
# Necesita clang: el abort es en RUNTIME, no en compilación. Sin clang el
# check se saltea (igual que otros bloques condicionales de este script).
# Control positivo obligatorio: el MISMO programa con un slot String corre
# con exit 0 y da el resultado correcto.
# ------------------------------------------------------------------
if command -v clang >/dev/null 2>&1; then
    RT_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c runtime/process.c"
    RT_LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

    cat > "$TMPDIR/slot_bad.nx" <<'NX'
fn main() -> int {
    var nums: Array = []
    nums.push(42)
    if nums[0].contains("x") {
        print("si")
    } else {
        print("no")
    }
    return 0
}
NX

    cat > "$TMPDIR/slot_good.nx" <<'NX'
fn main() -> int {
    var words: Array = []
    words.push("hola mundo")
    if words[0].contains("mundo") {
        print("si")
    } else {
        print("no")
    }
    return 0
}
NX

    # Round 2 de review: la MISMA lectura pero sobre un `Array<int>` anotado y
    # con `push` de una VARIABLE (no un literal). Ese push guardaba UNKNOWN y
    # get_checked deja pasar UNKNOWN → SEGV. Hoy el tipo de elemento declarado
    # del receptor taguea INT (push_tag_for_arg), así que también aborta
    # ordenado. Es el patrón dominante en código real (bucles, acumuladores).
    cat > "$TMPDIR/slot_bad_var.nx" <<'NX'
fn main() -> int {
    var nums: Array<int> = []
    var v: int = 42
    nums.push(v)
    if nums[0].contains("x") {
        print("si")
    } else {
        print("no")
    }
    return 0
}
NX

    name="string-method-on-non-string-slot"
    slot_bad_rc=0
    slot_badvar_rc=0
    slot_good_rc=0
    cp "$TMPDIR/slot_bad.nx" script.nx
    if ./nyx_bootstrap > "$TMPDIR/slot_bad.out" 2>&1 \
       && clang -O2 script.ll $RT_SRCS $RT_LIBS -o "$TMPDIR/slot_bad_bin" >> "$TMPDIR/slot_bad.out" 2>&1; then
        "$TMPDIR/slot_bad_bin" >> "$TMPDIR/slot_bad.out" 2>&1
        slot_bad_rc=$?
    else
        slot_bad_rc=-1
    fi
    cp "$TMPDIR/slot_bad_var.nx" script.nx
    if ./nyx_bootstrap > "$TMPDIR/slot_bad_var.out" 2>&1 \
       && clang -O2 script.ll $RT_SRCS $RT_LIBS -o "$TMPDIR/slot_bad_var_bin" >> "$TMPDIR/slot_bad_var.out" 2>&1; then
        "$TMPDIR/slot_bad_var_bin" >> "$TMPDIR/slot_bad_var.out" 2>&1
        slot_badvar_rc=$?
    else
        slot_badvar_rc=-1
    fi
    cp "$TMPDIR/slot_good.nx" script.nx
    if ./nyx_bootstrap > "$TMPDIR/slot_good.out" 2>&1 \
       && clang -O2 script.ll $RT_SRCS $RT_LIBS -o "$TMPDIR/slot_good_bin" >> "$TMPDIR/slot_good.out" 2>&1; then
        "$TMPDIR/slot_good_bin" >> "$TMPDIR/slot_good.out" 2>&1
        slot_good_rc=$?
    else
        slot_good_rc=-1
    fi

    if [ "$slot_bad_rc" -eq 1 ] && grep -q "se leyó como String" "$TMPDIR/slot_bad.out" \
       && [ "$slot_badvar_rc" -eq 1 ] && grep -q "se leyó como String" "$TMPDIR/slot_bad_var.out" \
       && [ "$slot_good_rc" -eq 0 ] && grep -q "^si$" "$TMPDIR/slot_good.out"; then
        printf "  ✓ %s\n" "$name"
        PASS=$((PASS + 1))
    else
        printf "  ✗ %s\n" "$name"
        printf "    bad rc=%d / bad-var rc=%d (esperado 1 con el abort de slot; 139 = volvió el SEGV), good rc=%d (esperado 0 — control positivo)\n" "$slot_bad_rc" "$slot_badvar_rc" "$slot_good_rc"
        sed 's/^/      bad: /' "$TMPDIR/slot_bad.out"
        sed 's/^/      bad-var: /' "$TMPDIR/slot_bad_var.out"
        sed 's/^/      good: /' "$TMPDIR/slot_good.out"
        FAIL=$((FAIL + 1))
        FAILED+=("$name")
    fi
fi

echo ""
echo "  $PASS passed, $FAIL failed"

if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
exit 0
