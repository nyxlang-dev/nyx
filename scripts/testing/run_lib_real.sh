#!/usr/bin/env bash
# run_lib_real.sh — `[lib] modules` contra un proyecto REAL: una copia de nyxerp
# con TODOS sus módulos de src/ declarados en [lib].
#
# Por qué existe (2026-09-24, fricción nyxerp 040001-team-1): `[lib]` salió con
# una suite de casos sintéticos que probaba las formas de import que a alguien
# se le ocurrieron, y la forma que usan los proyectos de verdad —`import
# "src/x"` sin llaves, 3.372 de los 3.373 imports de nyxerp— no cruzaba la
# frontera. El primer `nyx build` del primer usuario real falló. Esta guarda
# prueba lo que usa un proyecto real, no lo que imaginamos que usa.
#
# Qué verifica, sobre una copia (nunca toca el repo de nyxerp):
#   1. `nyx build` con los ~170 módulos en [lib] compila y enlaza, y ninguno
#      cae al inlining sin avisar;
#   2. un subconjunto de sus pruebas —las más pesadas (facturación, punto de
#      venta) y las de módulos homónimos— pasa entero con [lib];
#   3. un segundo `nyx build` sin cambios reutiliza todos los objetos.
#
# SKIP limpio si no hay copia de nyxerp en la máquina (NYXERP_SRC, por omisión
# /home/admin/nyxerp): es un repo privado de otro equipo. Tarda minutos: vive en
# `make test-lib-real` (dentro de test-all), no en `make test`.
set -u
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
SRC="${NYXERP_SRC:-/home/admin/nyxerp}"
if [ ! -f "$SRC/nyx.toml" ] || [ ! -d "$SRC/src" ]; then
    echo "  ⚠ SKIP run_lib_real: no hay copia de nyxerp en $SRC (NYXERP_SRC)"
    exit 0
fi
for b in nyx_build nyx_test nyx_bootstrap; do
    [ -x "$ROOT/$b" ] || { echo "  ✗ falta $ROOT/$b"; exit 1; }
done
export NYX_HOME="$ROOT"
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT
P="$T/nyxerp"
fallos=0
ok()  { echo "  ✓ $1"; }
mal() { echo "  ✗ $1"; fallos=$((fallos + 1)); }

echo "── [lib] modules sobre nyxerp real ($(git -C "$SRC" log --oneline -1 2>/dev/null | cut -c1-60)) ──"
mkdir -p "$P"
# Solo lo que compila y prueba el proyecto. El árbol entero trae .git,
# target/ y .claude/worktrees (copias completas del repo): el 2026-09-24 esa
# copia llenó el /tmp de la máquina (tmpfs de 1,9 GB) y tumbó la suite de
# nyxerp. Si una prueba lee otra carpeta, se agrega con NYXERP_LIB_EXTRA.
for d in nyx.toml src tests ${NYXERP_LIB_EXTRA:-}; do
    [ -e "$SRC/$d" ] && cp -r "$SRC/$d" "$P/"
done
libre_kb=$(df -Pk "$T" | awk 'NR==2{print $4}')
if [ "${libre_kb:-0}" -lt 300000 ]; then
    echo "  ⚠ SKIP run_lib_real: menos de 300 MB libres en $(dirname "$T") — no se llena el disco de otros"
    exit 0
fi
cd "$P" || exit 1
rm -f nyxerp

# Todos los módulos de src/ salvo los puntos de entrada (los que tienen main).
mods=$(find src -name '*.nx' | LC_ALL=C sort | while read -r f; do
    grep -q '^fn main' "$f" && continue
    printf '"%s", ' "${f%.nx}"
done)
mods="${mods%, }"
n_mods=$(printf '%s' "$mods" | grep -o '"' | wc -l); n_mods=$((n_mods / 2))
# Un [lib] previo se reemplaza; el resto del manifiesto queda igual.
awk 'BEGIN{skip=0} /^\[lib\]/{skip=1; next} /^\[/{skip=0} !skip{print}' nyx.toml > nyx.toml.tmp
printf '\n[lib]\nmodules = [%s]\n' "$mods" >> nyx.toml.tmp
mv nyx.toml.tmp nyx.toml

# El código del PROYECTO puede no estar listo para [lib]: un módulo que usa una
# fn de otro sin importarlo compilaba inlineado (un solo espacio de nombres) y
# como biblioteca no. `nyx build` lo dice con una nota («'x' está en M … agrega
# import "M"», «le falta pub»). Eso no es un bug del compilador: se aplica la
# nota EN LA COPIA, se cuenta como aviso y se sigue — lo que la guarda mide es
# el compilador. Un error SIN nota (IR inválido, un NYX1002 que no se explica)
# sí la hace fallar.
t0=$(date +%s)
arreglos=0
for vuelta in 1 2 3 4 5 6 7 8 9 10; do
    out=$(bash "$ROOT/scripts/nyx" build 2>&1); rc=$?
    [ "$rc" -eq 0 ] && break
    mod=$(echo "$out" | sed -n 's/^error: nyx compile failed (\(.*\)):$/\1/p' | head -1)
    notas=$(echo "$out" | grep "^nota: '.*' está en ")
    [ -n "$mod" ] && [ -n "$notas" ] || break
    while IFS= read -r nota; do
        dest=$(echo "$nota" | sed -n 's/.*agrega  import "\(.*\)"$/\1/p')
        nom=$(echo "$nota" | sed -n "s/^nota: '\([A-Za-z_0-9]*\)'.*/\1/p")
        [ -n "$dest" ] || continue
        if ! grep -q "^import \"$dest\"" "$mod.nx"; then
            # Delimitador `|`: la ruta del import trae barras.
            if grep -q '^import ' "$mod.nx"; then sed -i "0,\|^import |s|^import |import \"$dest\"\nimport |" "$mod.nx"
            else sed -i "1i import \"$dest\"" "$mod.nx"; fi
        fi
        echo "$nota" | grep -q "le falta pub" && sed -i "s/^fn $nom(/pub fn $nom(/" "$dest.nx"
        arreglos=$((arreglos + 1))
        echo "  ⚠ código del proyecto no listo para [lib] (arreglado en la copia): $mod usa '$nom' de $dest"
    done <<< "$notas"
done
t1=$(date +%s)
n_lib=$(echo "$out" | grep -c '(lib)$')
if [ "$rc" -eq 0 ] && [ -x ./nyxerp ]; then
    ok "nyx build con $n_mods módulos en [lib]: compila y enlaza ($((t1 - t0)) s, $n_lib compilados como biblioteca)"
else
    mal "nyx build con [lib] (rc=$rc): $(echo "$out" | grep -E 'error' | head -3 | tr '\n' ' ')"
fi
n_302=$(echo "$out" | grep -c 'NYX0302')
[ "$n_302" -eq 0 ] && ok "ningún módulo cae al inlining (NYX0302)" \
    || echo "  ⚠ $n_302 módulo(s) caen al inlining con NYX0302 (visible, no es error)"

out=$(bash "$ROOT/scripts/nyx" build 2>&1)
if ! echo "$out" | grep -q '(lib)$' && echo "$out" | grep -q 'reusing'; then
    ok "segundo build sin cambios: reutiliza todos los objetos"
else
    mal "segundo build recompiló bibliotecas: $(echo "$out" | grep -c '(lib)$')"
fi

# Pruebas: las más pesadas y las de módulos homónimos (NYXERP_LIB_TESTS
# reemplaza la lista). Cada archivo tiene que dar ALL TESTS PASSED.
tests="${NYXERP_LIB_TESTS:-modulos_facturacion_operaciones_test modulos_pos_test modulos_precios_test modulos_inventario_test nucleo_usuarios_pantalla_test}"
for t in $tests; do
    [ -f "tests/$t.nx" ] || { echo "  ⚠ no existe tests/$t.nx (se salta)"; continue; }
    t0=$(date +%s)
    out=$(bash "$ROOT/scripts/nyx" test "tests/$t.nx" 2>&1); rc=$?
    t1=$(date +%s)
    if [ "$rc" -eq 0 ] && echo "$out" | grep -q "ALL TESTS PASSED"; then
        ok "$t con [lib]: $(echo "$out" | grep -oE 'Tests: +[0-9]+ passed' | head -1) ($((t1 - t0)) s)"
    else
        mal "$t con [lib] (rc=$rc): $(echo "$out" | grep -E 'error|FAIL' | head -3 | tr '\n' ' ')"
    fi
done

if [ "$fallos" -gt 0 ]; then echo "  [lib] sobre nyxerp: FALLÓ ($fallos)"; exit 1; fi
echo "  [lib] sobre nyxerp: PASS"
