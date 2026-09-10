#!/usr/bin/env bash
# install_purge_legacy_templates.sh — retira de un $NYX_HOME_DIR instalado
# los archivos de `templates/` que ADR-1 (2026-09-04, docs/design/specs/
# 2026-09-04-andamiaje-sdd-design.md) dejó muertos: antes de ADR-1 `nyx init`
# sembraba tres archivos por proveedor con marca comercial en la RAÍZ de
# templates/ (CLAUDE.md, .cursorrules, .github/copilot-instructions.md) más
# AGENTS.md, CHEATSHEET.md y LLM.md, y una skill de Claude bajo
# templates/.claude/. El AGENTS.md plano quedó muerto igual que el resto: hoy
# el scaffold lee templates/<lang>/AGENTS.md (build.nx:402).
# `make install-local` copia `templates/.` sin purgar, así que una
# instalación sembrada antes de ADR-1 arrastra esos archivos muertos al lado
# del árbol nuevo (templates/{en,es}/, templates/adapters/) para siempre.
#
# ÚNICA fuente de esta lista: la usa `make install-local` (Makefile) Y
# scripts/testing/run_sync_docs_migration.sh (guardia) — así ninguno de los
# dos puede desincronizarse del otro con una copia de la lógica.
#
# Uso: install_purge_legacy_templates.sh <NYX_HOME_DIR>
# NUNCA `rm -rf` templates/ entero — solo estas rutas puntuales, exactas.
set -u

NYX_HOME_DIR="${1:?uso: install_purge_legacy_templates.sh <NYX_HOME_DIR>}"

rm -f  "$NYX_HOME_DIR/templates/AGENTS.md"
rm -f  "$NYX_HOME_DIR/templates/CLAUDE.md"
rm -f  "$NYX_HOME_DIR/templates/CHEATSHEET.md"
rm -f  "$NYX_HOME_DIR/templates/LLM.md"
rm -f  "$NYX_HOME_DIR/templates/.cursorrules"
rm -rf "$NYX_HOME_DIR/templates/.github"
rm -rf "$NYX_HOME_DIR/templates/.claude"

exit 0
