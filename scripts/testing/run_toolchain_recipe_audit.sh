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
#     .sh/.nx/Makefile/.yml, fuera de .sdd/, tests/spikes/, docs/.
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
    | grep -v '^\.sdd/' | grep -v '^tests/spikes/' | grep -v '^docs/' \
    | grep -v '^\.github/workflows/windows\.yml$' \
    | grep -v '^scripts/testing/run_toolchain_recipe_audit\.sh$' \
    | grep -v '^scripts/testing/run_os_layer_ratchet\.sh$')

# Una MENCIÓN en prosa no es una receta. El descubrimiento greppea el nombre
# del .c sobre el archivo entero, así que un comentario que cita
# `runtime/wasi/nyx_arena.c` para explicar un diseño convertía a ese archivo en
# "receta WASM" y le exigía os_wasm.c — que no linkea nada porque no hay ningún
# link ahí. Las dos exclusiones de arriba (este script y run_os_layer_ratchet)
# son ESE mismo falso positivo resuelto a mano, archivo por archivo; no escala,
# y se comprobó: el arco wasm-closure-lifetime agregó tres comentarios nuevos
# (std/browser.nx, test-wasm-23, test-wasm-25) y el gate se puso rojo sin que
# nada dejara de linkear.
#
# recipe_body() descarta las líneas que son comentario COMPLETO (`//` en .nx,
# `#` en sh/Makefile/yml, con espacios adelante). Deliberadamente NO toca el
# comentario al final de una línea de código: recortar desde un `#` a mitad de
# línea puede comerse parte de un comando real (`${#var}`, un `#` entre
# comillas) y eso convertiría un falso positivo en un falso NEGATIVO, que es el
# error caro — una fuente fuera de una receta que el gate deja pasar.
recipe_body() {
    sed -E '/^[[:space:]]*(#|\/\/)/d' "$1"
}

# grep -l sobre el CUERPO (sin comentarios de línea completa) en vez del archivo.
recipes_matching() {
    local patron="$1"
    local f
    printf '%s\n' "$TRACKED_RECIPE_FILES" | while IFS= read -r f; do
        [ -n "$f" ] || continue
        [ -f "$f" ] || continue
        if recipe_body "$f" | grep -qE "$patron"; then printf '%s\n' "$f"; fi
    done | LC_ALL=C sort
}
mapfile -t LINUX_RECIPES < <(recipes_matching '(runtime/|\$RT/|\$NYX_HOME/runtime/)thread\.c')
for r in "${LINUX_RECIPES[@]:-}"; do
    [ -n "$r" ] && check os_posix.c "$r"
done

# Recetas WASM: cualquiera de esos mismos archivos que liste
# runtime/wasi/nyx_arena.c FUERA de un comentario. Hoy eso es exactamente uno,
# playground/server.nx. El Makefile y compiler/build.nx NO aparecen acá —y no
# es un agujero—: su lado wasm no nombra los .c, los lee de runtime/wasm.srcs,
# que es la fuente única de esa lista. Esa lista se audita aparte, abajo.
# (El comentario anterior afirmaba que Makefile y build.nx caían en AMBAS
# listas; era falso desde que wasm.srcs centralizó las fuentes.)
mapfile -t WASM_RECIPES < <(recipes_matching 'nyx_arena\.c')
for r in "${WASM_RECIPES[@]:-}"; do
    [ -n "$r" ] && check os_wasm.c "$r"
done

# --- runtime/wasm.srcs: la FUENTE ÚNICA de las fuentes del link wasm32-wasi.
#     El Makefile, run_wasm_tests.sh y el generador de compiler/build.nx la
#     leen en vez de repetir la lista (antes estaba copiada en los tres, y
#     cuando W1 sumó os_wasm.c hubo que tocar los tres). Como ninguno de esos
#     archivos nombra los .c, el descubrimiento por grep no los ve: sin este
#     check, os_wasm.c podría desaparecer de wasm.srcs y romper el link de
#     TODO el target wasm con este gate en verde.
if [ -f runtime/wasm.srcs ]; then
    for req in runtime/wasi/nyx_arena.c runtime/os/os_wasm.c runtime/wasi/main_shim.c; do
        if grep -vE '^[[:space:]]*(#|$)' runtime/wasm.srcs | grep -qxF "$req"; then
            :
        else
            echo "  ✗ $req falta en runtime/wasm.srcs (fuente única del link wasm32-wasi)"
            FAIL=$((FAIL + 1))
        fi
    done
else
    echo "  ✗ runtime/wasm.srcs no existe — el link wasm lo lee como fuente única"
    FAIL=$((FAIL + 1))
fi

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

# --- Makefile: cada herramienta derivada depende de su FUENTE y del bootstrap
#     (2026-09-14). build-check/vet/fmt/test REGENERAN el .ll de la herramienta
#     compilando su .nx con nyx_bootstrap. Las reglas declaraban ese .ll como
#     prerequisito —la SALIDA como entrada—, así que ni editar la fuente ni
#     reconstruir el bootstrap rearmaban nada, e install-local copiaba un
#     binario hecho por el compilador anterior («up to date», sin error).
#     Se lee la base de reglas de make (-p) y no el texto del Makefile, para que
#     $(TOOL_CORE_LL) y cualquier variable futura lleguen expandidas. -q con un
#     objetivo inexistente: no corre ninguna receta, ni siquiera las $(MAKE).
#     AUDIT_MAKEFILE existe para probar la guarda contra una copia sin tocar el
#     árbol (control negativo: el Makefile anterior al arreglo tiene que fallar).
#
#     Y el RUNTIME (misma fecha, segunda vuelta): cada receta compila los .c del
#     runtime en su línea de clang, así que tocar runtime/strings.c tampoco
#     rearmaba nada — y nyx_bootstrap/nyx_build/nyx_gendocs, que install-local
#     también instala, ni siquiera tenían regla de archivo. Lo exigido NO se copia
#     del Makefile (sería validarlo contra sí mismo): los .c salen de RUNTIME_SRCS
#     y, para el bootstrap, de la lista que enlaza DE VERDAD scripts/build_bootstrap.sh;
#     los headers, de los `#include "…"` de esos .c, transitivos.
AUDIT_MAKEFILE="${AUDIT_MAKEFILE:-Makefile}"
MAKE_DB="$(mktemp)"
make -pq -f "$AUDIT_MAKEFILE" .audit_objetivo_inexistente >"$MAKE_DB" 2>/dev/null

rule_prereqs() {   # " prereq1 prereq2 … " de la regla $1, o vacío si no hay regla
    local line
    line=$(grep -m1 "^$1:" "$MAKE_DB") || return 0
    printf ' %s ' "${line#*:}"
}

# Headers que incluyen (con comillas) los archivos dados, transitivamente y
# resueltos relativo a cada archivo — un `#include "os/nyx_os.h"` desde runtime/
# y un `#include "nyx_os.h"` desde runtime/os/ son el mismo header.
included_headers() {
    local -a pend=("$@")
    local seen=" " f d h
    while [ ${#pend[@]} -gt 0 ]; do
        f=${pend[0]}; pend=("${pend[@]:1}")
        [ -f "$f" ] || continue
        d=$(dirname "$f")
        while IFS= read -r h; do
            h=$(realpath -m --relative-to=. "$d/$h")
            [ -f "$h" ] || continue
            case "$seen" in *" $h "*) continue ;; esac
            seen="$seen$h "; pend+=("$h")
        done < <(sed -nE 's/^[[:space:]]*#[[:space:]]*include[[:space:]]*"([^"]+)".*/\1/p' "$f")
    done
    printf '%s\n' $seen
}

RT_SRCS=$(grep -m1 '^RUNTIME_SRCS = ' "$MAKE_DB" | sed 's/^RUNTIME_SRCS = //')
if [ -z "$RT_SRCS" ]; then
    echo "  ✗ $AUDIT_MAKEFILE: no se encontró RUNTIME_SRCS"
    FAIL=$((FAIL + 1))
fi
# shellcheck disable=SC2086
RT_DEPS="$RT_SRCS $(included_headers $RT_SRCS | tr '\n' ' ')"

# herramienta|prerequisitos obligatorios|prerequisitos prohibidos (su propia salida)
for spec in "nyx_check|compiler/nyx_check.nx nyx_bootstrap|compiler/nyx_check.ll" \
            "nyx_vet|compiler/vet.nx compiler/gotchas_table.nx nyx_bootstrap|compiler/vet.ll compiler/gotchas_table.ll" \
            "nyx_fmt|compiler/fmt.nx nyx_bootstrap|compiler/fmt.ll" \
            "nyx_test|compiler/test.nx nyx_bootstrap|compiler/test.ll" \
            "nyx_build|compiler/build.nx compiler/gotchas_table.nx nyx_bootstrap|compiler/build.ll compiler/gotchas_table.ll" \
            "nyx_gendocs|compiler/gendocs.nx nyx_bootstrap|compiler/gendocs.ll"; do
    IFS='|' read -r tool need forbid <<<"$spec"
    prereqs=$(rule_prereqs "$tool")
    # Control positivo: sin la regla, los chequeos de abajo pasarían en verde sin mirar nada.
    if [ -z "$prereqs" ]; then
        echo "  ✗ $AUDIT_MAKEFILE: no se encontró la regla de $tool"
        FAIL=$((FAIL + 1)); continue
    fi
    for p in $need $RT_DEPS; do
        case "$prereqs" in *" $p "*) ;; *)
            echo "  ✗ $AUDIT_MAKEFILE: $tool no depende de $p — cambiarlo no rearma la herramienta"
            FAIL=$((FAIL + 1)) ;;
        esac
    done
    for p in $forbid; do
        case "$prereqs" in *" $p "*)
            echo "  ✗ $AUDIT_MAKEFILE: $tool declara $p como prerequisito, pero su receta build-* lo GENERA"
            FAIL=$((FAIL + 1)) ;;
        esac
    done
done

# nyx_bootstrap: sus semillas + EXACTAMENTE el runtime que enlaza build_bootstrap.sh.
# Exacto en los dos sentidos: un .c de menos no lo rearma; uno de más lo rearma
# cuando no cambió nada que lleve adentro (y delata que las listas se separaron).
BS_SRCS=$(sed -n '/^RUNTIME_SRCS="/,/^"/p' scripts/build_bootstrap.sh | grep -oE 'runtime/[A-Za-z0-9_/.-]+\.c')
BS_LL=$(sed -nE 's#^[[:space:]]*(compiler/[A-Za-z0-9_]+\.ll)[[:space:]]*\\?$#\1#p' scripts/build_bootstrap.sh)
prereqs=$(rule_prereqs nyx_bootstrap)
if [ -z "$prereqs" ]; then
    echo "  ✗ $AUDIT_MAKEFILE: no se encontró la regla de nyx_bootstrap"
    FAIL=$((FAIL + 1))
elif [ -z "$BS_SRCS" ] || [ -z "$BS_LL" ]; then
    echo "  ✗ no se pudo leer la lista de .c o de .ll de scripts/build_bootstrap.sh"
    FAIL=$((FAIL + 1))
else
    # shellcheck disable=SC2086
    for p in $BS_LL $BS_SRCS $(included_headers $BS_SRCS); do
        case "$prereqs" in *" $p "*) ;; *)
            echo "  ✗ $AUDIT_MAKEFILE: nyx_bootstrap no depende de $p — cambiarlo no rearma el compilador"
            FAIL=$((FAIL + 1)) ;;
        esac
    done
    for p in $prereqs; do
        case "$p" in runtime/*.c)
            if ! printf '%s\n' $BS_SRCS | grep -qxF "$p"; then
                echo "  ✗ $AUDIT_MAKEFILE: nyx_bootstrap depende de $p, que build_bootstrap.sh NO enlaza"
                FAIL=$((FAIL + 1))
            fi ;;
        esac
    done
fi
case "$(rule_prereqs install-local)" in *" nyx_bootstrap "*) ;; *)
    echo "  ✗ $AUDIT_MAKEFILE: install-local no depende de nyx_bootstrap — instalaría un compilador viejo"
    FAIL=$((FAIL + 1)) ;;
esac
rm -f "$MAKE_DB"

echo "  recetas Linux descubiertas: ${#LINUX_RECIPES[@]} (+ 2 canónicas: scripts/nyx, compiler/build.nx) — recetas WASM descubiertas: ${#WASM_RECIPES[@]} — consumidores del glob runtime/*.c: ${#GLOB_RECIPES[@]}"

if [ "$FAIL" -gt 0 ]; then
    echo "  audit de recetas del toolchain: FALLÓ ($FAIL faltante(s))"
    echo "  (un runtime/*.c u os_posix.c/os_wasm.c fuera de una receta = feature"
    echo "   publicada que no linkea para usuarios, con todos los gates internos"
    echo "   verdes — friction A10, extendida a la capa nyx_os_* en W1; o una"
    echo "   herramienta del Makefile que no se rearma al cambiar su fuente)"
    exit 1
fi
echo "  ✓ audit de recetas: scripts/nyx + build.nx completos (A10); os_posix.c/os_wasm.c en toda receta descubierta; runtime/os/*.c no-posix/wasm en windows.yml; nyx_check/vet/fmt/test/build/gendocs dependen de su fuente, del bootstrap y del runtime; nyx_bootstrap de sus semillas y del runtime que enlaza"
exit 0
