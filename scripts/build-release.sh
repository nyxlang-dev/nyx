#!/bin/bash
# scripts/build-release.sh
# Genera nyx-vX.Y.Z-linux-ARCH.tar.gz para GitHub Releases
# Uso: bash scripts/build-release.sh [version] [arch]
# Ej:  bash scripts/build-release.sh 0.12.0 x86_64

set -e
cd "$(dirname "$0")/.."

VERSION=${1:-0.12.0}
ARCH=${2:-$(uname -m)}
NAME="nyx-v${VERSION}-linux-${ARCH}"
DIST="dist"

echo "=== Building Nyx release: $NAME ==="

# 1. Compilar bootstrap si no existe
if [ ! -f ./nyx_bootstrap ]; then
    echo "  [1/4] Building bootstrap..."
    make bootstrap
else
    echo "  [1/4] Using existing nyx_bootstrap"
fi

# 1b. Compilar nyx_build (package manager) si no existe
if [ ! -f ./nyx_build ]; then
    echo "  [1b/4] Building nyx_build..."
    make build-nyx-build
else
    echo "  [1b/4] Using existing nyx_build"
fi

# 2. Crear estructura de release
mkdir -p "$DIST/$NAME/bin"
mkdir -p "$DIST/$NAME/runtime"
mkdir -p "$DIST/$NAME/std"
mkdir -p "$DIST/$NAME/examples"

echo "  [2/4] Packaging files..."

# Binarios compilados
cp nyx_bootstrap "$DIST/$NAME/bin/nyx_bootstrap"
cp nyx_build "$DIST/$NAME/bin/nyx_build"

# Wrapper script (renombrado a 'nyx')
cp scripts/nyx "$DIST/$NAME/bin/nyx"
chmod +x "$DIST/$NAME/bin/nyx"

# Runtime sources (necesarios para compilar programas de usuario)
cp runtime/*.c runtime/*.h "$DIST/$NAME/runtime/"

# Stdlib
cp std/*.nx "$DIST/$NAME/std/"

# Ejemplos
cp examples/hello.nx "$DIST/$NAME/examples/" 2>/dev/null || true
[ -f examples/http_server.nx ] && cp examples/http_server.nx "$DIST/$NAME/examples/" || true

# README mínimo
cat > "$DIST/$NAME/README.md" <<'EOF'
# Nyx Language

## Quick Start

```sh
# Add to PATH (add to ~/.bashrc or ~/.zshrc)
export PATH="$HOME/.nyx/bin:$PATH"

# Hello World
echo 'fn main() { print("Hello!") }' > hello.nx
nyx run hello.nx
```

## Learn more

https://nyxlang.com/learn/
EOF

echo "  [3/4] Creating tarball..."
cd "$DIST"
tar -czf "${NAME}.tar.gz" "$NAME"
rm -rf "$NAME"
cd ..

echo "  [4/4] Generating checksum..."
sha256sum "$DIST/${NAME}.tar.gz" > "$DIST/${NAME}.tar.gz.sha256"
cat "$DIST/${NAME}.tar.gz.sha256"

SIZE=$(du -h "$DIST/${NAME}.tar.gz" | cut -f1)
echo ""
echo "=== Release ready: $DIST/${NAME}.tar.gz ($SIZE) ==="
echo "Upload to: https://github.com/nyxlang-dev/nyx/releases"
echo "Filename:  nyx-linux-${ARCH}.tar.gz  (without version, for latest/download)"
