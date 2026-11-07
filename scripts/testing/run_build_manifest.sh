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

# Un triple de Windows fuera de lo soportado armaba NATIVO, decía «build complete»
# y salía 0 (fricción nyxerp 2026-10-29: un ELF de aarch64 donde se pidió un .exe).
# Tiene que fallar, decir por qué y no dejar ningún binario. x86_64-pc-windows-msvc
# SÍ se arma desde Linux (arco win-cross, run_build_win_cross.sh); aarch64 no (D6).
mk_proj "$P" "$PKG"
rm -f "$P/manif"
nb "$P" build --target aarch64-pc-windows-msvc
if [ "$RC" -ne 0 ] && grep -q "todavía no arma ejecutables para aarch64-pc-windows-msvc" "$GATE_TMP/out" && [ ! -e "$P/manif" ]; then
    ok "build-target-windows — aarch64-pc-windows-msvc se rechaza con su motivo, sin dejar un binario nativo"
else
    bad "build-target-windows — rc $RC: un triple de Windows armó nativo o no dijo por qué" "build-target-windows"; muestra
fi

# El triple x86_64 de Windows, sin sysroot ni deps, dice QUÉ falta (y tampoco deja binario).
mk_proj "$P" "$PKG"
rm -f "$P/manif" "$P/manif.exe" "$P/target/manif.exe"
( cd "$P" && NYX_WIN_SYSROOT="" NYX_WIN_DEPS="" NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_build" build --target x86_64-pc-windows-msvc ) > "$GATE_TMP/out" 2>&1
RC=$?
if [ "$RC" -ne 0 ] && grep -q "para armar un .exe falta" "$GATE_TMP/out" && grep -q "NYX_WIN_SYSROOT" "$GATE_TMP/out" && [ ! -e "$P/manif" ]; then
    ok "build-target-windows-falta — sin NYX_WIN_SYSROOT/NYX_WIN_DEPS el cruzado dice qué falta"
else
    bad "build-target-windows-falta — rc $RC: no dijo qué falta para el .exe" "build-target-windows-falta"; muestra
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

# ── Linux cruzado (arco compilacion-cruzada-linux) ───────────
# `--target <x86_64|aarch64>-unknown-linux-gnu`: el triple del host compila
# nativo; el otro pasa --target a clang y enlaza con lld. Hasta el 2026-10-30 los
# dos daban «target desconocido». Los casos que necesitan las bibliotecas del
# otro destino (multiarch de Debian) hacen SKIP limpio si no están: sin ellas
# el build falla por el sistema, no por nyx, y contarlo como fallo manda a
# investigar al lugar equivocado.
HOST_ARCH="$(uname -m)"
case "$HOST_ARCH" in
    x86_64)  OTRO_ARCH=aarch64; OTRO_FILE='ARM aarch64' ;;
    aarch64) OTRO_ARCH=x86_64;  OTRO_FILE='x86-64' ;;
    *)       OTRO_ARCH="" ;;
esac
HOST_TRIPLE="$HOST_ARCH-unknown-linux-gnu"
P="$GATE_TMP/cruzado"

# Un triple Linux mal escrito se rechaza y el mensaje lista los válidos.
mk_proj "$P" "$PKG"
nb "$P" build --target x86_64-unknown-linux-gnux
if [ "$RC" -ne 0 ] && grep -q "target desconocido: x86_64-unknown-linux-gnux" "$GATE_TMP/out" \
   && grep -q "x86_64-unknown-linux-gnu, aarch64-unknown-linux-gnu, aarch64-linux-android, x86_64-pc-windows-msvc y wasm32-wasi" "$GATE_TMP/out"; then
    ok "cruzado-desconocido — un triple Linux con typo se rechaza y se listan los válidos"
else
    bad "cruzado-desconocido — rc $RC sin «target desconocido» ni la lista de triples" "cruzado-desconocido"; muestra
fi

# CONTROL POSITIVO: el triple del host construye, va a target/<triple>/, corre,
# y no deja ./manif (no pisa el binario nativo).
if [ "$HOST_ARCH" != x86_64 ] && [ "$HOST_ARCH" != aarch64 ]; then
    echo "  ⏭️  cruzado-nativo-explicito — SKIP: host $HOST_ARCH sin triple Linux soportado"
else
    mk_proj "$P" "$PKG"
    rm -f "$P/manif"
    nb "$P" build --target "$HOST_TRIPLE"
    if [ "$RC" -eq 0 ] && [ -x "$P/target/$HOST_TRIPLE/manif" ] && [ ! -e "$P/manif" ] \
       && [ "$("$P/target/$HOST_TRIPLE/manif")" = "soy main" ]; then
        ok "cruzado-nativo-explicito — --target $HOST_TRIPLE construye en target/$HOST_TRIPLE/ y corre"
    else
        bad "cruzado-nativo-explicito — rc $RC o el binario no está en target/$HOST_TRIPLE/ o no corre" "cruzado-nativo-explicito"; muestra
    fi
    nb "$P" run --target "$HOST_TRIPLE"
    if [ "$RC" -eq 0 ] && grep -q "^soy main$" "$GATE_TMP/out"; then
        ok "cruzado-run-nativo — nyx run --target $HOST_TRIPLE ejecuta el artefacto de target/<triple>/"
    else
        bad "cruzado-run-nativo — rc $RC sin «soy main»" "cruzado-run-nativo"; muestra
    fi
fi

# Sin lld (o sin las bibliotecas del destino), el build cruzado dice qué falta y
# el comando apt ANTES de compilar, en vez de un error de enlace de clang. Se
# simula con un PATH que tiene todo /usr/bin menos ld.lld: el diagnóstico lo
# busca con `command -v`, así que corta ahí aunque el sistema sí lo tenga.
if [ -n "$OTRO_ARCH" ]; then
    FAKEBIN="$GATE_TMP/fakebin"; mkdir -p "$FAKEBIN"
    for b in /usr/bin/*; do
        case "$(basename "$b")" in ld.lld*|lld*) continue ;; esac
        ln -sf "$b" "$FAKEBIN/" 2>/dev/null
    done
    mk_proj "$P" "$PKG"
    ( cd "$P" && PATH="$FAKEBIN" NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_build" build --target "$OTRO_ARCH-unknown-linux-gnu" ) > "$GATE_TMP/out" 2>&1
    RC=$?
    if [ "$RC" -ne 0 ] && grep -q "faltan:.*lld" "$GATE_TMP/out" && grep -q "dpkg --add-architecture" "$GATE_TMP/out" \
       && ! grep -q "clang link failed" "$GATE_TMP/out" && [ ! -e "$P/target/$OTRO_ARCH-unknown-linux-gnu/manif" ]; then
        ok "cruzado-falta-multiarch — sin lld se dice qué falta y el comando apt, sin llegar a clang"
    else
        bad "cruzado-falta-multiarch — rc $RC sin el diagnóstico (o llegó al enlace)" "cruzado-falta-multiarch"; muestra
    fi
fi

# El otro destino de verdad: solo con sus bibliotecas y lld instalados.
OTRO_TRIPLE="$OTRO_ARCH-unknown-linux-gnu"
otro_listo() {
    [ -n "$OTRO_ARCH" ] && command -v ld.lld > /dev/null 2>&1 || return 1
    local l p
    for l in libc.so libgc.so libssl.so libcrypto.so libz.so crtbeginS.o; do
        p="$(clang --target="$OTRO_TRIPLE" -print-file-name="$l" 2>/dev/null)"
        case "$p" in /*) [ -e "$p" ] || return 1 ;; *) return 1 ;; esac
    done
}
if ! otro_listo; then
    echo "  ⏭️  cruzado-otro-arch — SKIP: faltan lld o las bibliotecas multiarch de $OTRO_TRIPLE"
else
    mk_proj "$P" "$PKG"
    rm -f "$P/manif"
    nb "$P" build --target "$OTRO_TRIPLE"
    if [ "$RC" -eq 0 ] && file -b "$P/target/$OTRO_TRIPLE/manif" | grep -q "$OTRO_FILE" && [ ! -e "$P/manif" ]; then
        ok "cruzado-otro-arch — --target $OTRO_TRIPLE da un ELF $OTRO_FILE en target/$OTRO_TRIPLE/"
    else
        bad "cruzado-otro-arch — rc $RC o el binario no es $OTRO_FILE" "cruzado-otro-arch"; muestra
        file "$P/target/$OTRO_TRIPLE/manif" 2>&1 | sed 's/^/      /'
    fi
    # Ejecutarlo solo con un emulador a mano; si no, alcanza con `file`.
    QEMU="$(command -v "qemu-$OTRO_ARCH" 2>/dev/null || true)"
    if [ -n "$QEMU" ] && [ -x "$P/target/$OTRO_TRIPLE/manif" ]; then
        if [ "$("$QEMU" "$P/target/$OTRO_TRIPLE/manif" 2>/dev/null)" = "soy main" ]; then
            ok "cruzado-otro-arch-corre — el binario $OTRO_ARCH corre bajo qemu"
        else
            bad "cruzado-otro-arch-corre — bajo qemu no imprimió «soy main»" "cruzado-otro-arch-corre"
        fi
    fi
    # `nyx run` con el triple de otra arquitectura no ejecuta nada: dice por qué.
    nb "$P" run --target "$OTRO_TRIPLE"
    if [ "$RC" -ne 0 ] && grep -q "esta máquina no lo puede ejecutar" "$GATE_TMP/out"; then
        ok "cruzado-run-otro — nyx run --target $OTRO_TRIPLE dice que aquí no se ejecuta"
    else
        bad "cruzado-run-otro — rc $RC sin el motivo" "cruzado-run-otro"; muestra
    fi
fi

# ── `nyx build` sin bash (W6 Task 2) ────────────────────────
# El build armaba un script de bash en /tmp y lo corría con `bash`; en Windows
# no hay bash. Se corre con un PATH que SOLO tiene clang y el enlazador —ni sh
# ni bash— y un TMPDIR propio: tiene que compilar, el binario tiene que correr,
# y no puede aparecer un .sh de nyx ni en TMPDIR ni en /tmp (se mira DURANTE el
# build: el script viejo se borraba solo al terminar). Las dos formas: un
# programa suelto y uno con [lib] modules, que tenía su propio script.
SINSH="$GATE_TMP/sinsh"
rm -rf "$SINSH"; mkdir -p "$SINSH/bin" "$SINSH/tmp"
for prog in clang ld; do
    pth="$(command -v "$prog" 2>/dev/null || true)"
    [ -n "$pth" ] && ln -s "$(readlink -f "$pth")" "$SINSH/bin/$prog"
done
# nb_sinsh DIR ARGS… — como nb, con PATH y TMPDIR recortados; vigila los .sh.
nb_sinsh() {
    local dir="$1"; shift
    ( cd "$dir" && exec timeout 300 env -i HOME="$HOME" PATH="$SINSH/bin" TMPDIR="$SINSH/tmp" NYX_HOME="$ROOT" \
        "$ROOT/nyx_build" "$@" ) > "$GATE_TMP/out" 2>&1 &
    local pid=$!
    # En /tmp cuentan solo los que aparecen durante ESTE build: uno viejo de otra
    # corrida (un build que murió antes de su `rm`) no es de este.
    ls /tmp 2>/dev/null | grep -E '^nyx_(build|libs)_.*\.sh$' | sort > "$GATE_TMP/antes"
    : > "$GATE_TMP/vistos"
    while kill -0 "$pid" 2>/dev/null; do
        ls "$SINSH/tmp" 2>/dev/null | grep -E '\.sh$' >> "$GATE_TMP/vistos"
        ls /tmp 2>/dev/null | grep -E '^nyx_(build|libs)_.*\.sh$' | sort | comm -13 "$GATE_TMP/antes" - >> "$GATE_TMP/vistos"
        sleep 0.05
    done
    wait "$pid"; RC=$?
    ls "$SINSH/tmp" 2>/dev/null | grep -E '\.sh$' >> "$GATE_TMP/vistos"
}
if [ ! -e "$SINSH/bin/clang" ] || [ ! -e "$SINSH/bin/ld" ]; then
    echo "  ⏭️  sin-bash — SKIP: no encontré clang y ld para armar el PATH recortado"
else
    # CONTROL: el PATH recortado de verdad no tiene un shell.
    if [ -e "$SINSH/bin/sh" ] || [ -e "$SINSH/bin/bash" ] || env -i PATH="$SINSH/bin" /usr/bin/env sh -c true 2>/dev/null; then
        bad "sin-bash-control — el PATH recortado deja ver un shell" "sin-bash-control"
    fi
    P="$GATE_TMP/sinsh-prog"
    mk_proj "$P" "$PKG"
    nb_sinsh "$P" build
    if [ "$RC" -eq 0 ] && [ -x "$P/manif" ] && [ "$( cd "$P" && ./manif )" = "soy main" ] && [ ! -s "$GATE_TMP/vistos" ] && [ -z "$(ls -A "$SINSH/tmp")" ]; then
        ok "sin-bash — nyx build compila y enlaza con un PATH sin sh ni bash, sin scripts y sin dejar temporales"
    else
        bad "sin-bash — rc $RC; binario: $([ -x "$P/manif" ] && echo sí || echo no); scripts vistos: $(sort -u "$GATE_TMP/vistos" | tr '\n' ' ')" "sin-bash"; muestra
    fi
    P="$GATE_TMP/sinsh-lib"
    mk_proj "$P" "$PKG

[lib]
modules = [\"src/util\"]"
    cat > "$P/src/util.nx" <<'EOF'
pub fn saludo() -> String { return "soy la lib" }
EOF
    cat > "$P/src/main.nx" <<'EOF'
import "src/util"
fn main() -> int {
    print(saludo())
    return 0
}
EOF
    nb_sinsh "$P" build
    if [ "$RC" -eq 0 ] && [ -x "$P/manif" ] && [ "$( cd "$P" && ./manif )" = "soy la lib" ] \
       && ls "$P/target/nyx-lib/" 2>/dev/null | grep -q '^src_util-.*\.o$' && [ ! -s "$GATE_TMP/vistos" ]; then
        ok "sin-bash-lib — con [lib] modules también: el objeto de la lib en target/nyx-lib/, sin scripts"
    else
        bad "sin-bash-lib — rc $RC; scripts vistos: $(sort -u "$GATE_TMP/vistos" | tr '\n' ' ')" "sin-bash-lib"; muestra
        ls "$P/target/nyx-lib/" 2>&1 | sed 's/^/      lib: /' | head -3
    fi
fi

# ── `nyx check|fmt` por el driver (Windows no tiene wrapper) ──
# nyx_check y nyx_fmt leen NYX_SRC y NUNCA sus argumentos: el driver pasaba la
# ruta como argumento y `nyx check roto.nx` daba rc 0 sobre un script.nx
# inexistente (laptop, win-cross T5, 2026-11-03). En Linux el wrapper lo hace
# bien; acá se prueba el DRIVER (nyx_build) con NYX_HOME=repo, como en Windows.
P="$GATE_TMP/chk"; rm -rf "$P"; mkdir -p "$P"
printf 'fn main() -> int {\n    let x: int = "hola"\n    return 0\n}\n' > "$P/roto.nx"
printf 'fn main() -> int {\n  let   y:int=1\n    return y\n}\n' > "$P/feo.nx"
nb "$P" check roto.nx
if [ "$RC" -ne 0 ] && grep -q "NYX1003" "$GATE_TMP/out" && ! grep -qE '^(SYM|DEF|DIAG):|^END$' "$GATE_TMP/out"; then
    ok "driver-check-roto — nyx check <archivo> revisa ESE archivo: rc $RC con el diagnóstico, sin protocolo LSP"
else
    bad "driver-check-roto — rc $RC: el driver no revisó roto.nx (falso verde) o dejó pasar el protocolo" "driver-check-roto"; muestra
fi
nb "$P" check no-existe.nx
if [ "$RC" -ne 0 ] && grep -q "no existe el archivo" "$GATE_TMP/out"; then
    ok "driver-check-inexistente — archivo inexistente: rc $RC y lo dice"
else
    bad "driver-check-inexistente — rc $RC sin «no existe el archivo»" "driver-check-inexistente"; muestra
fi
printf 'fn main() -> int {\n    return 0\n}\n' > "$P/sano.nx"
nb "$P" check sano.nx
if [ "$RC" -eq 0 ] && [ ! -s "$GATE_TMP/out" ]; then
    ok "driver-check-sano — archivo sin errores: rc 0 y NINGUNA salida (el END del protocolo tampoco)"
else
    bad "driver-check-sano — rc $RC o salida de más ($(wc -c < "$GATE_TMP/out") bytes): se cuela el protocolo" "driver-check-sano"; muestra
fi
nb "$P" fmt feo.nx
if [ "$RC" -eq 0 ] && grep -q "^    let y: int = 1$" "$GATE_TMP/out"; then
    ok "driver-fmt — nyx fmt <archivo> imprime el código formateado"
else
    bad "driver-fmt — rc $RC: no imprimió el código formateado de feo.nx" "driver-fmt"; muestra
fi

# ── Huérfanos de `nyx build` (2026-11-05) ────────────────────
# Si matan un build (Ctrl+C, KILL, timeout) su `nyx_libs_<pid>_…`/`nyx_build_<pid>_…`
# quedaba en $TMPDIR para siempre. Ahora el build siguiente borra los de PIDs
# muertos; lo de un PID vivo, lo que no tiene la forma exacta y lo ajeno no se toca.
TDB="$GATE_TMP/td barrido"
mkdir -p "$TDB"
DEAD_PID=$(sh -c 'echo $$')
sleep 300 & LIVE_PID=$!
mkdir -p "$TDB/nyx_libs_${DEAD_PID}_1000_1/sub" "$TDB/nyx_build_${DEAD_PID}_1000_2" \
         "$TDB/nyx_build_${LIVE_PID}_1000_1" "$TDB/nyx_libs_${DEAD_PID}_x" "$TDB/nyx_build_${DEAD_PID}.sh"
: > "$TDB/nyx_libs_${DEAD_PID}_1000_1/sub/lib_0.ll"
P="$GATE_TMP/barrido-prog"
mk_proj "$P" "$PKG"
( cd "$P" && TMPDIR="$TDB" NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_build" build ) > "$GATE_TMP/out" 2>&1
RC=$?
if [ "$RC" -eq 0 ] && [ ! -e "$TDB/nyx_libs_${DEAD_PID}_1000_1" ] && [ ! -e "$TDB/nyx_build_${DEAD_PID}_1000_2" ]; then
    ok "barrido-muertos — un build borra los nyx_libs_/nyx_build_ de PIDs muertos en \$TMPDIR"
else
    bad "barrido-muertos — rc $RC; quedó: $(ls "$TDB" | tr '\n' ' ')" "barrido-muertos"; muestra
fi
if [ -d "$TDB/nyx_build_${LIVE_PID}_1000_1" ] && [ -d "$TDB/nyx_libs_${DEAD_PID}_x" ] && [ -d "$TDB/nyx_build_${DEAD_PID}.sh" ]; then
    ok "barrido-vivos — lo de un PID vivo y lo que no tiene la forma exacta no se toca"
else
    bad "barrido-vivos — el barrido borró algo en uso o de forma ajena: $(ls "$TDB" | tr '\n' ' ')" "barrido-vivos"
fi
RESTO=$(ls "$TDB" | grep -E "^nyx_(libs|build)_[0-9]+_[0-9]+_[0-9]+$" | grep -v "_${LIVE_PID}_")
if [ -z "$RESTO" ]; then
    ok "barrido-propio — el build no dejó su propio temporal en \$TMPDIR (con espacio)"
else
    bad "barrido-propio — quedó temporal del build: $RESTO" "barrido-propio"
fi
kill $LIVE_PID 2>/dev/null; wait $LIVE_PID 2>/dev/null

# ── Android arm64 / Termux (arco target-android) ─────────────
# `--target aarch64-linux-android` arma un PIE de bionic (linker64) con clang +
# lld contra el sysroot que deja scripts/build_android_deps.sh. Sin esas deps el
# caso hace SKIP limpio (y se comprueba aparte que el error dice cómo armarlas).
AND_DEPS="${NYX_ANDROID_DEPS:-$HOME/.cache/nyx-android-deps}"
P="$GATE_TMP/android"
# main que ENLAZA crypto.c y tls.c (sus __FILE__ son los que dejaban rutas del host;
# un hola mundo no los arrastra y la guarda android-sin-rutas pasaría en vacío).
mk_proj_android() {
    mk_proj "$1" "$PKG"
    cat > "$1/src/main.nx" <<'NXEOF'
import "std/tls"
fn main() -> int {
    let h: String = sha256("x")
    if h == "nunca" { let _c = tls_connect_verified("localhost", 1) }
    print("soy main")
    return 0
}
NXEOF
}
mk_proj_android "$P"
nb "$P" build --target aarch64-linux-android
if [ ! -f "$AND_DEPS/lib/libgc.a" ] || [ ! -d "$AND_DEPS/sysroot" ]; then
    if [ "$RC" -ne 0 ] && grep -q "scripts/build_android_deps.sh" "$GATE_TMP/out"; then
        ok "android-falta — sin deps el build dice cómo armarlas (scripts/build_android_deps.sh)"
    else
        bad "android-falta — rc $RC sin la receta de build_android_deps.sh" "android-falta"; muestra
    fi
    echo "  ⏭️  android-elf / android-estatico — SKIP: sin deps de Android en $AND_DEPS"
else
    if [ "$RC" -eq 0 ] && [ -x "$P/target/aarch64-linux-android/manif" ] && [ ! -e "$P/manif" ] \
       && file -b "$P/target/aarch64-linux-android/manif" | grep -q "ARM aarch64" \
       && file -b "$P/target/aarch64-linux-android/manif" | grep -q "/system/bin/linker64" \
       && file -b "$P/target/aarch64-linux-android/manif" | grep -q "for Android"; then
        ok "android-elf — --target aarch64-linux-android da un PIE aarch64 con linker64 en target/aarch64-linux-android/"
    else
        bad "android-elf — rc $RC o el ELF no es un PIE de Android" "android-elf"; muestra
        file "$P/target/aarch64-linux-android/manif" 2>&1 | sed 's/^/      /'
    fi
    # Sin rutas de esta máquina en el binario (__FILE__ de crypto.c/tls.c): las
    # tapa -ffile-prefix-map, como en el .exe de win-cross (fricción nyxerp 2026-11-07).
    if [ -f "$P/target/aarch64-linux-android/manif" ] \
       && ! grep -aqF "$ROOT/runtime" "$P/target/aarch64-linux-android/manif" \
       && ! grep -aqF "$AND_DEPS" "$P/target/aarch64-linux-android/manif"; then
        ok "android-sin-rutas — el binario no lleva rutas del runtime ni de las deps de esta máquina"
    else
        bad "android-sin-rutas — el binario lleva rutas del host" "android-sin-rutas"
        grep -aoF "$ROOT/runtime" "$P/target/aarch64-linux-android/manif" 2>/dev/null | sort -u | sed 's/^/      /'
    fi
    # nyx run no intenta ejecutar un PIE de bionic en el host.
    nb "$P" run --target aarch64-linux-android
    if [ "$RC" -ne 0 ] && grep -q "no ejecuta un artefacto de Android" "$GATE_TMP/out"; then
        ok "android-run — nyx run --target aarch64-linux-android dice que no lo ejecuta aquí"
    else
        bad "android-run — rc $RC sin el mensaje claro" "android-run"; muestra
    fi
    # Estático (NYX_ANDROID_STATIC=1, solo para probar): un kernel Linux arm64
    # normal lo ejecuta. Se salta si el host no es aarch64 o si el runtime todavía
    # no alinea el TLS a 64 (bionic estático lo exige y aborta).
    if [ "$HOST_ARCH" != aarch64 ]; then
        echo "  ⏭️  android-estatico — SKIP: el host $HOST_ARCH no ejecuta aarch64"
    else
        mk_proj_android "$P"
        ( cd "$P" && NYX_ANDROID_STATIC=1 NYX_HOME="$ROOT" timeout 300 "$ROOT/nyx_build" build --target aarch64-linux-android ) > "$GATE_TMP/out" 2>&1
        RC=$?
        SAL="$("$P/target/aarch64-linux-android/manif" 2>&1)"
        if [ "$RC" -eq 0 ] && [ "$SAL" = "soy main" ]; then
            ok "android-estatico — el binario estático de bionic corre y da «soy main»"
        elif [ "$RC" -eq 0 ] && echo "$SAL" | grep -q "TLS segment is underaligned"; then
            echo "  ⏭️  android-estatico — SKIP: el runtime aún no alinea el TLS a 64 (bionic estático aborta)"
        else
            bad "android-estatico — rc $RC o salida inesperada: $SAL" "android-estatico"; muestra
        fi
    fi
fi

echo "────────────────────────────────────────────────"
echo "  BUILD MANIFEST: $PASS pasados, $FAIL fallidos"
if [ "$FAIL" -gt 0 ]; then
    echo "  Fallidos: ${FAILED[*]}"
    exit 1
fi
exit 0
