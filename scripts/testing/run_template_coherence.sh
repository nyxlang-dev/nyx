#!/usr/bin/env bash
# run_template_coherence.sh — guardia de coherencia LLM.md + TODO lo sembrado
# por `nyx init`, en cada idioma.
#
# El drift de los templates mordió DOS veces: (1) 2026-07-28, AGENTS.md arrastró
# gotchas falsos 2 días después de limpiarse LLM.md; (2) 2026-08-01, la auditoría
# encontró "closure capture is broken" (falso desde el 27/07 — la MISMA mentira
# que costó a un usuario un navegador de 2400 líneas sin callbacks), trampas
# muertas desde abril, y un CHEATSHEET auto-contradictorio con API inventada.
#
# Desde la Task 3 de este arco (2026-09-04) las ANCLAS y MENTIRAS ya NO se
# mantienen a mano acá: se leen de `scripts/testing/gotchas_generated.sh`
# (GENERADO por `make gen-agent-docs` desde `docs/gotchas/*.md`), así que un
# gotcha nuevo o arreglado en los datos entra a esta guardia solo con
# regenerar — sin tocar este archivo. El viejo pin de conteo de §5.1 (Check C)
# se retira: ya no hace falta, porque ANCLAS viene de la MISMA fuente que
# LLM.md §5 (gendocs) — no hay dos números que puedan divergir. La garantía
# de que "regenerar es no-op" vive en `run_gendocs_noop.sh` (Task 2).
#
# Cuatro checks, sobre TODO lo sembrado (ver lib_seeded_files.sh) y en cada
# idioma ("en" y "es", cada uno con su `templates/<lang>/` desde ADR-1):
#   A. Ratchet de MENTIRAS RESUCITADAS: las frases de `lies:` de los gotchas
#      `fixed` (gotchas_generated.sh) + las 3 mentiras de productos
#      (docs/gotchas/README.md §Mentiras de productos) no pueden reaparecer
#      en ningún archivo sembrado, en ningún idioma.
#   B. Anclas de TRAMPAS/REGLAS VIVAS: cada trap/rule tiene un término ancla
#      (gotchas_generated.sh) que debe aparecer en el AGENTS.md de cada
#      idioma y en LLM.md (el tono es libre; el ancla no).
#   C. Imports SIN comillas en bloques de código de TODO lo sembrado, en
#      ambos idiomas — `import std/http` no parsea (el parser exige STRING).
#   D. Ids de gotcha CITADOS que se puedan seguir: las guías dicen que la lista
#      canónica vive en el AGENTS.md del proyecto, así que todo id de
#      `GOTCHA_IDS` citado entre backticks en un archivo sembrado tiene que
#      aparecer en el AGENTS.md DE ESE IDIOMA — o la línea que lo cita tiene
#      que nombrar `docs/nyx/LLM.md` (la referencia densa lleva los 4 kinds;
#      la región de AGENTS.md solo trap+rule). Sin esto, citar un `limit` como
#      `fork-gc-child-exec` mandaba al agente a buscar a un archivo donde no
#      está (hallazgo del review de la Task 5).
#
# Ruling del controller (vinculante): los anclas/mentiras generados traen
# metacaracteres de ERE (`Fn(Type)`, `exit(1)`, `Shape.Circle`) — comparar
# SIEMPRE con `grep -F -i` (string fija, case-insensitive), nunca `grep -E`.
# Además: un manual en Markdown suele envolver el término en un `code span`
# (backticks) que puede partir la frase justo en el borde (p.ej.
# "`arr[i].method()` causes SEGV" NO contiene la substring literal
# "arr[i].method() causes SEGV" por el backtick de cierre entre medio) — por
# eso `contains_ci` (abajo) le saca los backticks al archivo antes de buscar.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."

FAIL=0
LANGS=(en es)

source scripts/testing/lib_seeded_files.sh

GOTCHAS_GENERATED="scripts/testing/gotchas_generated.sh"
if [ ! -f "$GOTCHAS_GENERATED" ]; then
    printf "  ✗ %s no existe — corré 'make gen-agent-docs' primero\n" "$GOTCHAS_GENERATED"
    exit 1
fi
# shellcheck disable=SC1090
source "$GOTCHAS_GENERATED"

# grep -F -i insensible a backticks de Markdown: le saca los backticks al
# archivo Y a la frase buscada antes de comparar (algunas anclas generadas,
# como «bare `return`», traen backticks propios) porque un `code span`
# puede partir una frase justo en el borde (ver ruling arriba).
# Uso: contains_ci ARCHIVO FRASE
contains_ci() {
    local frase; frase="$(printf '%s' "$2" | tr -d '`')"
    tr -d '`' < "$1" 2>/dev/null | grep -qiF -- "$frase"
}

# ── Ids de gotcha citados (Check D) ─────────────────────────────────────
# Membresía en GOTCHA_IDS por substring sobre un blob con separadores, para no
# depender de arrays asociativos.
IDS_BLOB=" ${GOTCHA_IDS[*]} "
is_gotcha_id() { case "$IDS_BLOB" in *" $1 "*) return 0 ;; *) return 1 ;; esac; }

# check_cited_ids ARCHIVO MANUAL — imprime un ✗ por cada id de gotcha citado
# entre backticks en ARCHIVO que no aparece en MANUAL y cuya línea tampoco
# nombra docs/nyx/LLM.md. Devuelve 1 si hubo alguno.
check_cited_ids() {
    local f="$1" manual="$2" bad=0 hit lineno id linetext
    while IFS= read -r hit; do
        [ -z "$hit" ] && continue
        lineno="${hit%%:*}"
        id="${hit#*:}"
        id="${id//\`/}"
        is_gotcha_id "$id" || continue
        grep -qF -- "$id" "$manual" 2>/dev/null && continue
        linetext="$(sed -n "${lineno}p" "$f")"
        case "$linetext" in
            *docs/nyx/LLM.md*) continue ;;
        esac
        printf "  ✗ %s:%s cita el gotcha «%s», que no está en %s — apuntá la cita a docs/nyx/LLM.md o sacala\n" \
            "$f" "$lineno" "$id" "$manual"
        bad=1
    done < <(grep -noE '`[a-z0-9]+(-[a-z0-9]+)+`' "$f" 2>/dev/null)
    return $bad
}

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT
printf 'closure capture of locals is broken\n' > "$TMPDIR/malo.md"
printf 'closures fully work now\n' > "$TMPDIR/bueno.md"
if contains_ci "$TMPDIR/malo.md" "closure capture of locals is broken" \
   && ! contains_ci "$TMPDIR/bueno.md" "closure capture of locals is broken"; then
    printf "  ✓ autotest del detector de frases\n"
else
    printf "  ✗ autotest roto — no confiar en los checks de abajo\n"
    FAIL=$((FAIL + 1))
fi
# Autotest del caso que motivó contains_ci: la frase partida por un backtick
# de code-span (ver ruling arriba) tiene que seguir cazándose.
printf '1. `arr[i].method()` causes SEGV — usa una variable intermedia\n' > "$TMPDIR/backtick.md"
if contains_ci "$TMPDIR/backtick.md" "arr[i].method() causes SEGV"; then
    printf "  ✓ autotest del backtick-strip (frase partida por code-span)\n"
else
    printf "  ✗ autotest del backtick-strip ROTO — una mentira partida por backticks pasaría\n"
    FAIL=$((FAIL + 1))
fi

# Autotest de check_cited_ids: un manual de mentira que NO lista el id, y tres
# citas — una huérfana (debe salir), una que nombra docs/nyx/LLM.md y otra con
# un id que no es de gotcha (ninguna debe salir).
printf 'AGENTS de mentira sin ids\n' > "$TMPDIR/manual.md"
{ printf 'una fila con `fork-gc-child-exec` y nada mas\n'
  printf 'otra con `fork-gc-child-exec` — vive en `docs/nyx/LLM.md`\n'
  printf 'y una con `un-id-inventado-cualquiera` que no es gotcha\n'; } > "$TMPDIR/guia.md"
if check_cited_ids "$TMPDIR/guia.md" "$TMPDIR/manual.md" > "$TMPDIR/cited.log" 2>&1; then
    printf "  ✗ autotest de ids citados ROTO — la cita huérfana dio VERDE\n"
    FAIL=$((FAIL + 1))
else
    if [ "$(grep -c '✗' "$TMPDIR/cited.log")" = "1" ] && grep -q 'guia.md:1' "$TMPDIR/cited.log"; then
        printf "  ✓ autotest de ids citados (huérfana en la línea 1; la que nombra LLM.md y el no-id no cuentan)\n"
    else
        printf "  ✗ autotest de ids citados ROTO — se esperaba 1 hallazgo en la línea 1:\n"
        sed 's/^/      /' "$TMPDIR/cited.log"
        FAIL=$((FAIL + 1))
    fi
fi

# ── Mentiras de productos (docs/gotchas/README.md §Mentiras de productos) ─
# No son gotchas del lenguaje (son de nyx-proxy) pero la guardia las sigue
# vigilando — enseñaron API inventada en manuales sembrados hasta v0.4.1.
mapfile -t MENTIRAS_PRODUCTO < <(sed -n '/^## Mentiras de productos/,$p' docs/gotchas/README.md \
    | grep -E '^- `' | sed -E 's/^- `([^`]+)`.*/\1/')
if [ "${#MENTIRAS_PRODUCTO[@]}" -eq 0 ]; then
    printf "  ✗ no se pudo extraer ninguna mentira de producto de docs/gotchas/README.md\n"
    FAIL=$((FAIL + 1))
fi

# ── Check A: mentiras resucitadas (lenguaje + producto), en la UNIÓN de lo
# sembrado en todos los idiomas (seeded_files_for_all_langs dedupea — hoy
# el dedupe importa para lo que sea común a los dos idiomas; no tiene sentido
# reportar la misma línea dos veces) ─────────────────────────────────────
mapfile -t ALL_SEEDED < <(seeded_files_for_all_langs "${LANGS[@]}")
mentiras_hits=0
for entrada in "${MENTIRAS[@]}"; do
    frase="${entrada%%|*}"
    id="${entrada#*|}"
    for f in "${ALL_SEEDED[@]}"; do
        [ -f "$f" ] || continue
        if contains_ci "$f" "$frase"; then
            printf "  ✗ MENTIRA RESUCITADA en %s: «%s» (gotcha: %s)\n" "$f" "$frase" "$id"
            FAIL=$((FAIL + 1)); mentiras_hits=$((mentiras_hits + 1))
        fi
    done
done
for frase in "${MENTIRAS_PRODUCTO[@]}"; do
    for f in "${ALL_SEEDED[@]}"; do
        [ -f "$f" ] || continue
        if contains_ci "$f" "$frase"; then
            printf "  ✗ MENTIRA DE PRODUCTO RESUCITADA en %s: «%s»\n" "$f" "$frase"
            FAIL=$((FAIL + 1)); mentiras_hits=$((mentiras_hits + 1))
        fi
    done
done
if [ "$mentiras_hits" -eq 0 ]; then
    printf "  ✓ ratchet de mentiras: %d frases de lenguaje + %d de producto, ninguna resucitó en %d archivos sembrados (idiomas: %s)\n" \
        "${#MENTIRAS[@]}" "${#MENTIRAS_PRODUCTO[@]}" "${#ALL_SEEDED[@]}" "${LANGS[*]}"
fi

# ── Check B: anclas de trampas/reglas vivas, en el AGENTS.md de cada idioma
# + LLM.md ─────────────────────────────────────────────────────────────
mapfile -t MANUAL_TARGETS < <({ for lang in "${LANGS[@]}"; do seeded_manuals_for "$lang"; done; echo "LLM.md"; } | sort -u)

anclas_hits=0
for entrada in "${ANCLAS[@]}"; do
    ancla="${entrada%%|*}"
    id="${entrada#*|}"
    for m in "${MANUAL_TARGETS[@]}"; do
        [ -f "$m" ] || { printf "  ✗ falta el manual sembrado %s\n" "$m"; FAIL=$((FAIL + 1)); continue; }
        if ! contains_ci "$m" "$ancla"; then
            printf "  ✗ trampa/regla viva SIN ancla en %s: «%s» (gotcha: %s)\n" "$m" "$ancla" "$id"
            FAIL=$((FAIL + 1)); anclas_hits=$((anclas_hits + 1))
        fi
    done
done
if [ "$anclas_hits" -eq 0 ]; then
    printf "  ✓ anclas de trampas/reglas vivas: %d anclas presentes en %s\n" "${#ANCLAS[@]}" "${MANUAL_TARGETS[*]}"
fi

# ── Check C: imports SIN comillas en bloques de código de TODO lo sembrado,
# en ambos idiomas ─────────────────────────────────────────────────────
# `import std/http` no parsea (el parser exige STRING). Si un manual o skill
# lo muestra como ejemplo, siembra código roto en cada proyecto.
imports_hits=0
for f in "${ALL_SEEDED[@]}"; do
    [ -f "$f" ] || continue
    if grep -nE '^\s*import\s+[a-zA-Z]' "$f" | grep -v '"' | grep -qv 'from'; then
        printf "  ✗ %s: import SIN comillas en un ejemplo (no parsea)\n" "$f"
        grep -nE '^\s*import\s+[a-zA-Z]' "$f" | grep -v '"' | head -3
        FAIL=$((FAIL + 1)); imports_hits=$((imports_hits + 1))
    fi
done
# Autotest del check de imports
printf 'import std/http\n' > "$TMPDIR/imp_malo.md"
if grep -nE '^\s*import\s+[a-zA-Z]' "$TMPDIR/imp_malo.md" | grep -v '"' | grep -qv 'from'; then
    printf "  ✓ autotest del check de imports\n"
else
    printf "  ✗ autotest del check de imports ROTO\n"; FAIL=$((FAIL + 1))
fi
if [ "$imports_hits" -eq 0 ]; then
    printf "  ✓ imports sin comillas: ninguno en %d archivos sembrados (idiomas: %s)\n" \
        "${#ALL_SEEDED[@]}" "${LANGS[*]}"
fi

# ── Check D: ids de gotcha citados, por idioma ───────────────────────────
cited_hits=0
cited_files=0
for lang in "${LANGS[@]}"; do
    manual="$(seeded_manuals_for "$lang")"
    [ -f "$manual" ] || continue
    while IFS= read -r f; do
        [ -f "$f" ] || continue
        [ "$f" = "$manual" ] && continue
        cited_files=$((cited_files + 1))
        if ! check_cited_ids "$f" "$manual"; then
            FAIL=$((FAIL + 1)); cited_hits=$((cited_hits + 1))
        fi
    done < <(seeded_files_for "$lang")
done
if [ "$cited_hits" -eq 0 ]; then
    printf "  ✓ ids de gotcha citados: seguibles desde el AGENTS.md de su idioma (o con puntero a docs/nyx/LLM.md) en %d archivos\n" "$cited_files"
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  coherencia de manuales: FALLÓ ($FAIL problema(s))"
    echo "  (la doc sembrada por nyx init NO puede contradecir a LLM.md — ya pasó dos veces)"
    exit 1
fi
echo "  coherencia de manuales: PASS"
exit 0
