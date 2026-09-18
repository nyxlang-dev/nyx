#!/usr/bin/env bash
# ============================================================
#  run_build_manifest.sh — lo que `nyx build` LEE del proyecto
# ============================================================
# `nyx.toml` promete una sección [build] (la ayuda de `nyx build` dice «por
# defecto, el de [build] en nyx.toml», el spec del arco nyx-build-wasm la
# documenta y el fixture de test-wasm la usa), pero el parser solo leía
# [package] y [dependencies]: `[build] target = "wasm32-wasi"` construía NATIVO
# y salía 0, y `[build] main` compilaba src/main.nx dijera lo que dijera. Nada
# fallaba: el manifiesto simplemente no se leía. (fricción nyxerp, 2026-09-14)
#
# REGLA DEL REPO: todo check negativo trae CONTROL POSITIVO, y un rc != 0 no
# alcanza — se verifica que el error sea el ESPERADO.
#
# Casi todos los casos cortan ANTES de compilar (un target inválido, un main
# que no existe, una clave desconocida): son baratos y prueban que la clave se
# leyó. La compilación real se hace las veces mínimas que prueban el camino
# entero.
#
# set -u sin pipefail: se usan archivos intermedios (ver run_tooling_gates.sh).
set -u
cd "$(dirname "$0")/../.."
ROOT="$(pwd)"

PASS=0
FAIL=0
FAILED=()
GATE_TMP="$(mktemp -d)"
trap 'rm -rf "$GATE_TMP"' EXIT

echo "╔════════════════════════════════════════════════╗"
echo "║   Manifiesto y punto de entrada de nyx build    ║"
echo "╚════════════════════════════════════════════════╝"

# Se prueba el nyx_build de ESTE árbol, nunca el de ~/.nyx. Un binario más
# viejo que su fuente mediría el build.nx de ayer y daría verde sobre el bug.
if [ ! -x "$ROOT/nyx_build" ]; then
    echo "  ✗ falta ./nyx_build — corre 'make build-nyx-build' primero"
    exit 1
fi
if [ "$ROOT/compiler/build.nx" -nt "$ROOT/nyx_build" ]; then
    echo "  ✗ ./nyx_build es más viejo que compiler/build.nx — corre 'make build-nyx-build'"
    exit 1
fi

ok()  { echo "  ✅ $1"; PASS=$((PASS+1)); }
bad() { echo "  ❌ $1"; FAIL=$((FAIL+1)); FAILED+=("$2"); }

# mk_proj DIR TOML — proyecto con src/main.nx y src/otro.nx (salidas distintas,
# para saber cuál se compiló) y el nyx.toml dado.
mk_proj() {
    local dir="$1" toml="$2"
    rm -rf "$dir"; mkdir -p "$dir/src"
    printf '%s\n' "$toml" > "$dir/nyx.toml"
    cat > "$dir/src/main.nx" <<'EOF'
fn main() -> int {
    print("soy main")
    return 0
}
EOF
    cat > "$dir/src/otro.nx" <<'EOF'
fn main() -> int {
    let args: Array = get_args()
    print("soy otro, args=" + int_to_string(args.length() - 1))
    return 0
}
EOF
}

# nb DIR ARGS… — corre nyx_build dentro de DIR; salida en $GATE_TMP/out, rc en $RC
nb() {
    local dir="$1"; shift
    ( cd "$dir" && NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_build" "$@" ) > "$GATE_TMP/out" 2>&1
    RC=$?
}

muestra() { head -6 "$GATE_TMP/out" | sed 's/^/      /'; }

PKG='[package]
name = "manif"
version = "0.1.0"'

# ── [build] target se lee ────────────────────────────────────
# Un triple inválido en [build] tiene que llegar a la validación de targets.
# Antes de leerse la sección, esto construía nativo y salía 0.
P="$GATE_TMP/target"
mk_proj "$P" "$PKG

[build]
target = \"wasm32-wasy\""
nb "$P" build
if [ "$RC" -ne 0 ] && grep -q "target desconocido: wasm32-wasy" "$GATE_TMP/out"; then
    ok "build-target — [build] target se lee: un triple inválido se rechaza"
else
    bad "build-target — rc $RC sin «target desconocido»: [build] target se ignoró" "build-target"; muestra
fi

# CONTROL POSITIVO: un target válido en [build] se refleja en `nyx info`.
mk_proj "$P" "$PKG

[build]
target = \"wasm32-wasi\""
nb "$P" info
if [ "$RC" -eq 0 ] && grep -q "^Target:  wasm32-wasi" "$GATE_TMP/out"; then
    ok "build-target-sano — control positivo: [build] target válido aparece en info"
else
    bad "build-target-sano — CONTROL POSITIVO CAÍDO: rc $RC" "build-target-sano"; muestra
fi

# ── [build] main se lee ──────────────────────────────────────
P="$GATE_TMP/main"
mk_proj "$P" "$PKG

[build]
main = \"src/no_existe.nx\""
nb "$P" build
if [ "$RC" -ne 0 ] && grep -q "main file not found: src/no_existe.nx" "$GATE_TMP/out"; then
    ok "build-main — [build] main se lee: un main inexistente se acusa por nombre"
else
    bad "build-main — rc $RC sin «main file not found»: [build] main se ignoró" "build-main"; muestra
fi

# ── Clave desconocida en [build] ─────────────────────────────
P="$GATE_TMP/clave"
mk_proj "$P" "$PKG

[build]
tarjet = \"wasm32-wasi\""
nb "$P" build
if [ "$RC" -ne 0 ] && grep -q "clave desconocida en \[build\] de nyx.toml: 'tarjet'" "$GATE_TMP/out"; then
    ok "build-clave — una clave mal escrita en [build] es un error con su nombre"
else
    bad "build-clave — rc $RC sin «clave desconocida»" "build-clave"; muestra
fi

# ── main declarado dos veces con valores distintos ───────────
P="$GATE_TMP/doble"
mk_proj "$P" "$PKG
main = \"src/main.nx\"

[build]
main = \"src/otro.nx\""
nb "$P" info
if [ "$RC" -ne 0 ] && grep -q "declara main dos veces" "$GATE_TMP/out"; then
    ok "build-doble — [package] main y [build] main distintos es un error, no una elección muda"
else
    bad "build-doble — rc $RC sin «declara main dos veces»" "build-doble"; muestra
fi

# CONTROL POSITIVO: el mismo valor en las dos secciones no es conflicto.
mk_proj "$P" "$PKG
main = \"src/otro.nx\"

[build]
main = \"src/otro.nx\""
nb "$P" info
if [ "$RC" -eq 0 ] && grep -q "^Main:    src/otro.nx" "$GATE_TMP/out"; then
    ok "build-doble-sano — control positivo: el mismo main en las dos secciones se acepta"
else
    bad "build-doble-sano — CONTROL POSITIVO CAÍDO: rc $RC" "build-doble-sano"; muestra
fi

# ── Camino entero: [build] main compila ESE archivo ──────────
# Una sola compilación real: prueba que el main leído es el que llega al
# compilador, no solo el que se imprime.
P="$GATE_TMP/real"
mk_proj "$P" "$PKG

[build]
main = \"src/otro.nx\""
nb "$P" build
if [ "$RC" -eq 0 ] && [ -x "$P/manif" ] && ( cd "$P" && ./manif ) > "$GATE_TMP/run.out" 2>&1 \
   && grep -q "^soy otro" "$GATE_TMP/run.out"; then
    ok "build-main-real — el binario sale del [build] main, no de src/main.nx"
else
    bad "build-main-real — rc $RC; el binario no es el de src/otro.nx" "build-main-real"; muestra
    sed 's/^/      run: /' "$GATE_TMP/run.out" 2>/dev/null | head -3
fi

# ── `--main <archivo.nx>`: otro punto de entrada ─────────────
# Fricción nyxerp 2026-09-14. Los errores se dicen ANTES de compilar: quien
# escribe mal la ruta no tiene que esperar un build entero para enterarse.
P="$GATE_TMP/flagmain"
mk_proj "$P" "$PKG
main = \"src/main.nx\""

nb "$P" build --main
if [ "$RC" -ne 0 ] && grep -q -- "--main necesita un archivo" "$GATE_TMP/out"; then
    ok "main-sin-valor — --main sin archivo es un error, no se come la flag siguiente"
else
    bad "main-sin-valor — rc $RC sin «--main necesita un archivo»" "main-sin-valor"; muestra
fi

nb "$P" build --main src/nada.nx
if [ "$RC" -ne 0 ] && grep -q -- "--main: no existe el archivo 'src/nada.nx'" "$GATE_TMP/out" \
   && ! grep -q "compiling" "$GATE_TMP/out"; then
    ok "main-inexistente — un --main que no existe se acusa por nombre y antes de compilar"
else
    bad "main-inexistente — rc $RC sin el error esperado (o llegó a compilar)" "main-inexistente"; muestra
fi

nb "$P" build --main "$P/src/otro.nx"
if [ "$RC" -ne 0 ] && grep -q "ruta relativa a la raíz del proyecto" "$GATE_TMP/out"; then
    ok "main-absoluta — una ruta absoluta se rechaza con el motivo"
else
    bad "main-absoluta — rc $RC sin «ruta relativa»" "main-absoluta"; muestra
fi

nb "$P" info --main src/otro.nx
if [ "$RC" -ne 0 ] && grep -q -- "--main solo vale para" "$GATE_TMP/out"; then
    ok "main-info — --main fuera de build/run es un error, no se ignora"
else
    bad "main-info — rc $RC sin «--main solo vale para»" "main-info"; muestra
fi

# CONTROL POSITIVO (compilación real): `nyx run --main` compila ESE archivo,
# lo guarda como target/<name>-<archivo> sin pisar ./<name>, y al programa le llegan
# SOLO sus argumentos — «uno» antes de `--` y «dos» después; ni `--main` ni su
# valor. Si la flag se colara, el programa contaría 4.
nb "$P" run --main src/otro.nx uno -- dos
if [ "$RC" -eq 0 ] && grep -q "^soy otro, args=2$" "$GATE_TMP/out" \
   && [ -x "$P/target/manif-otro" ] && [ ! -e "$P/manif" ] && [ ! -e "$P/manif-otro" ]; then
    ok "main-run — nyx run --main corre ./target/manif-otro, no pisa ./manif y reenvía solo los args"
else
    bad "main-run — rc $RC; salida, artefacto o args no son los esperados" "main-run"; muestra
    ls "$P" | sed 's/^/      ls: /'
fi

# ── `--main` (con o sin --target) NO reescribe nyx.lock ──────
# Fricción nyxerp 2026-09-14 (20260914-210002-team-4): --main es una flag de
# ESTA compilación, no del proyecto. nyx.lock es un archivo versionado — si
# --main lo reescribe con su propio main, un `git add` de rutina deja al
# proyecto diciendo que su punto de entrada es el que se compiló al pasar.
# Repo git real (no solo diff de contenido): es lo que ve el usuario.
P="$GATE_TMP/lockmain"
mk_proj "$P" "$PKG
main = \"src/main.nx\""
( cd "$P" && git init -q . && git add -A && git -c user.email=t@t -c user.name=t commit -q -m inicial )

nb "$P" build
LOCK_BEFORE="$(cat "$P/nyx.lock" 2>/dev/null)"
if [ "$RC" -eq 0 ] && ( cd "$P" && git diff --quiet -- nyx.lock ); then
    ok "lock-build-normal — un build sin flags de una sola corrida deja nyx.lock intacto"
else
    bad "lock-build-normal — un build sin --main ya toca nyx.lock" "lock-build-normal"
    ( cd "$P" && git diff -- nyx.lock ) | sed 's/^/      /'
fi

nb "$P" build --main src/otro.nx
if [ "$RC" -eq 0 ] && ( cd "$P" && git diff --quiet -- nyx.lock ); then
    ok "lock-main-nativo — nyx build --main no reescribe nyx.lock (nativo)"
else
    bad "lock-main-nativo — nyx.lock quedó modificado por --main (nativo)" "lock-main-nativo"
    ( cd "$P" && git diff -- nyx.lock ) | sed 's/^/      /'
fi

# SKIP limpio sin toolchain wasi (patrón run_wasm_tests.sh): sin wasi-libc el
# build falla por el toolchain, no por el lock, y contarlo como fallo manda a
# investigar al lugar equivocado. Y las dos condiciones se reportan POR SEPARADO:
# antes un rc!=0 se anunciaba como «el lock quedó modificado», que era falso.
WASI_LIBC="${WASI_SYSROOT:-/usr}/lib/wasm32-wasi/libc.a"
if [ ! -f "$WASI_LIBC" ]; then
    echo "  ⏭️  lock-main-wasm — SKIP: wasi-libc no encontrado en $WASI_LIBC"
else
    nb "$P" build --target wasm32-wasi --main src/otro.nx
    if [ "$RC" -ne 0 ]; then
        bad "lock-main-wasm — el build wasm falló (rc=$RC), no se pudo verificar el lock" "lock-main-wasm"
    elif ( cd "$P" && git diff --quiet -- nyx.lock ); then
        ok "lock-main-wasm — nyx build --target wasm32-wasi --main no reescribe nyx.lock"
    else
        bad "lock-main-wasm — nyx.lock quedó modificado por --main (wasm)" "lock-main-wasm"
        ( cd "$P" && git diff -- nyx.lock ) | sed 's/^/      /'
    fi
fi

# CONTROL POSITIVO: nyx.lock SÍ debe reflejar el main real del proyecto (el
# del manifiesto, sin --main) y no contradecir a nyx.toml.
if grep -q '^main = "src/main.nx"$' "$P/nyx.lock"; then
    ok "lock-main-sano — control positivo: nyx.lock sigue diciendo el main del manifiesto"
else
    bad "lock-main-sano — CONTROL POSITIVO CAÍDO: nyx.lock no tiene el main del manifiesto" "lock-main-sano"
    sed 's/^/      lock: /' "$P/nyx.lock"
fi

# CONTROL POSITIVO: [build] main (sin --main) SÍ se refleja en nyx.lock — el
# lock no puede quedar contradiciendo lo que declara [build]/[package].
P="$GATE_TMP/lockbuildmain"
mk_proj "$P" "$PKG

[build]
main = \"src/otro.nx\""
nb "$P" build
if [ "$RC" -eq 0 ] && grep -q '^main = "src/otro.nx"$' "$P/nyx.lock"; then
    ok "lock-build-main-sano — control positivo: [build] main se refleja en nyx.lock"
else
    bad "lock-build-main-sano — CONTROL POSITIVO CAÍDO: [build] main no llegó a nyx.lock" "lock-build-main-sano"
    sed 's/^/      lock: /' "$P/nyx.lock" 2>/dev/null
fi

# CONTROL POSITIVO: agregar una dependencia SÍ debe tocar nyx.lock (lo que de
# verdad es del proyecto no queda congelado por el guard de "no reescribir").
# packages/foo se pre-crea para que resolve_deps salte el `git clone` (sin red
# en este entorno) — el punto del check es el contenido del lock, no la
# resolución de dependencias en sí.
P="$GATE_TMP/lockdep"
mk_proj "$P" "$PKG"
nb "$P" build
LOCK_SIN_DEP="$(cat "$P/nyx.lock" 2>/dev/null)"
printf '\n[dependencies]\nfoo = "*"\n' >> "$P/nyx.toml"
mkdir -p "$P/packages/foo"
nb "$P" build
LOCK_CON_DEP="$(cat "$P/nyx.lock" 2>/dev/null)"
if [ "$RC" -eq 0 ] && [ "$LOCK_SIN_DEP" != "$LOCK_CON_DEP" ] && grep -q 'foo = "\*"' "$P/nyx.lock"; then
    ok "lock-dep-sano — control positivo: agregar una dependencia sí actualiza nyx.lock"
else
    bad "lock-dep-sano — CONTROL POSITIVO CAÍDO: la dependencia nueva no llegó a nyx.lock" "lock-dep-sano"
    sed 's/^/      lock: /' "$P/nyx.lock" 2>/dev/null
fi

# Las secciones de abajo reusan la $P de "── `--main <archivo.nx>`: otro punto
# de entrada ──" (el proyecto "flagmain", con git init): se restaura acá para
# no arrastrar el "lockdep" de este bloque.
P="$GATE_TMP/flagmain"

# El artefacto de --main no debe quedar como archivo sin trackear con el
# .gitignore que siembra `nyx init` (templates/gitignore, {{binary}} = name).
# En la raíz no lo cubría nada, y un patrón `/<name>-*` lo habría tapado junto
# con archivos legítimos del usuario: por eso va a target/. Se renderiza la
# plantilla REAL de este árbol y se pregunta a git, no a un grep.
sed 's/{{binary}}/manif/g' "$ROOT/templates/gitignore" > "$P/.gitignore"
( cd "$P" && git init -q . ) > /dev/null 2>&1
( cd "$P" && git status --porcelain --untracked-files=all ) > "$GATE_TMP/gst" 2>&1
if [ -x "$P/target/manif-otro" ] && ! grep -q 'manif-otro' "$GATE_TMP/gst" \
   && grep -q '^?? src/otro.nx$' "$GATE_TMP/gst"; then
    ok "main-gitignore — el .gitignore sembrado cubre target/manif-otro (git no lo lista)"
else
    bad "main-gitignore — git lista el artefacto de --main o no ve el proyecto" "main-gitignore"
    sed 's/^/      git: /' "$GATE_TMP/gst"
fi
# CONTROL NEGATIVO: un archivo legítimo con nombre <name>-algo en la raíz (un
# script sin extensión) tiene que seguir visible — si no, la cobertura de
# arriba se consiguió tapando archivos del usuario.
printf '#!/bin/sh\necho deploy\n' > "$P/manif-deploy"
( cd "$P" && git status --porcelain --untracked-files=all ) > "$GATE_TMP/gst" 2>&1
if grep -q '^?? manif-deploy$' "$GATE_TMP/gst"; then
    ok "main-gitignore-legitimo — ./manif-deploy del usuario sigue visible para git"
else
    bad "main-gitignore-legitimo — el .gitignore sembrado esconde ./manif-deploy" "main-gitignore-legitimo"
    sed 's/^/      git: /' "$GATE_TMP/gst"
fi

echo "────────────────────────────────────────────────"
echo "  BUILD MANIFEST: $PASS pasados, $FAIL fallidos"
if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
exit 0
