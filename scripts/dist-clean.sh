#!/usr/bin/env bash
# ============================================================
# dist-clean.sh — limpieza del toolchain distribuido (~/.nyx)
# LISTA CANÓNICA ÚNICA: la usan install.sh (organize) y `nyx update`
# (post git-reset). Antes vivían dos listas duplicadas y desincronizadas
# (scripts/nyx vs install.sh) — fuente clásica de bugs de update.
#
# CONSERVA: bin/ runtime/ (incluido runtime/wasi/) std/ templates/
# scripts/nyx scripts/dist-clean.sh LLM.md CHANGELOG.md VERSION .git
# nyx_bootstrap nyx_build (copias raíz — el wrapper y build.nx las buscan)
# nyx_test y nyx_check (copias raíz — el wrapper los busca ahí; NO agregarlos a ningún rm:
#   este script borra compiler/ Y el Makefile, así que si se borra el binario
#   NO hay forma de reconstruirlo desde el árbol instalado. Ese fue el bug:
#   `nyx test` fallaba en toda instalación y el mensaje mandaba a un
#   `make build-test` imposible de correr. install.sh y `nyx update` ahora lo
#   construyen; este comentario existe para que siga vivo.)
#
# CHANGELOG.md y VERSION se conservan A PROPÓSITO (v0.17): `nyx update`
# muestra el "what's new" entre versiones y los proyectos aislados pueden
# consultarlos — sin esto un asistente IA no sabe qué cambió.
# ============================================================
set -u
cd "${1:-$HOME/.nyx}" || exit 1

# Contexto AI para `nyx init` (la referencia densa viaja a cada proyecto)
cp LLM.md templates/LLM.md 2>/dev/null || true

rm -rf compiler/ tests/ examples/ benchmarks/ docs/ playground/
rm -rf products/ sites/ services/ tools/
rm -rf nyx-vscode/ .github/ .claude/ deploy/ .archive/
rm -f scripts/build_bootstrap.sh scripts/build-release.sh
rm -f scripts/install.sh scripts/run_stdlib_tests.sh
rm -f scripts/sync_to_public.sh scripts/test-examples.sh
rm -rf scripts/testing/
rm -f SPEC.md SPEC.es.md ROADMAP.md VERSIONING.md
rm -f PROJECT_STATE.md CLAUDE.md CONTRIBUTING.md TASKS.md
rm -f README.md LICENSE .cursorrules Makefile
rm -f script.ll script.nx script_bin access.log
exit 0
