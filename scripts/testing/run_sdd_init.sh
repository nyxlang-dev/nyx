#!/usr/bin/env bash
# run_sdd_init.sh — guardia del ANDAMIAJE SDD opcional (`nyx init --sdd` /
# `nyx sdd init`), Task 7 de la spec 2026-09-04-andamiaje-sdd-design.md §3.
#
# El andamiaje es la feature que el encargo pidió: siete piezas neutrales que
# preparan al agente para DECIDIR (constitución, glosario, evidencia, ADR,
# specs, test de constitución, guía de arranque) + dos líneas en AGENTS.md que
# lo disparan. Todo eso es opt-in: sin `--sdd`, `nyx init` no cambia (esa mitad
# la vigila run_init_golden.sh; acá se re-verifica que el default siga limpio).
#
# Lo que se verifica, por idioma (en, es):
#   A. LISTADO: `init g --sdd` == listado dorado por defecto + las 7 rutas de
#      `tests/ai-first/golden/sdd-init-<lang>.txt` (con `<VERSION>` sustituida:
#      el nombre del archivo de evidencia lleva la versión de la toolchain, y
#      un literal en el dorado sería una pieza más que bumpear en cada release).
#   B. DEFAULT INTACTO: `init g` (sin la bandera) no siembra NINGUNA de las 7.
#   C. CONSTITUCIÓN: el marcador `SDD_INCOMPLETE` aparece EXACTAMENTE una vez y
#      están las 7 secciones del idioma.
#   D. DISPARADOR: `<!-- sdd:trigger -->` exactamente una vez en AGENTS.md, con
#      las 2 líneas del idioma, y el sello `nyx-version` sigue siendo la ÚLTIMA
#      línea (run_silent_failure_checks.sh lo exige).
#   E. IDEMPOTENCIA: un segundo `sdd init` no modifica NADA (`find -newer`) y
#      avisa que saltea.
#   F. CONSTITUCIÓN EDITADA: si el usuario le sacó el marcador y escribió algo,
#      el segundo `sdd init` la saltea con aviso y NO la pisa.
#   G. EVIDENCIA: `docs/evidence/nyx-<ver>.md` lista los ids de TODAS las
#      trampas/reglas vivas (ANCLAS de scripts/testing/gotchas_generated.sh —
#      misma fuente que los manuales) y tiene la sección de retirados.
#   H. TEST DE CONSTITUCIÓN: un bloque `test` por gotcha con `pattern`
#      (PATTERN_CODES) + el test de «archivos en tests/ sin bloques test»; y
#      —el control positivo que importa— `nyx test` PASA en el proyecto limpio
#      y FALLA citando `src/bad.nx:1` cuando se planta `Shape::Circle(1)`.
#      (Usa la toolchain INSTALADA: SKIP limpio si no hay `nyx` en el PATH.)
#   I. NEUTRALIDAD: `grep -ril 'claude\|cursor\|copilot'` sobre el proyecto
#      sembrado con `--sdd` → vacío.
#   J. REVERSIBILIDAD: el comando imprime qué borrar para volver a un init normal.
#   K. CAMINO INSIGNIA: `sdd init` sobre un proyecto que YA existe (el caso que
#      motiva la feature), por el binario Y por el wrapper `scripts/nyx`.
#   L. `sdd evidence` (lo que corre `nyx update`): dice «ya está al día» cuando no
#      hay nada que hacer, y un test de constitución sin cabecera GENERATED es del
#      usuario — se saltea con aviso y queda byte a byte igual (cksum).
#
# NYX_HOME de prueba: se ARMA en tmp igual que run_init_golden.sh (VERSION +
# std/ + templates/, con LLM.md inyectado) — así la guardia corre contra las
# plantillas DEL REPO, sin depender de `make install-local`.
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."
REPO_ROOT="$PWD"

FAIL=0
GOLDEN_DIR="tests/ai-first/golden"
SEED_VER="$(tr -d '[:space:]' < VERSION)"

if [ ! -x ./nyx_build ]; then
    echo "  ✗ falta ./nyx_build — corré 'make build-nyx-build' primero"
    exit 1
fi

# Ids canónicos de los gotchas (GENERADO por gendocs): ANCLAS = trampas/reglas
# vivas (lo que la evidencia debe listar), PATTERN_CODES = los grep-ables (un
# bloque `test` cada uno en tests/constitution_test.nx). Nada de conteos a mano.
# shellcheck disable=SC1091
source scripts/testing/gotchas_generated.sh

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

# ── NYX_HOME de prueba (mismo contenido que install-local) ───────────────
STAGE="$TMPDIR/toolchain"
mkdir -p "$STAGE"
cp VERSION "$STAGE/VERSION"
ln -s "$REPO_ROOT/std" "$STAGE/std"
cp -r templates "$STAGE/templates"
mkdir -p "$STAGE/templates/en/docs/nyx"
cp LLM.md "$STAGE/templates/en/docs/nyx/LLM.md" 2>/dev/null || true
# El wrapper (scripts/nyx) rutea los subcomandos PM a "$NYX_HOME/nyx_build", y
# antes exige un compilador en "$NYX_HOME/nyx_bootstrap": sin estos dos enlaces
# la ruta del wrapper —la que usa una persona de verdad— quedaría sin ejercitar.
ln -s "$REPO_ROOT/nyx_build" "$STAGE/nyx_build"
ln -s "$REPO_ROOT/nyx_bootstrap" "$STAGE/nyx_bootstrap"

# init_at DIR NOMBRE [flags…] — `nyx_build init` dentro de DIR con el NYX_HOME
# de prueba; salida en $TMPDIR/out.log.
init_at() {
    local where="$1"; shift
    mkdir -p "$where"
    (cd "$where" && NYX_HOME="$STAGE" "$REPO_ROOT/nyx_build" init "$@" > "$TMPDIR/out.log" 2>&1)
}

# sdd_at DIR ARGS… — `nyx_build sdd <args>` DENTRO del proyecto DIR.
sdd_at() {
    local where="$1"; shift
    (cd "$where" && NYX_HOME="$STAGE" "$REPO_ROOT/nyx_build" sdd "$@" > "$TMPDIR/out.log" 2>&1)
}

# listing DIR PROY — `find` relativo a DIR, ordenado en C.
listing() { (cd "$1" && find "$2" -type f | LC_ALL=C sort); }

# expected_listing LANG — dorado por defecto + las 7 rutas del andamiaje, con
# `<VERSION>` resuelta.
expected_listing() {
    { cat "$GOLDEN_DIR/init-default-$1.txt"
      sed "s/<VERSION>/$SEED_VER/g" "$GOLDEN_DIR/sdd-init-$1.txt"; } | LC_ALL=C sort
}

# count_fixed FILE NEEDLE — ocurrencias de una cadena FIJA (los marcadores
# traen `<`, `!`, `-`: grep -F o el ERE los interpretaría).
count_fixed() {
    local n
    n="$(grep -c -F -- "$2" "$1" 2>/dev/null)"   # grep -c imprime 0 y sale 1: el código de salida NO sirve acá
    [ -n "$n" ] || n=0
    echo "$n"
}

# ── Autotest del instrumento (primero — sin esto, verde no prueba nada) ──
AUTOTEST_OK=1
mkdir -p "$TMPDIR/auto"
printf 'x\n' > "$TMPDIR/auto/uno.txt"
if [ "$(count_fixed "$TMPDIR/auto/uno.txt" "x")" -eq 1 ] \
   && [ "$(count_fixed "$TMPDIR/auto/uno.txt" "<!-- sdd:trigger -->")" -eq 0 ]; then
    printf "  ✓ autotest del contador de marcadores (presente 1, ausente 0)\n"
else
    printf "  ✗ autotest del contador de marcadores ROTO\n"; AUTOTEST_OK=0
fi
mkdir -p "$TMPDIR/auto/g/src"
touch "$TMPDIR/auto/g/nyx.toml" "$TMPDIR/auto/g/src/main.nx"
printf 'g/nyx.toml\ng/src/main.nx\n' > "$TMPDIR/auto/expected.txt"
if listing "$TMPDIR/auto" g | diff -u "$TMPDIR/auto/expected.txt" - > /dev/null 2>&1; then
    printf "  ✓ autotest del comparador de listados (caso feliz)\n"
else
    printf "  ✗ autotest del comparador de listados ROTO (un listado idéntico salió distinto)\n"; AUTOTEST_OK=0
fi
touch "$TMPDIR/auto/g/DE_MAS.md"
if listing "$TMPDIR/auto" g | diff -u "$TMPDIR/auto/expected.txt" - > /dev/null 2>&1; then
    printf "  ✗ autotest del comparador ROTO — un archivo de más NO se detectó\n"; AUTOTEST_OK=0
else
    printf "  ✓ autotest del comparador de listados (un archivo de más ⇒ rojo)\n"
fi
# Autotest del detector de cambios de la idempotencia: si algo se reescribe,
# `find -newer` TIENE que verlo (si no, el check E sería verde por vacío).
touch "$TMPDIR/auto/marca"
sleep 0.05
if [ -n "$(find "$TMPDIR/auto/g" -newer "$TMPDIR/auto/marca" -type f 2>/dev/null)" ]; then
    printf "  ✗ autotest de find -newer ROTO — vio cambios donde no los hubo\n"; AUTOTEST_OK=0
else
    printf 'y\n' >> "$TMPDIR/auto/g/nyx.toml"
    if [ -n "$(find "$TMPDIR/auto/g" -newer "$TMPDIR/auto/marca" -type f 2>/dev/null)" ]; then
        printf "  ✓ autotest de find -newer (un archivo reescrito ⇒ visible)\n"
    else
        printf "  ✗ autotest de find -newer ROTO — un archivo reescrito NO se vio\n"; AUTOTEST_OK=0
    fi
fi
if [ "${#ANCLAS[@]}" -eq 0 ] || [ "${#PATTERN_CODES[@]}" -eq 0 ]; then
    printf "  ✗ gotchas_generated.sh sin ANCLAS/PATTERN_CODES — la guardia no puede verificar nada\n"
    AUTOTEST_OK=0
fi
if [ "$AUTOTEST_OK" -eq 0 ]; then
    echo "  autotest roto — no confiar en los checks de abajo"
    exit 1
fi

# ── Secciones y disparadores por idioma ──────────────────────────────────
SECCIONES_en=("## Purpose" "## Users" "## Scope and non-goals" "## Invariants" "## Definition of done" "## Technical constraints" "## How we decide")
SECCIONES_es=("## Propósito" "## Usuarios" "## Alcance y no-objetivos" "## Invariantes" "## Qué significa «terminado»" "## Restricciones técnicas" "## Cómo se decide")
TRIGGER1_en="If \`docs/constitution.md\` still contains \`SDD_INCOMPLETE\`, do not write code yet: follow \`docs/sdd/onboarding.md\` and offer the user to complete it."
TRIGGER2_en="For a new feature with no \`specs/NNN-feature/spec.md\`, offer to write the spec first (see \`specs/README.md\`)."
TRIGGER1_es="Si \`docs/constitution.md\` todavía contiene \`SDD_INCOMPLETE\`, no escribas código: sigue \`docs/sdd/onboarding.md\` y ofrece al usuario completarla."
TRIGGER2_es="Ante una funcionalidad nueva sin \`specs/NNN-feature/spec.md\`, ofrece escribir la spec primero (ver \`specs/README.md\`)."

for lang in en es; do
    W="$TMPDIR/sdd_$lang"
    if [ "$lang" = "en" ]; then
        init_at "$W" g --sdd
    else
        init_at "$W" g --lang es --sdd
    fi
    P="$W/g"
    cp "$TMPDIR/out.log" "$TMPDIR/init_$lang.log"
    if [ ! -f "$P/nyx.toml" ]; then
        printf "  ✗ init --sdd (%s) falló:\n" "$lang"; sed 's/^/      /' "$TMPDIR/init_$lang.log"
        FAIL=$((FAIL + 1)); continue
    fi

    # A — listado exacto
    if [ ! -f "$GOLDEN_DIR/sdd-init-$lang.txt" ]; then
        printf "  ✗ falta el listado dorado %s/sdd-init-%s.txt\n" "$GOLDEN_DIR" "$lang"
        FAIL=$((FAIL + 1))
    else
        expected_listing "$lang" > "$TMPDIR/exp_$lang.txt"
        if listing "$W" g | diff -u "$TMPDIR/exp_$lang.txt" - > "$TMPDIR/diff_$lang.txt" 2>&1; then
            printf "  ✓ listado con --sdd (%s): default + las 7 piezas del andamiaje, exacto\n" "$lang"
        else
            printf "  ✗ el listado de 'nyx init --sdd' (%s) NO coincide con default + sdd-init-%s.txt:\n" "$lang" "$lang"
            sed 's/^/      /' "$TMPDIR/diff_$lang.txt"; FAIL=$((FAIL + 1))
        fi
    fi

    # B — el default (sin --sdd) no siembra NADA del andamiaje
    D="$TMPDIR/plain_$lang"
    if [ "$lang" = "en" ]; then init_at "$D" g; else init_at "$D" g --lang es; fi
    plain_bad=0
    for f in docs/constitution.md docs/glossary.md docs/adr/0000-template.md \
             docs/sdd/onboarding.md specs/README.md tests/constitution_test.nx \
             "docs/evidence/nyx-$SEED_VER.md"; do
        [ -e "$D/g/$f" ] && { printf "  ✗ init SIN --sdd (%s) sembró %s\n" "$lang" "$f"; plain_bad=1; }
    done
    [ "$(count_fixed "$D/g/AGENTS.md" "<!-- sdd:trigger -->")" -eq 0 ] \
        || { printf "  ✗ init SIN --sdd (%s) metió el disparador en AGENTS.md\n" "$lang"; plain_bad=1; }
    if [ "$plain_bad" -eq 0 ]; then
        printf "  ✓ default intacto (%s): sin la bandera no aparece ninguna de las 7 piezas ni el disparador\n" "$lang"
    else
        FAIL=$((FAIL + 1))
    fi

    # C — marcador + 7 secciones
    C="$P/docs/constitution.md"
    con_bad=0
    if [ ! -f "$C" ]; then
        printf "  ✗ no se sembró docs/constitution.md (%s)\n" "$lang"; con_bad=1
    else
        n_marca="$(count_fixed "$C" "SDD_INCOMPLETE")"
        [ "$n_marca" -eq 1 ] || { printf "  ✗ constitución (%s): el marcador SDD_INCOMPLETE aparece %s veces (debe ser 1)\n" "$lang" "$n_marca"; con_bad=1; }
        eval "secs=(\"\${SECCIONES_$lang[@]}\")"
        for s in "${secs[@]}"; do
            grep -q -F -- "$s" "$C" || { printf "  ✗ constitución (%s): falta la sección «%s»\n" "$lang" "$s"; con_bad=1; }
        done
    fi
    # Las CINCO plantillas sembradas llevan la marca de versión de plantilla
    # (regla 6 de la constitución de la feature), no solo la constitución.
    for tpl in docs/constitution.md docs/glossary.md docs/adr/0000-template.md \
               specs/README.md docs/sdd/onboarding.md; do
        [ -f "$P/$tpl" ] || { printf "  ✗ %s no sembrado (%s)\n" "$tpl" "$lang"; con_bad=1; continue; }
        grep -q -F -- "<!-- sdd-template: " "$P/$tpl" \
            || { printf "  ✗ %s (%s): sin marca <!-- sdd-template: N -->\n" "$tpl" "$lang"; con_bad=1; }
    done
    if [ "$con_bad" -eq 0 ]; then
        printf "  ✓ constitución (%s): marcador una vez + las 7 secciones + marca de plantilla en las 5 sembradas\n" "$lang"
    else
        FAIL=$((FAIL + 1))
    fi

    # D — disparador en AGENTS.md, con el sello todavía al final
    A="$P/AGENTS.md"
    trig_bad=0
    n_trig="$(count_fixed "$A" "<!-- sdd:trigger -->")"
    [ "$n_trig" -eq 1 ] || { printf "  ✗ AGENTS.md (%s): <!-- sdd:trigger --> aparece %s veces (debe ser 1)\n" "$lang" "$n_trig"; trig_bad=1; }
    eval "t1=\"\$TRIGGER1_$lang\"; t2=\"\$TRIGGER2_$lang\""
    grep -q -F -- "$t1" "$A" || { printf "  ✗ AGENTS.md (%s): falta la línea 1 del disparador\n" "$lang"; trig_bad=1; }
    grep -q -F -- "$t2" "$A" || { printf "  ✗ AGENTS.md (%s): falta la línea 2 del disparador\n" "$lang"; trig_bad=1; }
    tail -n 1 "$A" | grep -q "nyx-version: $SEED_VER" \
        || { printf "  ✗ AGENTS.md (%s): el sello dejó de ser la última línea tras insertar el disparador\n" "$lang"; trig_bad=1; }
    # Un proyecto es MONOLINGÜE: el disparador del otro idioma no puede aparecer
    # (sería la mitad del archivo hablando en otro idioma, y la señal de que la
    # selección por idioma se rompió).
    otro="es"; [ "$lang" = "es" ] && otro="en"
    eval "o1=\"\$TRIGGER1_$otro\"; o2=\"\$TRIGGER2_$otro\""
    grep -q -F -- "$o1" "$A" && { printf "  ✗ AGENTS.md (%s): también trae la línea 1 del disparador en %s\n" "$lang" "$otro"; trig_bad=1; }
    grep -q -F -- "$o2" "$A" && { printf "  ✗ AGENTS.md (%s): también trae la línea 2 del disparador en %s\n" "$lang" "$otro"; trig_bad=1; }
    if [ "$trig_bad" -eq 0 ]; then
        printf "  ✓ disparador (%s): las 2 líneas del idioma (ninguna del otro), marcadas una sola vez, con el sello al final\n" "$lang"
    else
        FAIL=$((FAIL + 1))
    fi

    # G — evidencia generada desde la tabla de gotchas
    E="$P/docs/evidence/nyx-$SEED_VER.md"
    ev_bad=0
    if [ ! -f "$E" ]; then
        printf "  ✗ no se generó docs/evidence/nyx-%s.md (%s)\n" "$SEED_VER" "$lang"; ev_bad=1
    else
        for entrada in "${ANCLAS[@]}"; do
            id="${entrada#*|}"
            grep -q -F -- "$id" "$E" || { printf "  ✗ evidencia (%s): falta la trampa/regla viva «%s»\n" "$lang" "$id"; ev_bad=1; }
        done
        grep -qE '^## ' "$E" || { printf "  ✗ evidencia (%s): sin sección de retirados\n" "$lang"; ev_bad=1; }
        grep -q -F -- "GENERATED" "$E" || { printf "  ✗ evidencia (%s): sin cabecera GENERATED\n" "$lang"; ev_bad=1; }
    fi
    if [ "$ev_bad" -eq 0 ]; then
        printf "  ✓ evidencia (%s): las %d trampas/reglas vivas de la tabla + retirados + cabecera GENERATED\n" "$lang" "${#ANCLAS[@]}"
    else
        FAIL=$((FAIL + 1))
    fi

    # H (estático) — un bloque test por gotcha con pattern + el test de tests/
    T="$P/tests/constitution_test.nx"
    tst_bad=0
    if [ ! -f "$T" ]; then
        printf "  ✗ no se generó tests/constitution_test.nx (%s)\n" "$lang"; tst_bad=1
    else
        n_blocks="$(grep -c '^test "gotcha ' "$T")"
        [ "$n_blocks" -eq "${#PATTERN_CODES[@]}" ] \
            || { printf "  ✗ test de constitución (%s): %s bloques de gotcha, se esperaban %s (PATTERN_CODES)\n" "$lang" "$n_blocks" "${#PATTERN_CODES[@]}"; tst_bad=1; }
        for entrada in "${PATTERN_CODES[@]}"; do
            id="${entrada#*|}"
            grep -q -F -- "test \"gotcha $id" "$T" || { printf "  ✗ test de constitución (%s): falta el bloque de «%s»\n" "$lang" "$id"; tst_bad=1; }
        done
        grep -q -F -- 'test "every file in tests/' "$T" || { printf "  ✗ test de constitución (%s): falta el test de archivos sin bloques test\n" "$lang"; tst_bad=1; }
        grep -q -F -- "GENERATED" "$T" || { printf "  ✗ test de constitución (%s): sin cabecera GENERATED\n" "$lang"; tst_bad=1; }
    fi
    if [ "$tst_bad" -eq 0 ]; then
        printf "  ✓ test de constitución (%s): %d bloques (uno por pattern) + el test de tests/ + cabecera GENERATED\n" "$lang" "${#PATTERN_CODES[@]}"
    else
        FAIL=$((FAIL + 1))
    fi

    # I — neutralidad de proveedor sobre TODO lo sembrado con --sdd
    if grep -ril 'claude\|cursor\|copilot' "$P" > "$TMPDIR/neutral_$lang.txt" 2>/dev/null; then
        printf "  ✗ marca de proveedor en lo sembrado con --sdd (%s):\n" "$lang"
        sed "s|$W/||; s/^/      /" "$TMPDIR/neutral_$lang.txt"; FAIL=$((FAIL + 1))
    else
        printf "  ✓ neutralidad (%s): ni claude/cursor/copilot en el andamiaje\n" "$lang"
    fi

    # J — mensaje de reversibilidad
    rev_bad=0
    for needle in "docs/constitution.md" "docs/evidence/" "docs/adr/" "docs/sdd/" "specs/" "tests/constitution_test.nx"; do
        grep -q -F -- "$needle" "$TMPDIR/init_$lang.log" || { printf "  ✗ el mensaje final (%s) no nombra «%s»\n" "$lang" "$needle"; rev_bad=1; }
    done
    if [ "$rev_bad" -eq 0 ]; then
        printf "  ✓ reversibilidad (%s): el comando dice qué borrar para volver a un init normal\n" "$lang"
    else
        FAIL=$((FAIL + 1))
    fi

    # E — idempotencia: un segundo `sdd init` no toca nada
    touch "$TMPDIR/marca_$lang"
    sleep 0.05
    sdd_at "$P" init
    CHANGED="$(find "$P" -newer "$TMPDIR/marca_$lang" -type f 2>/dev/null | LC_ALL=C sort)"
    if [ -z "$CHANGED" ]; then
        printf "  ✓ idempotencia (%s): el segundo «sdd init» no modificó ningún archivo\n" "$lang"
    else
        printf "  ✗ el segundo «sdd init» (%s) reescribió:\n" "$lang"
        printf '%s\n' "$CHANGED" | sed "s|$P/|      |"; FAIL=$((FAIL + 1))
    fi
    grep -qiE 'ya existe|already exists|skip|saltea' "$TMPDIR/out.log" \
        || { printf "  ✗ el segundo «sdd init» (%s) no avisó que saltea nada\n" "$lang"; FAIL=$((FAIL + 1)); }

    # F — constitución editada (marcador quitado): se saltea con aviso, no se pisa
    printf '\nUna linea verdadera escrita por el usuario.\n' >> "$C"
    sed -i 's/SDD_INCOMPLETE//' "$C"
    cp "$C" "$TMPDIR/const_antes_$lang.md"
    sdd_at "$P" init
    if cmp -s "$C" "$TMPDIR/const_antes_$lang.md"; then
        if grep -q -F -- "docs/constitution.md" "$TMPDIR/out.log"; then
            printf "  ✓ constitución editada (%s): intacta y nombrada en el aviso de salteo\n" "$lang"
        else
            printf "  ✗ constitución editada (%s): no se pisó, pero el aviso no la nombra\n" "$lang"; FAIL=$((FAIL + 1))
        fi
    else
        printf "  ✗ el segundo «sdd init» (%s) PISÓ una constitución con contenido del usuario\n" "$lang"; FAIL=$((FAIL + 1))
    fi
done

# ── K — el camino INSIGNIA: `nyx sdd init` sobre un proyecto que YA existe ──
# (`nyx init --sdd` es el caso fácil; el que motiva la feature es el proyecto
# que se volvió inmanejable y recién ahí quiere andamiaje.) Se ejercita por las
# DOS puertas: el binario y el wrapper `scripts/nyx` (que rutea `sdd` al case PM).
for via in binario wrapper; do
    W="$TMPDIR/existente_$via"
    init_at "$W" g
    P="$W/g"
    if [ ! -f "$P/nyx.toml" ]; then
        printf "  ✗ init (sin --sdd) falló para el caso «proyecto existente» (%s)\n" "$via"
        FAIL=$((FAIL + 1)); continue
    fi
    if [ "$via" = "binario" ]; then
        sdd_at "$P" init
    else
        (cd "$P" && NYX_HOME="$STAGE" bash "$REPO_ROOT/scripts/nyx" sdd init > "$TMPDIR/out.log" 2>&1)
    fi
    expected_listing en > "$TMPDIR/exp_existente.txt"
    if listing "$W" g | diff -u "$TMPDIR/exp_existente.txt" - > "$TMPDIR/diff_existente.txt" 2>&1; then
        printf "  ✓ sdd init vía %s sobre un proyecto existente: default + las 7 piezas\n" "$via"
    else
        printf "  ✗ sdd init vía %s sobre un proyecto existente NO deja el listado esperado:\n" "$via"
        sed 's/^/      /' "$TMPDIR/diff_existente.txt"; FAIL=$((FAIL + 1))
    fi
    if [ "$(count_fixed "$P/AGENTS.md" "<!-- sdd:trigger -->")" -eq 1 ]; then
        printf "  ✓ sdd init vía %s: el disparador quedó en el AGENTS.md que ya existía\n" "$via"
    else
        printf "  ✗ sdd init vía %s: el disparador no quedó exactamente una vez en AGENTS.md\n" "$via"
        FAIL=$((FAIL + 1))
    fi
done

# ── L — `sdd evidence` (lo que corre `nyx update`): sin cambios habla, y el
# archivo del usuario no se toca ───────────────────────────────────────────
P="$TMPDIR/existente_binario/g"
if [ -f "$P/tests/constitution_test.nx" ]; then
    sdd_at "$P" evidence
    if grep -qiE 'already up to date|ya está al día' "$TMPDIR/out.log"; then
        printf "  ✓ sdd evidence sobre un proyecto al día: lo DICE (no se queda mudo)\n"
    else
        printf "  ✗ sdd evidence no avisó que ya estaba al día:\n"; sed 's/^/      /' "$TMPDIR/out.log"
        FAIL=$((FAIL + 1))
    fi
    # El test SIN la cabecera GENERATED es del usuario: se saltea y no se toca.
    sed -i '1d' "$P/tests/constitution_test.nx"
    SUM_ANTES="$(cksum < "$P/tests/constitution_test.nx")"
    sdd_at "$P" evidence
    SUM_DESPUES="$(cksum < "$P/tests/constitution_test.nx")"
    if [ "$SUM_ANTES" = "$SUM_DESPUES" ]; then
        if grep -qiE 'yours|es tuyo' "$TMPDIR/out.log"; then
            printf "  ✓ sdd evidence: un tests/constitution_test.nx sin cabecera GENERATED es del usuario — intacto y avisado\n"
        else
            printf "  ✗ sdd evidence: no pisó el test del usuario, pero no avisó que lo salteaba:\n"
            sed 's/^/      /' "$TMPDIR/out.log"; FAIL=$((FAIL + 1))
        fi
    else
        printf "  ✗ sdd evidence PISÓ un tests/constitution_test.nx sin cabecera GENERATED (es del usuario)\n"
        FAIL=$((FAIL + 1))
    fi
else
    printf "  ✗ el caso «proyecto existente» no dejó tests/constitution_test.nx: no se pudo probar sdd evidence\n"
    FAIL=$((FAIL + 1))
fi

# ── H (dinámico) — `nyx test` de verdad sobre el proyecto sembrado ───────
# Con la toolchain INSTALADA (~/.nyx): nyx_test compila y ejecuta el test
# dentro de NYX_HOME, así que necesita runtime/ y std/ reales, que el STAGE de
# esta guardia no tiene. SKIP limpio (no falso verde) si no hay `nyx`.
NYX_BIN="$(command -v nyx || true)"
P="$TMPDIR/sdd_en/g"
if [ -z "$NYX_BIN" ]; then
    printf "  · nyx test: no hay 'nyx' en el PATH — se salta el control positivo del test de constitución\n"
elif [ ! -f "$P/tests/constitution_test.nx" ]; then
    printf "  · nyx test: el proyecto EN no llegó a sembrarse — se salta (los checks de arriba ya son rojos)\n"
else
    if (cd "$P" && "$NYX_BIN" test > "$TMPDIR/nyxtest_clean.log" 2>&1); then
        printf "  ✓ nyx test: PASA en el proyecto recién sembrado (%s)\n" "$(grep -o 'Tests:.*' "$TMPDIR/nyxtest_clean.log" | tail -1)"
    else
        printf "  ✗ nyx test FALLA en un proyecto recién sembrado (el test generado tiene que estar verde):\n"
        sed 's/^/      /' "$TMPDIR/nyxtest_clean.log" | tail -20; FAIL=$((FAIL + 1))
    fi
    # Regresión I-2 (review final): un comentario didáctico que CITA el gotcha
    # —del estilo que el propio AGENTS.md induce a escribir— no es código y no
    # puede poner en rojo un test que el usuario no escribió, en un archivo que
    # le decimos que no edite. El comentario se deja puesto para el control
    # positivo de abajo: el gotcha real tiene que seguir cazándose igual.
    printf '\n// Coming from Rust, do not write Shape::Circle — write Shape.Circle.\n' >> "$P/src/main.nx"
    if (cd "$P" && "$NYX_BIN" test > "$TMPDIR/nyxtest_comment.log" 2>&1); then
        printf "  ✓ nyx test: sigue PASANDO con un comentario que cita Shape::Circle en src/main.nx (%s)\n" "$(grep -o 'Tests:.*' "$TMPDIR/nyxtest_comment.log" | tail -1)"
    else
        printf "  ✗ nyx test FALLA por un COMENTARIO que cita el gotcha (falso positivo del matcheo textual):\n"
        sed 's/^/      /' "$TMPDIR/nyxtest_comment.log" | tail -20; FAIL=$((FAIL + 1))
    fi
    # Control positivo: plantar el gotcha más caro (enum con `::`) y exigir
    # que el test lo cace CON archivo:línea.
    printf 'let bad = Shape::Circle(1)\n' > "$P/src/bad.nx"
    if (cd "$P" && "$NYX_BIN" test > "$TMPDIR/nyxtest_bad.log" 2>&1); then
        printf "  ✗ nyx test dio VERDE con src/bad.nx conteniendo Shape::Circle(1) (el test no puede fallar)\n"
        FAIL=$((FAIL + 1))
    else
        if grep -q -F -- "src/bad.nx:1" "$TMPDIR/nyxtest_bad.log"; then
            printf "  ✓ nyx test: FALLA citando src/bad.nx:1 con el enum plantado (control positivo)\n"
        else
            printf "  ✗ nyx test falló pero SIN citar src/bad.nx:1:\n"
            sed 's/^/      /' "$TMPDIR/nyxtest_bad.log" | tail -20; FAIL=$((FAIL + 1))
        fi
    fi
    rm -f "$P/src/bad.nx"
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  andamiaje SDD (nyx init --sdd / nyx sdd init): FALLÓ ($FAIL problema(s))"
    exit 1
fi
echo "  andamiaje SDD (nyx init --sdd / nyx sdd init): PASS"
exit 0
