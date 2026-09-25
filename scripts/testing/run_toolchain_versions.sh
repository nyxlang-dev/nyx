#!/usr/bin/env bash
# run_toolchain_versions.sh — el toolchain con versiones lado a lado (arco
# toolchain-atomico, scripts/nyx_toolchain.sh) hace lo que promete.
#
# Por qué existe: ~/.nyx es el toolchain de TODO lo que compila en la máquina.
# Antes instalar lo reescribía en su lugar y una suite ajena a mitad de corrida
# mezclaba dos compiladores (nyxerp, 2026-09-18 y 09-20); el candado global lo
# evitaba haciéndolas esperar. Ahora cada versión se arma aparte y se activa con
# un rename. Esta guarda fija, sobre un HOME falso (nunca el ~/.nyx real):
#   1. `make install-local` sobre un layout PLANO lo migra (versions/legado-…,
#      current, active, symlinks de compatibilidad en la raíz) y activa la nueva;
#   2. el wrapper resuelve la ruta REAL de la versión, también con NYX_HOME=raíz,
#      y los lectores directos (~/.nyx/bin, ~/.nyx/VERSION) siguen andando;
#   3. un programa que corre con la versión A sigue y termina bien mientras otro
#      install activa la B, y la poda (NYX_KEEP_VERSIONS=0) NO borra A mientras
#      está en uso; cuando termina, sí.
# Sin red ni compilación del compilador. Corre en disco (NYX_TC_TEST_DIR,
# /var/tmp por omisión): /tmp es un tmpfs chico compartido con otras sesiones.
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT" || exit 1
for b in nyx_bootstrap nyx_build nyx_check nyx_vet nyx_fmt nyx_test; do
    [ -x "./$b" ] || { echo "  ✗ falta ./$b (make bootstrap / build-*)"; exit 1; }
done
command -v flock >/dev/null 2>&1 || { echo "  ⚠ SKIP run_toolchain_versions: sin flock"; exit 0; }
BASE="${NYX_TC_TEST_DIR:-/var/tmp}"
F="$(mktemp -d "$BASE/nyx-tc-XXXXXX")" || exit 1
trap 'rm -rf "$F"' EXIT
fallos=0
ok()  { echo "  ✓ $1"; }
mal() { echo "  ✗ $1"; fallos=$((fallos + 1)); }
LOCKS="${NYX_TESTROOT_LOCK:-$F/root.lock}"

echo "── toolchain versionado (HOME falso en $F) ──"
# Layout plano mínimo, como el que deja una instalación vieja.
R="$F/.nyx"
mkdir -p "$R/bin" "$R/scripts"
cp nyx_bootstrap "$R/bin/nyx"; cp nyx_bootstrap nyx_build nyx_check nyx_vet nyx_fmt nyx_test "$R/"
cp -r runtime std templates "$R/"; cp VERSION LLM.md CHANGELOG.md "$R/"
cp scripts/nyx scripts/nyx_toolchain.sh scripts/dist-clean.sh "$R/scripts/"

inst() { env -u NYX_HOME HOME="$F" NYX_TESTROOT_LOCK="$LOCKS" "$@" make install-local 2>&1; }

# 1. Migración + primera versión.
out=$(inst); rc=$?
if [ "$rc" -eq 0 ] && [ -f "$R/current" ] && [ -L "$R/active" ] && [ -L "$R/bin" ] \
   && ls "$R/versions" | grep -q '^legado-' && [ -d "$R/versions/$(cat "$R/current")" ]; then
    ok "install-local migra el layout plano y activa la versión nueva"
else
    mal "migración/instalación (rc=$rc): $(echo "$out" | tail -2 | tr '\n' ' ')"
fi
A="$(cat "$R/current" 2>/dev/null)"

# 2. Resolución del wrapper y lectores directos.
mkdir -p "$F/p/src"; cd "$F/p" || exit 1
printf '[package]\nname = "p"\nversion = "0.1.0"\n' > nyx.toml
printf 'fn main() -> int {\n    println("hola")\n    return 0\n}\n' > src/main.nx
h1=$(env -u NYX_HOME HOME="$F" bash "$R/scripts/nyx" --version 2>&1 | sed -n 's/^  home: *//p')
h2=$(env HOME="$F" NYX_HOME="$R" bash "$R/scripts/nyx" --version 2>&1 | sed -n 's/^  home: *//p')
if [ "$h1" = "$R/versions/$A" ] && [ "$h2" = "$R/versions/$A" ]; then
    ok "el wrapper fija la ruta real de la versión (por el symlink y con NYX_HOME=raíz)"
else
    mal "resolución del wrapper: '$h1' / '$h2' (esperado $R/versions/$A)"
fi
if [ -x "$R/bin/nyx" ] && [ "$(cat "$R/VERSION")" = "$(cat "$ROOT/VERSION")" ] \
   && env -u NYX_HOME HOME="$F" XDG_CACHE_HOME="$F/cache" bash "$R/scripts/nyx" build >/dev/null 2>&1 && [ "$(./p)" = "hola" ]; then
    ok "lectores directos (~/.nyx/bin, ~/.nyx/VERSION) y nyx build andan"
else
    mal "lectores directos o nyx build sobre el layout nuevo"
fi

# 3. Versión en uso durante un install + poda.
printf 'fn main() -> int {\n    sleep(15000)\n    println("A termino bien")\n    return 0\n}\n' > largo.nx
( env -u NYX_HOME HOME="$F" XDG_CACHE_HOME="$F/cache" bash "$R/scripts/nyx" largo.nx > "$F/largo.out" 2>&1 & )
t=0; until pgrep -f "scripts/nyx largo.nx" >/dev/null 2>&1 || [ "$t" -ge 30 ]; do sleep 1; t=$((t + 1)); done
cd "$ROOT" || exit 1
out=$(inst NYX_KEEP_VERSIONS=0); rc=$?
B="$(cat "$R/current")"
if [ "$rc" -eq 0 ] && [ "$B" != "$A" ] && [ -d "$R/versions/$A" ] && ! ls "$R/versions" | grep -q '^legado-'; then
    ok "otro install activa B; la poda conserva A (en uso) y borra la versión libre"
else
    mal "flip/poda con A en uso (rc=$rc, A=$A, B=$B): $(ls "$R/versions" | tr '\n' ' ')"
fi
t=0; until grep -q "termino" "$F/largo.out" 2>/dev/null || [ "$t" -ge 60 ]; do sleep 1; t=$((t + 1)); done
sleep 1
grep -q "A termino bien" "$F/largo.out" && ok "el programa que usaba A terminó bien tras el cambio de versión" \
    || mal "el programa con A no terminó bien: $(cat "$F/largo.out" | tail -2)"
bash -c ". scripts/nyx_toolchain.sh; nyx_tc_podar '$R' 0" >/dev/null 2>&1
[ ! -d "$R/versions/$A" ] && [ -d "$R/versions/$B" ] && ok "libre A, la poda la borra y B queda" \
    || mal "poda tras liberar A: $(ls "$R/versions" | tr '\n' ' ')"

# 4. Una versión FIJADA (.fijada) no se poda aunque nadie la use: se fija la
#    activa (B), se instala otra encima con KEEP=0 y B tiene que quedar.
echo "red de seguridad" > "$R/versions/$B/.fijada"
out=$(inst NYX_KEEP_VERSIONS=0); C="$(cat "$R/current")"
[ -d "$R/versions/$B" ] && [ "$C" != "$B" ] && ok "una versión .fijada sobrevive a la poda sin estar en uso" \
    || mal "la poda borró una versión .fijada: $(ls "$R/versions" | tr '\n' ' ')"

if [ "$fallos" -gt 0 ]; then echo "  toolchain versionado: FALLÓ ($fallos)"; exit 1; fi
echo "  toolchain versionado: PASS"
