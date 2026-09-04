# lib_seeded_files.sh — la lista canónica de lo que `nyx init` siembra (por
# idioma), compartida por las guardias de scripts/testing/ que necesitan
# recorrer TODO lo sembrado (run_template_coherence.sh,
# run_seeded_blocks_compile.sh, run_templates_parity.sh).
#
# Desde ADR-1 (Task 5 de este arco) `templates/` está partido por idioma:
# `seeded_root en` → `templates/en`, `seeded_root es` → `templates/es`, y cada
# idioma devuelve su propia lista (AGENTS.md + docs/nyx/guides/*.md). El
# fallback al plano (`templates/`) se conserva a propósito: es lo que hace que
# estas funciones sigan sirviendo sobre un árbol pre-ADR-1 (un mirror público
# viejo, un fixture) en vez de devolver la lista vacía en silencio.
# Los adaptadores por proveedor (`templates/adapters/`) NO entran acá: no se
# siembran por defecto (son opt-in con `nyx init --agent=`).
#
# set -u sin pipefail (regla del repo — ver cabecera de los scripts que la
# sourcean). No hace `cd`: quien la sourcea ya está parado en la raíz del
# repo (convención de scripts/testing/).

seeded_root() { [ -d "templates/$1" ] && echo "templates/$1" || echo "templates"; }

# seeded_files_for LANG — todos los .md sembrados + .cursorrules, INCLUIDAS las
# plantillas del andamiaje SDD (`templates/<lang>/sdd/*.md`, Task 7): se
# siembran solo con `nyx init --sdd`, pero son texto que va a un proyecto del
# usuario igual que el resto — así que las mismas guardias las cubren (paridad
# EN/ES, mentiras resucitadas, imports sin comillas, ids citados). La exclusión
# `! -path '*/sdd/*'` que vivía acá las dejaba fuera de TODAS ellas.
seeded_files_for() { local r; r="$(seeded_root "$1")"; find "$r" -type f \( -name '*.md' -o -name '.cursorrules' \) | sort; }

# seeded_manuals_for LANG — solo el manual que debe llevar TODAS las anclas
# de trampas/reglas vivas (AGENTS.md).
seeded_manuals_for() { echo "$(seeded_root "$1")/AGENTS.md"; }

# seeded_files_for_all_langs LANGS... — unión (sin duplicados) de
# seeded_files_for para varios idiomas. Hoy, con templates/ plano, colapsa
# a una sola lista; sirve para no procesar el mismo archivo dos veces.
seeded_files_for_all_langs() {
    local lang
    for lang in "$@"; do
        seeded_files_for "$lang"
    done | sort -u
}
