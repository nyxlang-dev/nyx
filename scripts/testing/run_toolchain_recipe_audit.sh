#!/usr/bin/env bash
# run_toolchain_recipe_audit.sh — friction A10 (2026-07-31) + capa nyx_os_* (W1, 2026-08-20).
#
# ES: std/llm estuvo publicado e INUSABLE para usuarios del toolchain instalado
# durante meses, porque `llama_adapter.c` faltaba en las DOS recetas de link
# (scripts/nyx y compiler/build.nx) mientras el Makefile del monorepo sí lo
# tenía — todos los gates internos verdes, todos los usuarios rotos. Esas DOS
# recetas son las únicas que un usuario EXTERNO corre (scripts/nyx = wrapper
# instalado, compiler/build.nx = `nyx build`): esta parte del audit sigue
# exigiendo que TODO runtime/*.c aparezca en ambas, sin cambios.
#
# EN: std/llm shipped UNUSABLE to installed-toolchain users for months,
# because `llama_adapter.c` was missing from the two link recipes
# (scripts/nyx and compiler/build.nx) while the monorepo Makefile had it —
# every internal gate green, every user broken. Those TWO recipes are the
# only ones an EXTERNAL user ever runs (scripts/nyx = installed wrapper,
# compiler/build.nx = `nyx build`): this part of the audit keeps requiring
# every runtime/*.c to appear in both, unchanged.
#
# W1 (2026-08-20, Task 6): Tasks 3-5 migraron thread.c/tls.c/event_loop.c/
# runtime.c/scheduler.c a la capa nyx_os_* — CUALQUIER receta que linkee esos
# .c ahora también necesita runtime/os/os_posix.c (o os_wasm.c en WASM), o el
# link falla con símbolos os_* indefinidos. Mantener una lista fija de recetas
# para ESE chequeo quedó vieja rápido (Tasks 3-4 encontraron 18 listas de
# fuentes del runtime en el repo, no las 5-7 que se habían mapeado a mano):
# de acá en más las recetas Linux/WASM se DESCUBREN grepeando el propio repo
# por el patrón que las delata (listan `runtime/thread.c` o
# `runtime/wasi/nyx_arena.c`), y CADA una descubierta debe tener
# os_posix.c/os_wasm.c — sin excepciones, es el invariante nuevo que este
# audit existe para cazar. Los archivos de Windows (hoy solo win_w0_hello.c)
# se auditan aparte contra .github/workflows/windows.yml.
#
# EN: Tasks 3-5 migrated thread.c/tls.c/event_loop.c/runtime.c/scheduler.c
# onto the nyx_os_* layer — ANY recipe that links those .c files now also
# needs runtime/os/os_posix.c (or os_wasm.c for WASM), or the link fails with
# undefined os_* symbols. Keeping a fixed recipe list for THAT check went
# stale fast (Tasks 3-4 found 18 runtime-source lists in the repo, not the
# 5-7 that had been mapped by hand): from here on, Linux/WASM recipes are
# DISCOVERED by grepping the repo for the telltale pattern (they list
# `runtime/thread.c` or `runtime/wasi/nyx_arena.c`), and EVERY discovered one
# must have os_posix.c/os_wasm.c — no exceptions, that is the new invariant
# this audit exists to catch. Windows-only files (today just
# win_w0_hello.c) are audited separately against
# .github/workflows/windows.yml.
#
# set -u sin pipefail (regla del repo).
set -u
cd "$(dirname "$0")/../.."

FAIL=0
check() {
    local base=$1 recipe=$2
    if ! grep -q "$base" "$recipe"; then
        echo "  ✗ $base falta en $recipe"
        FAIL=$((FAIL + 1))
    fi
}

# --- (A10, sin cambios) Las 2 recetas canónicas del toolchain INSTALADO
#     exigen los 24 runtime/*.c COMPLETOS (más os_posix.c, ya que también
#     linkean la capa nyx_os_*).
CANONICAL_RECIPES="scripts/nyx compiler/build.nx"
RUNTIME_BASES=$(ls runtime/*.c | xargs -n1 basename)
for r in $CANONICAL_RECIPES; do
    for b in $RUNTIME_BASES; do check "$b" "$r"; done
    check os_posix.c "$r"
done

# --- Descubrimiento: solo archivos TRACKEADOS por git (`git ls-files`), no
#     `find` sobre el árbol — evita ruido de artefactos de build no
#     versionados que igual matchean el patrón por texto (medido: script.nx,
#     la copia temporal que `make build-test`/`make compile` dejan tirada,
#     re-descubría compiler/test.nx bajo otro nombre). Filtramos a
#     .sh/.nx/Makefile/.yml, fuera de .superpowers/, tests/spikes/, docs/.
#
# Recetas Linux: cualquiera de esos archivos que liste runtime/thread.c (o
# $RT/thread.c, $NYX_HOME/runtime/thread.c) — es decir, que linkee el runtime
# completo. .github/workflows/windows.yml se excluye A PROPÓSITO de esta
# regla: lista solo un subconjunto para el hello-world de W0 (nunca el
# runtime posix completo), y aunque hoy ni siquiera matchea el grep (no
# menciona thread.c), un cambio futuro no debería hacer que se le exija
# os_posix.c — windows usa os_win32.c. Este mismo script también se excluye
# a sí mismo: sus propios comentarios mencionan esas rutas como texto, lo
# cual lo hacía auto-descubrirse como receta (falso positivo medido al
# escribir esto).
# run_os_layer_ratchet.sh se excluye por el mismo motivo que este script:
# menciona runtime/os y las rutas del runtime SOLO como texto (greps y
# comentarios), nunca copia ni linkea — pasaba la regla del glob "por
# casualidad" (mención ≠ cobertura, hallazgo de la re-review de Task 6).
TRACKED_RECIPE_FILES=$(git ls-files -- '*.sh' '*.nx' '**/Makefile' 'Makefile' '*.yml' \
    | grep -v '^\.superpowers/' | grep -v '^tests/spikes/' | grep -v '^docs/' \
    | grep -v '^\.github/workflows/windows\.yml$' \
    | grep -v '^scripts/testing/run_toolchain_recipe_audit\.sh$' \
    | grep -v '^scripts/testing/run_os_layer_ratchet\.sh$')
mapfile -t LINUX_RECIPES < <(
    printf '%s\n' "$TRACKED_RECIPE_FILES" \
    | xargs -d '\n' grep -lE '(runtime/|\$RT/|\$NYX_HOME/runtime/)thread\.c' 2>/dev/null \
    | LC_ALL=C sort
)
for r in "${LINUX_RECIPES[@]:-}"; do
    [ -n "$r" ] && check os_posix.c "$r"
done

# Recetas WASM: cualquiera de esos mismos archivos que liste
# runtime/wasi/nyx_arena.c. Nota: Makefile, compiler/build.nx y
# playground/server.nx aparecen en AMBAS listas (Linux y WASM) — cada uno
# tiene una sección de runtime "nativo" y otra de runtime "wasm" en el mismo
# archivo, así que matchean los dos greps y se auditan por las dos reglas,
# cada una independiente.
mapfile -t WASM_RECIPES < <(
    printf '%s\n' "$TRACKED_RECIPE_FILES" \
    | xargs -d '\n' grep -l 'nyx_arena\.c' 2>/dev/null \
    | LC_ALL=C sort
)
for r in "${WASM_RECIPES[@]:-}"; do
    [ -n "$r" ] && check os_wasm.c "$r"
done

# --- Recetas por GLOB (hallazgo Critical del review de Task 6): el glob bash
#     `runtime/*.c` NO desciende a subdirectorios — un script que linkea o
#     copia el runtime con ese glob nunca arrastra runtime/os/ y muere con
#     símbolos os_* indefinidos (o publica/empaqueta un runtime incompleto).
#     4 scripts estaban rotos así EN VERDE: run_integration_tests.sh,
#     build-release.sh, sync_to_public.sh, llm-real-demo.sh. Regla: todo
#     archivo trackeado que contenga el string literal `runtime/*.c` debe
#     mencionar `runtime/os` aparte (os_posix.c explícito en el link, o un
#     cp/mkdir de runtime/os/ junto al cp del glob).
#
# EN: bash's `runtime/*.c` glob does NOT descend into subdirectories — a
# script linking or copying the runtime via that glob never picks up
# runtime/os/ and dies with undefined os_* symbols (or ships an incomplete
# runtime). Rule: any tracked file containing the literal string
# `runtime/*.c` must also mention `runtime/os` separately.
#
# Limitaciones CONOCIDAS de esta regla (re-review de Task 6, fichadas):
# (a) es una heurística de MENCIÓN, no de cobertura — un archivo que nombre
#     `runtime/os` en un comentario pasa aunque su línea de cp/link real no
#     lleve la capa; (b) el barrido solo cubre .sh/.nx/Makefile/.yml — los
#     fallbacks Python de tests/integration (os.listdir NO recursivo, misma
#     clase de bug) se arreglaron a mano y quedan FUERA del barrido.
mapfile -t GLOB_RECIPES < <(
    printf '%s\n' "$TRACKED_RECIPE_FILES" \
    | xargs -d '\n' grep -lF 'runtime/*.c' 2>/dev/null \
    | LC_ALL=C sort
)
for r in "${GLOB_RECIPES[@]:-}"; do
    if [ -n "$r" ] && ! grep -q 'runtime/os' "$r"; then
        echo "  ✗ $r consume el glob runtime/*.c (sin subdirs) y no menciona runtime/os"
        FAIL=$((FAIL + 1))
    fi
done

# --- Windows: runtime/os/*.c que NO sea os_posix.c/os_wasm.c (hoy solo
#     win_w0_hello.c) debe estar mencionado en windows.yml.
for src in runtime/os/*.c; do
    base=$(basename "$src")
    case "$base" in
        os_posix.c|os_wasm.c) ;;
        *) check "$base" .github/workflows/windows.yml ;;
    esac
done

echo "  recetas Linux descubiertas: ${#LINUX_RECIPES[@]} (+ 2 canónicas: scripts/nyx, compiler/build.nx) — recetas WASM descubiertas: ${#WASM_RECIPES[@]} — consumidores del glob runtime/*.c: ${#GLOB_RECIPES[@]}"

if [ "$FAIL" -gt 0 ]; then
    echo "  audit de recetas del toolchain: FALLÓ ($FAIL faltante(s))"
    echo "  (un runtime/*.c u os_posix.c/os_wasm.c fuera de una receta = feature"
    echo "   publicada que no linkea para usuarios, con todos los gates internos"
    echo "   verdes — friction A10, extendida a la capa nyx_os_* en W1)"
    exit 1
fi
echo "  ✓ audit de recetas: scripts/nyx + build.nx completos (A10); os_posix.c/os_wasm.c en toda receta descubierta; runtime/os/*.c no-posix/wasm en windows.yml"
exit 0
