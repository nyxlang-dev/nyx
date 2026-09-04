#!/usr/bin/env bash
# run_sync_docs_migration.sh — migración del layout viejo por
# `nyx update --sync-docs` (Task 6, arco andamiaje-sdd, spec §2 «Migración de
# proyectos existentes»).
#
# Hasta esta guardia, `--sync-docs` sabía resembrar AGENTS.md/docs/nyx/** con
# el juego de plantillas correcto, pero un proyecto sembrado por el toolchain
# ANTERIOR a ADR-1 (LLM.md en la raíz, CHEATSHEET.md, CLAUDE.md/.cursorrules/
# copilot con marca, .claude/skills/) se quedaba con el layout viejo para
# siempre — nadie migraba nada. Esta guardia prueba `_migrate_seeded_layout()`
# del wrapper: la tabla de la spec, fila por fila, con la regla de oro «solo
# se toca lo que lleva NUESTRO sello» (`grep 'nyx-version:'`).
#
# Escenarios:
#   (a) layout viejo CON sello  → migra: docs/nyx/LLM.md fresco, LLM.md.bak,
#       CHEATSHEET.md.bak, CLAUDE.md reemplazado por el adaptador fino (≤4
#       líneas no vacías, cita AGENTS.md) + CLAUDE.md.bak, .claude/skills.bak.
#   (b) los mismos 4 archivos SIN sello → nada se toca (byte a byte) + un
#       aviso «no lo sembró nyx» por archivo.
#   (c) correr --sync-docs dos veces → la segunda no migra nada (ni una línea
#       "→" en la salida) y los checksums de los artefactos migrados no
#       cambian entre corridas.
#   (d) copia real de ~/nyx/web/sites/nyxlang.com (sin sello, consumidor vivo
#       citado en la spec) → solo AGENTS.md, CAPABILITIES.md y docs/nyx/**
#       cambian o aparecen; el resto del proyecto queda intacto.
#   (e) purga de templates/ legacy en install-local (scripts/
#       install_purge_legacy_templates.sh, la MISMA función que usa el
#       Makefile — no una copia de la lógica) sobre un árbol de prueba.
#
# NYX_HOME de prueba: armado en tmp igual que run_init_golden.sh (VERSION +
# std/ simlink + templates/ con LLM.md inyectado en templates/en/docs/nyx/ +
# nyx_bootstrap, porque `scripts/nyx` resuelve NYX_BOOTSTRAP ANTES de
# despachar a `update --sync-docs`, para cualquier subcomando).
#
# set -u sin pipefail (regla del repo: grep -q + pipe muerde con SIGPIPE).
set -u
cd "$(dirname "$0")/../.."
REPO_ROOT="$PWD"

FAIL=0

if [ ! -x ./nyx_build ]; then
    echo "  ✗ falta ./nyx_build — corre 'make build-nyx-build' primero"
    exit 1
fi
if [ ! -x ./nyx_bootstrap ]; then
    echo "  ✗ falta ./nyx_bootstrap — corre 'make bootstrap' primero"
    exit 1
fi

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
cp nyx_build "$STAGE/nyx_build"
cp nyx_bootstrap "$STAGE/nyx_bootstrap"

STAMP='<!-- nyx-version: 0.31.0 -->'

# seed_legacy DIR con|sin — planta a mano los 4 puntos de la tabla de
# migración, CON o SIN el sello.
seed_legacy() {
    local dir="$1" with_stamp="$2"
    mkdir -p "$dir/.claude/skills/x"
    if [ "$with_stamp" = "yes" ]; then
        printf '# LLM.md viejo\ncontenido de referencia denso\n\n%s\n' "$STAMP" > "$dir/LLM.md"
        printf '# CHEATSHEET.md viejo\n\n%s\n' "$STAMP" > "$dir/CHEATSHEET.md"
        printf '# CLAUDE.md viejo\ncontenido largo con marca comercial\n\n%s\n' "$STAMP" > "$dir/CLAUDE.md"
        printf -- '---\nname: x\n---\n# skill x vieja\n\n%s\n' "$STAMP" > "$dir/.claude/skills/x/SKILL.md"
    else
        printf '# LLM.md del usuario\nesto lo escribió el usuario, sin sello\n' > "$dir/LLM.md"
        printf '# CHEATSHEET.md del usuario\nsin sello\n' > "$dir/CHEATSHEET.md"
        printf '# CLAUDE.md del usuario\nsin sello, con ediciones propias\n' > "$dir/CLAUDE.md"
        printf -- '---\nname: x\n---\n# skill x del usuario, sin sello\n' > "$dir/.claude/skills/x/SKILL.md"
    fi
}

# run_sync DIR — corre `scripts/nyx update --sync-docs` dentro de DIR con el
# NYX_HOME de prueba. Nunca llega a la rama `git pull` (siempre con la bandera).
run_sync() {
    (cd "$1" && NYX_HOME="$STAGE" bash "$REPO_ROOT/scripts/nyx" update --sync-docs)
}

nonblank_lines() { grep -cve '^[[:space:]]*$' "$1"; }

# ── Escenario (a): layout viejo CON sello ─────────────────────────────────
echo "== Escenario (a): layout viejo CON sello =="
W="$TMPDIR/a"
mkdir -p "$W"
(cd "$W" && NYX_HOME="$STAGE" "$REPO_ROOT/nyx_build" init proj > "$TMPDIR/a_init.log" 2>&1)
PROJ="$W/proj"
if [ ! -f "$PROJ/nyx.toml" ]; then
    printf "  ✗ init falló para el escenario (a):\n"; sed 's/^/      /' "$TMPDIR/a_init.log"
    FAIL=$((FAIL + 1))
else
    seed_legacy "$PROJ" yes
    # Important #1 del review (fix round 1): un .bak preexistente (respaldo
    # manual del usuario, o de una corrida interrumpida y restaurada a mano)
    # NO debe pisarse en silencio. Plantamos un LLM.md.bak propio ANTES de
    # migrar y verificamos que sobrevive byte a byte + que apareció un
    # respaldo alternativo (LLM.md.bak.1) con el contenido migrado.
    USER_BAK_CONTENT='# LLM.md.bak del usuario — respaldo manual propio, NO tocar'
    printf '%s\n' "$USER_BAK_CONTENT" > "$PROJ/LLM.md.bak"
    OUT_A="$TMPDIR/a.out"
    if ! run_sync "$PROJ" > "$OUT_A" 2>&1; then
        printf "  ✗ --sync-docs falló en (a):\n"; sed 's/^/      /' "$OUT_A"
        FAIL=$((FAIL + 1))
    fi
    ok=1
    [ -f "$PROJ/docs/nyx/LLM.md" ] || { printf "  ✗ (a) docs/nyx/LLM.md no existe tras la migración\n"; ok=0; }
    [ -f "$PROJ/LLM.md.bak" ] || { printf "  ✗ (a) LLM.md.bak no existe\n"; ok=0; }
    [ "$(cat "$PROJ/LLM.md.bak" 2>/dev/null)" = "$USER_BAK_CONTENT" ] \
        || { printf "  ✗ (a) LLM.md.bak preexistente fue pisado (debía sobrevivir byte a byte)\n"; ok=0; }
    [ -f "$PROJ/LLM.md.bak.1" ] || { printf "  ✗ (a) no apareció el respaldo alternativo LLM.md.bak.1\n"; ok=0; }
    grep -qF "$STAMP" "$PROJ/LLM.md.bak.1" 2>/dev/null \
        || { printf "  ✗ (a) LLM.md.bak.1 no tiene el contenido migrado (con sello)\n"; ok=0; }
    grep -qF '⚠ LLM.md.bak ya existía: respaldo en' "$OUT_A" \
        || { printf "  ✗ (a) falta el aviso de .bak preexistente\n"; ok=0; }
    [ -f "$PROJ/LLM.md" ] && { printf "  ✗ (a) LLM.md sigue en la raíz (debía migrar)\n"; ok=0; }
    [ -f "$PROJ/CHEATSHEET.md.bak" ] || { printf "  ✗ (a) CHEATSHEET.md.bak no existe\n"; ok=0; }
    [ -f "$PROJ/CHEATSHEET.md" ] && { printf "  ✗ (a) CHEATSHEET.md sigue en la raíz (debía retirarse)\n"; ok=0; }
    if [ -f "$PROJ/CLAUDE.md" ]; then
        n="$(nonblank_lines "$PROJ/CLAUDE.md")"
        [ "$n" -le 4 ] || { printf "  ✗ (a) CLAUDE.md migrado tiene %s líneas no vacías (esperado <= 4)\n" "$n"; ok=0; }
        grep -q 'AGENTS.md' "$PROJ/CLAUDE.md" || { printf "  ✗ (a) CLAUDE.md migrado no cita AGENTS.md\n"; ok=0; }
    else
        printf "  ✗ (a) CLAUDE.md no existe tras la migración\n"; ok=0
    fi
    [ -f "$PROJ/CLAUDE.md.bak" ] || { printf "  ✗ (a) CLAUDE.md.bak no existe\n"; ok=0; }
    grep -q 'contenido largo con marca comercial' "$PROJ/CLAUDE.md.bak" 2>/dev/null \
        || { printf "  ✗ (a) CLAUDE.md.bak no conserva el contenido viejo\n"; ok=0; }
    [ -d "$PROJ/.claude/skills.bak" ] || { printf "  ✗ (a) .claude/skills.bak no existe\n"; ok=0; }
    [ -d "$PROJ/.claude/skills" ] && { printf "  ✗ (a) .claude/skills sigue existiendo (debía retirarse)\n"; ok=0; }
    if [ "$ok" -eq 1 ]; then
        printf "  ✓ escenario (a): layout viejo con sello migrado correctamente\n"
    else
        FAIL=$((FAIL + 1))
    fi
fi

# ── Escenario (b): layout viejo SIN sello ─────────────────────────────────
echo "== Escenario (b): layout viejo SIN sello =="
W="$TMPDIR/b"
mkdir -p "$W"
(cd "$W" && NYX_HOME="$STAGE" "$REPO_ROOT/nyx_build" init proj > "$TMPDIR/b_init.log" 2>&1)
PROJ="$W/proj"
if [ ! -f "$PROJ/nyx.toml" ]; then
    printf "  ✗ init falló para el escenario (b):\n"; sed 's/^/      /' "$TMPDIR/b_init.log"
    FAIL=$((FAIL + 1))
else
    seed_legacy "$PROJ" no
    LEGACY_FILES="LLM.md CHEATSHEET.md CLAUDE.md .claude/skills/x/SKILL.md"
    BEFORE="$TMPDIR/b_before.sum"
    : > "$BEFORE"
    for f in $LEGACY_FILES; do md5sum "$PROJ/$f" >> "$BEFORE"; done
    OUT_B="$TMPDIR/b.out"
    if ! run_sync "$PROJ" > "$OUT_B" 2>&1; then
        printf "  ✗ --sync-docs falló en (b):\n"; sed 's/^/      /' "$OUT_B"
        FAIL=$((FAIL + 1))
    fi
    AFTER="$TMPDIR/b_after.sum"
    : > "$AFTER"
    for f in $LEGACY_FILES; do md5sum "$PROJ/$f" >> "$AFTER"; done
    if diff -u "$BEFORE" "$AFTER" > "$TMPDIR/b_diff.txt" 2>&1; then
        printf "  ✓ escenario (b): los 4 archivos sin sello quedaron byte a byte intactos\n"
    else
        printf "  ✗ escenario (b): algún archivo sin sello cambió:\n"
        sed 's/^/      /' "$TMPDIR/b_diff.txt"
        FAIL=$((FAIL + 1))
    fi
    warn_ok=1
    for f in $LEGACY_FILES; do
        grep -qF "⚠ $f no lo sembró nyx" "$OUT_B" \
            || { printf "  ✗ escenario (b): falta el aviso para %s\n" "$f"; warn_ok=0; }
    done
    if [ "$warn_ok" -eq 1 ]; then
        printf "  ✓ escenario (b): aviso «no lo sembró nyx» para los 4 archivos sin sello\n"
    else
        FAIL=$((FAIL + 1))
    fi
    [ -f "$PROJ/LLM.md.bak" ] && { printf "  ✗ escenario (b): LLM.md.bak no debía existir\n"; FAIL=$((FAIL + 1)); }
    [ -f "$PROJ/CHEATSHEET.md.bak" ] && { printf "  ✗ escenario (b): CHEATSHEET.md.bak no debía existir\n"; FAIL=$((FAIL + 1)); }
    [ -f "$PROJ/CLAUDE.md.bak" ] && { printf "  ✗ escenario (b): CLAUDE.md.bak no debía existir\n"; FAIL=$((FAIL + 1)); }
    [ -d "$PROJ/.claude/skills.bak" ] && { printf "  ✗ escenario (b): .claude/skills.bak no debía existir\n"; FAIL=$((FAIL + 1)); }
fi

# ── Escenario (c): idempotencia ───────────────────────────────────────────
echo "== Escenario (c): correr --sync-docs dos veces =="
W="$TMPDIR/c"
mkdir -p "$W"
(cd "$W" && NYX_HOME="$STAGE" "$REPO_ROOT/nyx_build" init proj > "$TMPDIR/c_init.log" 2>&1)
PROJ="$W/proj"
if [ ! -f "$PROJ/nyx.toml" ]; then
    printf "  ✗ init falló para el escenario (c):\n"; sed 's/^/      /' "$TMPDIR/c_init.log"
    FAIL=$((FAIL + 1))
else
    seed_legacy "$PROJ" yes
    run_sync "$PROJ" > "$TMPDIR/c1.out" 2>&1
    MIGRATED="LLM.md.bak CHEATSHEET.md.bak CLAUDE.md CLAUDE.md.bak"
    CK1="$TMPDIR/c_sum1.txt"; : > "$CK1"
    for f in $MIGRATED; do [ -f "$PROJ/$f" ] && md5sum "$PROJ/$f" >> "$CK1"; done
    # Important #1 de la review final: _sync_one (AGENTS.md, docs/nyx/LLM.md y
    # las 3 guías) también tiene que respaldar por _safe_backup. Espejo exacto
    # del check que el escenario (a) ya hace para LLM.md, pero sobre una de las
    # 5 rutas que --sync-docs toca SIEMPRE: plantamos un AGENTS.md.bak propio y
    # editamos AGENTS.md localmente ENTRE las dos corridas, así la segunda tiene
    # que respaldar y no puede reusar el .bak del usuario.
    AGENTS_BAK_CONTENT='# AGENTS.md.bak del usuario — respaldo manual propio, NO tocar'
    printf '%s\n' "$AGENTS_BAK_CONTENT" > "$PROJ/AGENTS.md.bak"
    AGENTS_LOCAL_EDIT='<!-- edición local del usuario, previa a la segunda corrida -->'
    printf '%s\n' "$AGENTS_LOCAL_EDIT" >> "$PROJ/AGENTS.md"
    run_sync "$PROJ" > "$TMPDIR/c2.out" 2>&1
    bak_ok=1
    [ "$(cat "$PROJ/AGENTS.md.bak" 2>/dev/null)" = "$AGENTS_BAK_CONTENT" ] \
        || { printf "  ✗ (c) AGENTS.md.bak preexistente fue pisado (debía sobrevivir byte a byte)\n"; bak_ok=0; }
    [ -f "$PROJ/AGENTS.md.bak.1" ] \
        || { printf "  ✗ (c) no apareció el respaldo alternativo AGENTS.md.bak.1\n"; bak_ok=0; }
    grep -qF "$AGENTS_LOCAL_EDIT" "$PROJ/AGENTS.md.bak.1" 2>/dev/null \
        || { printf "  ✗ (c) AGENTS.md.bak.1 no conserva la edición local previa\n"; bak_ok=0; }
    grep -qF '⚠ AGENTS.md.bak ya existía: respaldo en' "$TMPDIR/c2.out" \
        || { printf "  ✗ (c) falta el aviso de .bak preexistente para AGENTS.md\n"; bak_ok=0; }
    if [ "$bak_ok" -eq 1 ]; then
        printf "  ✓ escenario (c): _sync_one respeta un AGENTS.md.bak del usuario (respaldo en AGENTS.md.bak.1, con aviso)\n"
    else
        FAIL=$((FAIL + 1))
    fi
    CK2="$TMPDIR/c_sum2.txt"; : > "$CK2"
    for f in $MIGRATED; do [ -f "$PROJ/$f" ] && md5sum "$PROJ/$f" >> "$CK2"; done

    if grep -q '→' "$TMPDIR/c1.out"; then
        printf "  ✓ escenario (c): la primera corrida migró (autotest — hay líneas «→»)\n"
    else
        printf "  ✗ escenario (c): la primera corrida no migró nada — el test no prueba nada\n"
        FAIL=$((FAIL + 1))
    fi
    if grep -q '→' "$TMPDIR/c2.out"; then
        printf "  ✗ escenario (c): la segunda corrida migró de nuevo:\n"
        sed 's/^/      /' "$TMPDIR/c2.out"
        FAIL=$((FAIL + 1))
    else
        printf "  ✓ escenario (c): la segunda corrida no migra nada (sin líneas «→»)\n"
    fi
    if diff -u "$CK1" "$CK2" > "$TMPDIR/c_diff.txt" 2>&1; then
        printf "  ✓ escenario (c): checksums de los artefactos migrados sin cambios entre corridas\n"
    else
        printf "  ✗ escenario (c): los artefactos migrados cambiaron en la segunda corrida:\n"
        sed 's/^/      /' "$TMPDIR/c_diff.txt"
        FAIL=$((FAIL + 1))
    fi
fi

# ── Escenario (d): copia real de un consumidor vivo ───────────────────────
echo "== Escenario (d): copia de ~/nyx/web/sites/nyxlang.com =="
# Autotest del comparador de BORRADOS (Important #2 del review, fix round 1):
# antes de confiar en el check real, probar que `comm -23 BEFORE AFTER` SÍ
# detecta un archivo que estaba en BEFORE y ya no está en AFTER — si el
# comparador no cazara un borrado, el check real de abajo podría dar verde
# aunque --sync-docs hubiera borrado algo.
AUTO_BEFORE="$TMPDIR/d_auto_before.txt"
AUTO_AFTER="$TMPDIR/d_auto_after.txt"
printf './a\n./b\n./c\n' > "$AUTO_BEFORE"
printf './a\n./c\n' > "$AUTO_AFTER"
AUTO_DELETED="$(comm -23 "$AUTO_BEFORE" "$AUTO_AFTER")"
if [ "$AUTO_DELETED" = "./b" ]; then
    printf "  ✓ autotest del comparador de borrados (comm -23 caza ./b)\n"
else
    printf "  ✗ autotest ROTO — el comparador de borrados no detectó ./b (comm -23 dio: «%s»)\n" "$AUTO_DELETED"
    FAIL=$((FAIL + 1))
fi
SITE_SRC="$HOME/nyx/web/sites/nyxlang.com"
if [ ! -d "$SITE_SRC" ] || [ ! -f "$SITE_SRC/nyx.toml" ]; then
    printf "  ⊘ SKIP: %s no está clonado (o no es un proyecto Nyx) en esta máquina\n" "$SITE_SRC"
else
    W="$TMPDIR/site"
    mkdir -p "$W"
    cp -r "$SITE_SRC" "$W/proj"
    PROJ="$W/proj"
    BEFORE="$TMPDIR/site_before.txt"
    (cd "$PROJ" && find . -type f | LC_ALL=C sort) > "$BEFORE"
    OUT_SITE="$TMPDIR/site.out"
    if ! run_sync "$PROJ" > "$OUT_SITE" 2>&1; then
        printf "  ✗ --sync-docs falló sobre la copia del sitio real:\n"; sed 's/^/      /' "$OUT_SITE"
        FAIL=$((FAIL + 1))
    fi
    AFTER="$TMPDIR/site_after.txt"
    (cd "$PROJ" && find . -type f | LC_ALL=C sort) > "$AFTER"
    bad=0
    NEW_FILES="$(comm -13 "$BEFORE" "$AFTER")"
    while IFS= read -r nf; do
        [ -z "$nf" ] && continue
        case "$nf" in
            ./AGENTS.md|./CAPABILITIES.md|./docs/nyx/*) : ;;
            *) printf "  ✗ (d) archivo nuevo fuera de lo esperado: %s\n" "$nf"; bad=1 ;;
        esac
    done <<< "$NEW_FILES"
    PRE_EXISTING="$(comm -12 "$BEFORE" "$AFTER")"
    while IFS= read -r ef; do
        [ -z "$ef" ] && continue
        if ! cmp -s "$SITE_SRC/${ef#./}" "$PROJ/${ef#./}" 2>/dev/null; then
            case "$ef" in
                ./AGENTS.md|./CAPABILITIES.md|./docs/nyx/*) : ;;
                *) printf "  ✗ (d) archivo preexistente modificado fuera de lo esperado: %s\n" "$ef"; bad=1 ;;
            esac
        fi
    done <<< "$PRE_EXISTING"
    # Important #2 del review: BEFORE/AFTER solo miraba altas (comm -13) y
    # sobrevivientes (comm -12) — nunca BORRADOS. --sync-docs no debía borrar
    # nada de un proyecto sin layout viejo sellado (no hay nada que migrar).
    DELETED="$(comm -23 "$BEFORE" "$AFTER")"
    if [ -n "$DELETED" ]; then
        printf "  ✗ (d) --sync-docs borró archivos que no debía tocar:\n"
        printf '%s\n' "$DELETED" | sed 's/^/      /'
        bad=1
    fi
    if [ "$bad" -eq 0 ]; then
        printf "  ✓ escenario (d): solo AGENTS.md, CAPABILITIES.md y docs/nyx/** cambiaron\n"
    else
        FAIL=$((FAIL + 1))
    fi
fi

# ── Escenario (e): purga de templates/ legacy (install-local) ─────────────
echo "== Escenario (e): purga de templates/ legacy en install-local =="
PURGE_SCRIPT="$REPO_ROOT/scripts/install_purge_legacy_templates.sh"
if [ ! -x "$PURGE_SCRIPT" ]; then
    printf "  ✗ falta %s\n" "$PURGE_SCRIPT"
    FAIL=$((FAIL + 1))
else
    LEGACY="$TMPDIR/legacy_home"
    mkdir -p "$LEGACY/templates/en/docs/nyx" "$LEGACY/templates/es" "$LEGACY/templates/adapters" \
             "$LEGACY/templates/.github" "$LEGACY/templates/.claude/skills/x"
    : > "$LEGACY/templates/AGENTS.md"
    : > "$LEGACY/templates/CLAUDE.md"
    : > "$LEGACY/templates/CHEATSHEET.md"
    : > "$LEGACY/templates/LLM.md"
    : > "$LEGACY/templates/.cursorrules"
    : > "$LEGACY/templates/.github/copilot-instructions.md"
    : > "$LEGACY/templates/.claude/skills/x/SKILL.md"
    : > "$LEGACY/templates/en/AGENTS.md"
    : > "$LEGACY/templates/en/docs/nyx/LLM.md"
    : > "$LEGACY/templates/adapters/claude.en.md"
    bash "$PURGE_SCRIPT" "$LEGACY" > "$TMPDIR/purge.out" 2>&1
    purge_ok=1
    for dead in AGENTS.md CLAUDE.md CHEATSHEET.md LLM.md .cursorrules .github .claude; do
        [ -e "$LEGACY/templates/$dead" ] && { printf "  ✗ (e) %s sigue en templates/ tras la purga\n" "$dead"; purge_ok=0; }
    done
    for alive in en/AGENTS.md en/docs/nyx/LLM.md adapters/claude.en.md; do
        [ -e "$LEGACY/templates/$alive" ] || { printf "  ✗ (e) %s fue borrado por la purga (no debía)\n" "$alive"; purge_ok=0; }
    done
    if [ "$purge_ok" -eq 1 ]; then
        printf "  ✓ escenario (e): la purga borra exactamente los 7 caminos muertos, conserva el árbol nuevo\n"
    else
        FAIL=$((FAIL + 1))
    fi
fi

# ── What's new: verificación estática de que scripts/nyx invoca nyx_gendocs
# fixed-since en la rama `update` (el flujo real necesita git — fuera de
# alcance de esta guardia, que nunca puede llegar a esa rama).
echo "== Wiring estático: What's new de gotchas =="
if grep -q 'nyx_gendocs" fixed-since "\$OLD_VERSION"' "$REPO_ROOT/scripts/nyx"; then
    printf "  ✓ scripts/nyx invoca 'nyx_gendocs fixed-since \$OLD_VERSION' en la rama update\n"
else
    printf "  ✗ scripts/nyx no invoca nyx_gendocs fixed-since en la rama update\n"
    FAIL=$((FAIL + 1))
fi
if sed -n '/^install-local:/,/^$/p' "$REPO_ROOT/Makefile" | grep -q 'nyx_gendocs'; then
    printf "  ✓ Makefile (install-local) copia nyx_gendocs\n"
else
    printf "  ✗ Makefile no copia nyx_gendocs en install-local\n"
    FAIL=$((FAIL + 1))
fi

echo ""
if [ "$FAIL" -gt 0 ]; then
    echo "  migración de --sync-docs: FALLÓ ($FAIL problema(s))"
    exit 1
fi
echo "  migración de --sync-docs: PASS"
exit 0
