#!/usr/bin/env bash
# run_toolchain_recipe_audit.sh — friction A10 (2026-07-31): std/llm estuvo
# publicado e INUSABLE para usuarios del toolchain instalado durante meses,
# porque `llama_adapter.c` faltaba en las DOS recetas de link (scripts/nyx y
# compiler/build.nx) mientras el Makefile del monorepo sí lo tenía — todos
# los gates internos verdes, todos los usuarios rotos.
#
# Este audit hace estructural la lección: TODO runtime/*.c debe aparecer en
# las dos recetas del toolchain instalado. Si mañana se agrega un adapter
# nuevo y se olvida una receta, este check lo nombra.
#
# set -u sin pipefail (regla del repo).
set -u
cd "$(dirname "$0")/../.."

FAIL=0
for src in runtime/*.c; do
    base=$(basename "$src")
    if ! grep -q "$base" scripts/nyx; then
        echo "  ✗ $base falta en la receta de scripts/nyx (wrapper instalado)"
        FAIL=$((FAIL + 1))
    fi
    if ! grep -q "$base" compiler/build.nx; then
        echo "  ✗ $base falta en la receta de compiler/build.nx (nyx build)"
        FAIL=$((FAIL + 1))
    fi
done

if [ "$FAIL" -gt 0 ]; then
    echo "  audit de recetas del toolchain: FALLÓ ($FAIL faltante(s))"
    echo "  (un runtime/*.c fuera de las recetas = feature publicada que no linkea"
    echo "   para usuarios, con todos los gates internos verdes — friction A10)"
    exit 1
fi
echo "  ✓ audit de recetas: los $(ls runtime/*.c | wc -l) runtime/*.c están en scripts/nyx y build.nx"
exit 0
