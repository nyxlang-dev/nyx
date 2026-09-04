#!/usr/bin/env bash
# run_docs_health.sh — T1 de la campaña de reestructuración documental
# (docs/design/plans/2026-08-30-campana-docs-restructura.md, sección
# "Guardas anti-regresión"). 11 checks, cada uno activable por su propia
# variable de entorno DOCS_HEALTH_CHECK_N=on|off — nacen TODOS OFF (incluido
# el 5: CHANGELOG.md tiene hoy 11 `[Unreleased]`, fallaría en verde) y las
# fases T3/T5/T7/T8/T10 los prenden a medida que el doc correspondiente queda
# limpio. Con todo OFF el script imprime qué está dormido y sale 0 — nunca
# rompe `make test-ai-first` antes de que haya algo que hacer cumplir.
# DOCS_HEALTH_ROOT=<dir> apunta los checks a un árbol alternativo (control
# positivo desde un fixture sembrado, o testeo futuro) en vez del repo real.
#
# EN: T1 of the docs restructuring campaign (see plan above). 11 checks, each
# toggled by its own DOCS_HEALTH_CHECK_N=on|off env var — ALL born OFF
# (including #5: CHANGELOG.md has 11 [Unreleased] today, it would fail on
# arrival) and later phases flip them on as each doc gets cleaned up. With
# everything OFF the script prints what's sleeping and exits 0 — it never
# breaks `make test-ai-first` before there is anything to enforce.
# DOCS_HEALTH_ROOT=<dir> points every check at an alternate tree (seeded
# fixture for a positive control, or future testing) instead of the real repo.
#
# set -u sin pipefail (regla del repo).
set -u

# Resuelto ANTES del cd: con DOCS_HEALTH_ROOT apuntando a un fixture, los checks que invocan
# otros scripts del repo (8_GEN, 11) no pueden usar rutas relativas al árbol bajo análisis.
SELF_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="${DOCS_HEALTH_ROOT:-$(cd "$SELF_DIR/../.." && pwd)}"
cd "$ROOT"

# --- Defaults (T3 encendió 1, 2, 5 y 6; el resto los prenden T4-T10) ---
DEFAULT_1=on    # no-version-pin en PROJECT_STATE/PLAN + cabecera de TASKS
DEFAULT_2=on    # paths muertos (nyx-*-stack | ~/nyx-sites | ~/nyx-gateway) en el cuarteto
DEFAULT_2_ALL=off # ...y en el RESTO de los .md vivos — lo prenden T6/T10 (docs/, .claude/)
DEFAULT_3=on    # refs a archivos inexistentes (cuarteto+CLAUDE+README) — T4 afinó la
                #   heurística (exige un directorio en el path; basenames sueltos como
                #   `nyx.toml`/`main.nx` citados en prosa genérica ya no cuentan) y
                #   arregló 2 refs reales rotas (`install.sh`→`scripts/install.sh`,
                #   `SESSION_LOG.md`→`docs/SESSION_LOG.md`)
DEFAULT_4=on    # links relativos rotos — verde desde T6
DEFAULT_5=on    # un solo [Unreleased] en CHANGELOG.md
DEFAULT_6=on    # presupuestos de líneas/conteos (tabla del plan)
DEFAULT_6_TESTS=on  # presupuesto de docs/TESTS.md — T5 lo reescribió a 91 líneas
DEFAULT_7=on    # paridad COMPARISON — verde desde T6
DEFAULT_8=on    # INDEX design — verde desde T7
DEFAULT_8_GEN=on # ...y por GENERADOR (scripts/sdd/index-gen --check): ON desde la Task 4 del
                #   arco SDD-nyx, que dejó el INDEX con los marcadores index:begin/end
DEFAULT_9=on    # ratchet SPEC: cero refs a numeración muerta v1-v6 — T8b purgó las 108 (2026-08-31)
DEFAULT_10=on   # frescura DURA de PROJECT_STATE.md, relativa al último commit — ON desde la
                #   Task 5 del arco SDD-nyx (era WARN y estaba dormida)
DEFAULT_11=on   # state-check del método SDD-nyx (scripts/sdd/state-check) — ON desde la Task 5
                #   del arco SDD-nyx, que cosechó los 15 ledgers históricos y limpió las citas

PUBLIC_DOCS="README.md LLM.md CHANGELOG.md docs/GETTING_STARTED.md docs/CONTRIBUTING.md docs/COMPARISON.md docs/COMPARISON.es.md docs/DEPLOYMENT.md docs/SPEC.md docs/SPEC.es.md docs/VERSIONING.md docs/ROADMAP.md docs/TESTS.md docs/README.es.md"

FAIL=0; WARN=0; SLEEPING=()

is_on() {
    local def_var="DEFAULT_$1" chk_var="DOCS_HEALTH_CHECK_$1"
    local def="${!def_var}"
    local val="${!chk_var:-$def}"
    [ "$val" = "on" ]
}

check_1() {
    # La enfermedad: un número de versión presentado como ESTADO ACTUAL (la cabecera de
    # TASKS.md decía «Estado: v0.21.0» diez minors tarde). PROJECT_STATE y PLAN son fotos del
    # presente: ahí NINGÚN número de versión es legítimo. TASKS.md es backlog: sus fichas citan
    # versiones históricas de forma legítima («PREEXISTENTE desde v0.24.10»), así que solo se
    # exige limpia su CABECERA (todo lo anterior al primer «## »).
    local f pat='v[0-9]+\.[0-9]+\.[0-9]+' hits
    for f in PROJECT_STATE.md PLAN.md; do
        [ -f "$f" ] || continue
        hits=$(grep -noE "$pat" "$f" 2>/dev/null | head -3 | tr '\n' ' ')
        [ -n "$hits" ] && { echo "  ✗ [1] version pin en $f: $hits"; FAIL=$((FAIL+1)); }
    done
    if [ -f TASKS.md ]; then
        hits=$(awk '/^## /{exit} {print}' TASKS.md | grep -noE "$pat" | head -3 | tr '\n' ' ')
        [ -n "$hits" ] && { echo "  ✗ [1] version pin en la cabecera de TASKS.md: $hits"; FAIL=$((FAIL+1)); }
    fi
}

check_2() {
    # Dos niveles: el cuarteto (+CLAUDE/README) se exige limpio desde T3; el resto de los .md
    # vivos (docs/, .claude/, design) lo prenden T6/T10 con DOCS_HEALTH_CHECK_2_ALL=on.
    local pat='nyx-[a-z]+-stack|~/nyx-sites|~/nyx-gateway' f
    # LLM.md queda para el nivel 2 (tiene una mención stale en un comentario de ejemplo,
    # `:1176`, que limpia T4 junto con el resto de LLM.md).
    for f in PROJECT_STATE.md PLAN.md TASKS.md CLAUDE.md README.md; do
        [ -f "$f" ] || continue
        grep -qE "$pat" "$f" 2>/dev/null && { echo "  ✗ [2] path muerto en $f"; FAIL=$((FAIL+1)); }
    done
    is_on "2_ALL" || return 0
    for f in $(find . -name '*.md' -not -path './docs/archive/*' \
               -not -name 'CHANGELOG.md' -not -path './.git/*' 2>/dev/null); do
        case "$f" in ./PROJECT_STATE.md|./PLAN.md|./TASKS.md|./CLAUDE.md|./README.md) continue ;; esac
        grep -qE "$pat" "$f" 2>/dev/null && { echo "  ✗ [2] path muerto en $f"; FAIL=$((FAIL+1)); }
    done
}

check_3() {
    # Afinada en T4 (2026-08-30): la versión original de T1 marcaba nombres de archivo
    # SUELTOS (sin directorio) como referencias muertas — `nyx.toml`, `main.nx`, `dom.nx`
    # citados como ejemplos genéricos o shorthand en prosa que ya estableció el contexto
    # (p.ej. "std/ ... dom.nx/component.nx/router.nx son SOLO-wasm" tras nombrar `std/`
    # en la misma línea). Un basename sin `/` es ambiguo por diseño — puede referirse a
    # cualquiera de varios archivos homónimos — así que ya no se valida contra el FS.
    # Segundo filtro: el PRIMER segmento del path debe ser un directorio real de ESTE
    # repo (o un archivo top-level conocido) — si no, es un ejemplo de layout genérico
    # (`src/main.nx` en LLM.md describe el proyecto del USUARIO vía `nyx init`, no un
    # archivo de nyx/lang) y se ignora en vez de exigir que exista acá.
    # `.sdd/*` YA NO está exento (Task 5 del arco SDD-nyx): ningún doc trackeado puede
    # citar el ledger efímero — la evidencia durable vive en `docs/archive/sdd/` tras la
    # cosecha, y ahí sí existe. La guarda dura de esa regla es el check 11 (state-check (g));
    # esta línea solo deja de tapar las refs muertas que aquella destapa.
    # Lo que SÍ se sigue cazando: cualquier ref con un prefijo de dir real que no
    # resuelve (`tests/compiler-unit/run_unit_tests.sh`, `install.sh` mal escrito por
    # `scripts/install.sh`, `reviews/...` sin el prefijo `docs/design/`) — la
    # clase de bug real que esta guarda existe para atrapar.
    local srcs="PROJECT_STATE.md PLAN.md TASKS.md LLM.md CLAUDE.md README.md"
    local f path top
    for f in $srcs; do
        [ -f "$f" ] || continue
        while IFS= read -r path; do
            [ -z "$path" ] && continue
            case "$path" in
                docs/archive/*|CHANGELOG.md) continue ;;
                */*) : ;;
                *) continue ;;
            esac
            top="${path%%/*}"
            [ -d "$top" ] || [ -f "$top" ] || continue
            [ -e "$path" ] || { echo "  ✗ [3] $f referencia inexistente: $path"; FAIL=$((FAIL+1)); }
        done < <(grep -oE '`[A-Za-z0-9_./-]+\.(md|nx|sh|toml|txt|yml)`' "$f" 2>/dev/null | tr -d '`' | sort -u)
    done
}

check_4() {
    local f dir link target resolved
    for f in $PUBLIC_DOCS; do
        [ -f "$f" ] || continue
        dir=$(dirname "$f")
        while IFS= read -r link; do
            [ -z "$link" ] && continue
            case "$link" in http*|mailto:*|\#*) continue ;; esac
            target="${link%%#*}"
            [ -z "$target" ] && continue
            resolved="$dir/$target"
            [ -e "$resolved" ] || { echo "  ✗ [4] $f link roto: $link"; FAIL=$((FAIL+1)); }
        done < <(grep -oE '\]\([^)]+\)' "$f" 2>/dev/null | sed -E 's/^\]\((.*)\)$/\1/')
    done
}

check_5() {
    [ -f CHANGELOG.md ] || return 0
    local n; n=$(grep -c '\[Unreleased\]' CHANGELOG.md)
    [ "$n" -ne 1 ] && { echo "  ✗ [5] CHANGELOG.md tiene $n [Unreleased] (debe ser 1)"; FAIL=$((FAIL+1)); }
}

check_6() {
    local n line
    if [ -f PROJECT_STATE.md ]; then
        n=$(wc -l < PROJECT_STATE.md)
        [ "$n" -gt 200 ] && { echo "  ✗ [6] PROJECT_STATE.md $n líneas > 200"; FAIL=$((FAIL+1)); }
    fi
    if [ -f PLAN.md ]; then
        n=$(wc -l < PLAN.md)
        [ "$n" -gt 250 ] && { echo "  ✗ [6] PLAN.md $n líneas > 250"; FAIL=$((FAIL+1)); }
    fi
    if [ -f docs/TESTS.md ] && is_on "6_TESTS"; then
        n=$(wc -l < docs/TESTS.md)
        [ "$n" -gt 150 ] && { echo "  ✗ [6] docs/TESTS.md $n líneas > 150"; FAIL=$((FAIL+1)); }
        line=$(awk '{ if (length($0) > 300) { print NR; exit } }' docs/TESTS.md)
        [ -n "$line" ] && { echo "  ✗ [6] docs/TESTS.md línea $line > 300 chars"; FAIL=$((FAIL+1)); }
    fi
    if [ -f TASKS.md ]; then
        n=$(grep -c '\[x\]' TASKS.md)
        [ "$n" -gt 20 ] && { echo "  ✗ [6] TASKS.md $n [x] > 20 tolerados"; FAIL=$((FAIL+1)); }
    fi
}

check_7() {
    [ -f docs/COMPARISON.md ] && [ -f docs/COMPARISON.es.md ] || return 0
    local a b
    a=$(grep -E '^\| \*\*Nyx\*\*' docs/COMPARISON.md)
    b=$(grep -E '^\| \*\*Nyx\*\*' docs/COMPARISON.es.md)
    [ "$a" = "$b" ] || { echo "  ✗ [7] fila Nyx difiere COMPARISON.md/.es.md — EN:[$a] ES:[$b]"; FAIL=$((FAIL+1)); }
}

check_8() {
    local idx="docs/design/INDEX.md" f base
    # Con 8_GEN encendido el INDEX deja de verificarse por «se menciona» y pasa a verificarse
    # por IGUALDAD contra lo que genera scripts/sdd/index-gen (spec SDD-nyx §2).
    if is_on "8_GEN"; then
        bash "$SELF_DIR/../sdd/index-gen" --check || FAIL=$((FAIL+1))
        return
    fi
    SLEEPING+=("[8_GEN] INDEX por generador (scripts/sdd/index-gen --check)")
    if [ ! -f "$idx" ]; then echo "  ✗ [8] falta $idx"; FAIL=$((FAIL+1)); return; fi
    # docs/design/briefs/** queda fuera: los encargos son N archivos por arco, viven lo que
    # dura el arco y el INDEX los lista por CARPETA (scripts/sdd/index-gen), no uno por uno.
    for f in $(find docs/design -type f -name '*.md' ! -name 'INDEX.md' \
               ! -path 'docs/design/briefs/*' 2>/dev/null); do
        base=$(basename "$f")
        grep -qF "$base" "$idx" || { echo "  ✗ [8] $idx no menciona $f"; FAIL=$((FAIL+1)); }
    done
}

check_9() {
    [ -f docs/SPEC.md ] || return 0
    local n; n=$(grep -cE '\bv[1-6]\.[0-9]' docs/SPEC.md)
    [ "$n" -ne 0 ] && { echo "  ✗ [9] docs/SPEC.md: $n refs a numeración muerta v1-v6"; FAIL=$((FAIL+1)); }
}

check_10() {
    # Frescura DURA y RELATIVA. Dura: la foto del presente desactualizada es el bug que hace
    # que una sesión nueva re-resuelva trabajo ya hecho — un WARN que nadie lee no lo evita.
    # Relativa: se compara contra la fecha del ÚLTIMO COMMIT, no contra el reloj, para que un
    # checkout viejo (o una máquina con la hora corrida) no invente staleness; sin `.git`
    # (tarball del release) cae a `date +%F`. Se lee la línea «Última actualización:», no la
    # fecha más grande del archivo: cualquier fecha citada en el cuerpo la falseaba.
    [ -f PROJECT_STATE.md ] || return 0
    local latest ref days
    latest=$(sed -nE 's/.*Última actualización: *([0-9]{4}-[0-9]{2}-[0-9]{2}).*/\1/p' PROJECT_STATE.md | head -1)
    if [ -z "$latest" ]; then
        echo "  ✗ [10] PROJECT_STATE.md sin línea «Última actualización: AAAA-MM-DD»"
        FAIL=$((FAIL+1)); return
    fi
    ref=$(git log -1 --format=%cs 2>/dev/null); [ -n "$ref" ] || ref=$(date +%F)
    days=$(( ( $(date -d "$ref" +%s 2>/dev/null || date +%s) \
             - $(date -d "$latest" +%s 2>/dev/null || date +%s) ) / 86400 ))
    [ "$days" -gt 14 ] && { echo "  ✗ [10] PROJECT_STATE.md: última actualización $latest, $days días detrás del último commit ($ref, umbral 14)"; FAIL=$((FAIL+1)); }
}

check_11() {
    # Todas las condiciones del método SDD-nyx (banner, VIGENTE citado, plan bien formado,
    # briefs, rutas viejas, ledgers huérfanos). Ver scripts/sdd/state-check.
    # Su salida se captura para que los ⚠ que imprime (hoy: un checkout sin `.sdd/`, el caso
    # del mirror público y de un clone fresco) SUMEN al contador de warnings de docs-health en
    # vez de perderse en el scroll — el resumen final es lo único que se lee en CI.
    local out n
    out=$(bash "$SELF_DIR/../sdd/state-check" "$ROOT" 2>&1) || FAIL=$((FAIL+1))
    [ -n "$out" ] && printf '%s\n' "$out"
    n=$(printf '%s\n' "$out" | grep -c '⚠')
    [ "$n" -gt 0 ] && WARN=$((WARN+n))
    return 0
}

DESCS=("" "no-version-pin cuarteto" "paths muertos" "refs a archivos inexistentes" \
    "links relativos rotos (públicos)" "un solo [Unreleased]" "presupuestos" \
    "paridad scores COMPARISON" "INDEX design completo" "ratchet SPEC v1-6" \
    "frescura dura PROJECT_STATE vs último commit" "state-check SDD-nyx")

for n in 1 2 3 4 5 6 7 8 9 10 11; do
    if is_on "$n"; then "check_$n"; else SLEEPING+=("[$n] ${DESCS[$n]}"); fi
done

if [ ${#SLEEPING[@]} -gt 0 ]; then
    echo "  checks dormidos (DOCS_HEALTH_CHECK_N=on para activar):"
    for s in "${SLEEPING[@]}"; do echo "    - $s"; done
fi

if [ "$FAIL" -gt 0 ]; then
    echo "  docs-health: FALLÓ ($FAIL, $WARN warning(s))"
    exit 1
fi
echo "  ✓ docs-health: 0 fallos, $WARN warning(s), ${#SLEEPING[@]} check(s) dormido(s)"
exit 0
