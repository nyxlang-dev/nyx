#!/bin/sh
# Nyx Language Installer
# https://nyxlang.com
#
# Usage: curl -sSf https://nyxlang.com/install.sh | sh

set -e

NYX_DIR="$HOME/.nyx"
REPO_URL="https://github.com/nyxlang-dev/nyx.git"

# Termux uses $PREFIX/bin (already in PATH); everywhere else use ~/.local/bin
if [ -n "${TERMUX_VERSION:-}" ] || [ -d "/data/data/com.termux" ]; then
    BIN_DIR="${PREFIX:-/data/data/com.termux/files/usr}/bin"
else
    BIN_DIR="$HOME/.local/bin"
fi

# ── Helpers ──────────────────────────────────────────────

say() {
    printf "  \033[1;36mnyx\033[0m %s\n" "$1"
}

err() {
    printf "  \033[1;31merror\033[0m %s\n" "$1" >&2
    exit 1
}

warn() {
    printf "  \033[1;33mwarn\033[0m %s\n" "$1"
}

ok() {
    printf "  \033[1;32m  ok\033[0m %s\n" "$1"
}

spin() {
    _msg="$1"; shift

    "$@" > /dev/null 2>&1 &
    _pid=$!
    _i=0

    while kill -0 "$_pid" 2>/dev/null; do
        case $((_i % 4)) in
            0) _f="◐" ;; 1) _f="◓" ;; 2) _f="◑" ;; 3) _f="◒" ;;
        esac
        printf "\r  \033[1;36m%s\033[0m %s" "$_f" "$_msg" >&2
        _i=$((_i + 1))
        sleep 0.15
    done

    wait "$_pid"
    _rc=$?
    if [ "$_rc" -eq 0 ]; then
        printf "\r  \033[1;32m✓\033[0m %s\033[K\n" "$_msg" >&2
    else
        printf "\r  \033[1;31m✗\033[0m %s\033[K\n" "$_msg" >&2
        return "$_rc"
    fi
}

need_cmd() {
    if ! command -v "$1" > /dev/null 2>&1; then
        return 1
    fi
    return 0
}

# ── OS / Arch detection ─────────────────────────────────

detect_platform() {
    OS="$(uname -s)"
    ARCH="$(uname -m)"

    case "$OS" in
        Linux)  ;;
        Darwin) err "macOS is not supported yet. Coming soon." ;;
        MINGW*|MSYS*|CYGWIN*) err "Windows is not supported yet. Coming soon." ;;
        *)      err "Unsupported operating system: $OS" ;;
    esac

    case "$ARCH" in
        x86_64|amd64) ARCH="x86_64" ;;
        aarch64|arm64) ARCH="aarch64" ;;
        armv7l|armv8l) ARCH="armv7l" ;;
        *) err "Unsupported architecture: $ARCH" ;;
    esac
}

# ── Distro / package manager detection ───────────────────

detect_pkg_manager() {
    # Termux (Android) — no sudo, uses pkg
    if [ -n "${TERMUX_VERSION:-}" ] || [ -d "/data/data/com.termux" ]; then
        PKG_MGR="termux"
        return
    fi

    if need_cmd apt-get; then PKG_MGR="apt"
    elif need_cmd dnf;     then PKG_MGR="dnf"
    elif need_cmd pacman;  then PKG_MGR="pacman"
    elif need_cmd apk;     then PKG_MGR="apk"
    elif need_cmd xbps-install; then PKG_MGR="xbps"
    else PKG_MGR="unknown"
    fi
}

# Map a generic dependency name to the distro-specific package name
pkg_name() {
    _dep="$1"
    case "$PKG_MGR" in
        apt)
            case "$_dep" in
                clang) echo "clang" ;;
                make)  echo "make" ;;
                git)   echo "git" ;;
                gc)    echo "libgc-dev" ;;
                ssl)   echo "libssl-dev" ;;
                zlib)  echo "zlib1g-dev" ;;
            esac ;;
        dnf)
            case "$_dep" in
                clang) echo "clang" ;;
                make)  echo "make" ;;
                git)   echo "git" ;;
                gc)    echo "gc-devel" ;;
                ssl)   echo "openssl-devel" ;;
                zlib)  echo "zlib-devel" ;;
            esac ;;
        pacman)
            case "$_dep" in
                clang) echo "clang" ;;
                make)  echo "make" ;;
                git)   echo "git" ;;
                gc)    echo "gc" ;;
                ssl)   echo "openssl" ;;
                zlib)  echo "zlib" ;;
            esac ;;
        apk)
            case "$_dep" in
                clang) echo "clang" ;;
                make)  echo "make" ;;
                git)   echo "git" ;;
                gc)    echo "gc-dev" ;;
                ssl)   echo "openssl-dev" ;;
                zlib)  echo "zlib-dev" ;;
            esac ;;
        xbps)
            case "$_dep" in
                clang) echo "clang" ;;
                make)  echo "make" ;;
                git)   echo "git" ;;
                gc)    echo "gc-devel" ;;
                ssl)   echo "libressl-devel" ;;
                zlib)  echo "zlib-devel" ;;
            esac ;;
        termux)
            case "$_dep" in
                clang) echo "clang" ;;
                make)  echo "make" ;;
                git)   echo "git" ;;
                gc)    echo "libgc" ;;
                ssl)   echo "openssl" ;;
                zlib)  echo "zlib" ;;
            esac ;;
    esac
}

# Check if a library dependency is already installed
lib_installed() {
    _dep="$1"
    _pkg="$(pkg_name "$_dep")"

    case "$PKG_MGR" in
        apt)    dpkg -s "$_pkg" > /dev/null 2>&1 ;;
        dnf)    rpm -q "$_pkg" > /dev/null 2>&1 ;;
        pacman) pacman -Qi "$_pkg" > /dev/null 2>&1 ;;
        apk)    apk info -e "$_pkg" > /dev/null 2>&1 ;;
        xbps)   xbps-query "$_pkg" > /dev/null 2>&1 ;;
        termux) dpkg -s "$_pkg" > /dev/null 2>&1 ;;
        *)
            # Fallback: try pkg-config
            case "$_dep" in
                gc)   pkg-config --exists bdw-gc 2>/dev/null ;;
                ssl)  pkg-config --exists openssl 2>/dev/null ;;
                zlib) pkg-config --exists zlib 2>/dev/null ;;
                *)    return 1 ;;
            esac ;;
    esac
}

# Install packages using the detected package manager
install_packages() {
    _pkgs="$1"
    case "$PKG_MGR" in
        apt)
            say "Installing via apt..."
            sudo apt-get update -qq
            sudo apt-get install -y -qq $_pkgs
            ;;
        dnf)
            say "Installing via dnf..."
            sudo dnf install -y -q $_pkgs
            ;;
        pacman)
            say "Installing via pacman..."
            sudo pacman -Sy --noconfirm --needed $_pkgs
            ;;
        apk)
            say "Installing via apk..."
            sudo apk add --quiet $_pkgs
            ;;
        xbps)
            say "Installing via xbps..."
            sudo xbps-install -Sy $_pkgs
            ;;
        termux)
            say "Installing via pkg..."
            pkg install -y $_pkgs
            ;;
        *)
            err "No supported package manager found. Please install manually: $_pkgs"
            ;;
    esac
}

# ── Dependency check ─────────────────────────────────────

check_deps() {
    detect_pkg_manager
    MISSING=""

    # Check CLI tools
    for cmd in clang make git; do
        if ! need_cmd "$cmd"; then
            MISSING="$MISSING $(pkg_name "$cmd")"
        fi
    done

    # Check dev libraries
    for lib in gc ssl zlib; do
        if ! lib_installed "$lib"; then
            MISSING="$MISSING $(pkg_name "$lib")"
        fi
    done

    if [ -n "$MISSING" ]; then
        say "Missing dependencies:$MISSING"
        install_packages "$MISSING"
        ok "Dependencies installed"
    else
        ok "All dependencies found"
    fi
}

# ── Clone or update ──────────────────────────────────────

install_nyx() {
    if [ -d "$NYX_DIR/.git" ]; then
        spin "Updating existing installation..." bash -c "cd '$NYX_DIR' && git fetch origin && git reset --hard origin/main" \
            || err "git update failed"
    else
        if [ -d "$NYX_DIR" ]; then
            warn "$NYX_DIR exists but is not a git repo. Removing."
            rm -rf "$NYX_DIR"
        fi
        spin "Downloading Nyx..." git clone -q "$REPO_URL" "$NYX_DIR" \
            || err "git clone failed"
    fi
}

# ── Build ────────────────────────────────────────────────

build_nyx() {
    cd "$NYX_DIR"
    spin "Building compiler..." make bootstrap \
        || err "make bootstrap failed"
    spin "Building package manager..." make build-nyx-build \
        || err "make build-nyx-build failed"
}

# ── Organize (move binaries to bin/, keep runtime+std) ───

organize() {
    cd "$NYX_DIR"
    # Create bin/ layout
    mkdir -p bin
    cp nyx_bootstrap bin/nyx
    cp nyx_build bin/nyx_build
    chmod +x bin/nyx bin/nyx_build

    # Remove compiler sources and seed files (binaries already built)
    rm -rf compiler/
    # Remove development / documentation / tooling
    rm -rf tests/ examples/ benchmarks/ docs/ playground/ products/ sites/ services/
    rm -rf nyx-vscode/ .github/ .claude/ deploy/ templates/ .archive/
    # Remove extra scripts (keep only scripts/nyx)
    rm -f scripts/build_bootstrap.sh scripts/build-release.sh
    rm -f scripts/install.sh scripts/run_stdlib_tests.sh scripts/sync_to_public.sh
    rm -rf scripts/testing/
    # Remove root files not needed at runtime
    rm -f SPEC.md SPEC.es.md ROADMAP.md CHANGELOG.md VERSIONING.md
    rm -f PROJECT_STATE.md CLAUDE.md CONTRIBUTING.md TASKS.md
    rm -f README.md LICENSE .cursorrules Makefile
    rm -f script.ll script.nx script_bin nyx_bootstrap nyx_build
    rm -f access.log
    ok "Organized: bin/ + runtime/ + std/"
}

# ── Symlink ──────────────────────────────────────────────

setup_path() {
    mkdir -p "$BIN_DIR"
    ln -sf "$NYX_DIR/bin/nyx" "$BIN_DIR/nyx"
    ok "Linked nyx to $BIN_DIR/nyx"

    # Add BIN_DIR to PATH in shell profile if not already there
    case ":$PATH:" in
        *":$BIN_DIR:"*) ;;
        *)
            PROFILE=""
            if [ -f "$HOME/.bashrc" ]; then
                PROFILE="$HOME/.bashrc"
            elif [ -f "$HOME/.zshrc" ]; then
                PROFILE="$HOME/.zshrc"
            elif [ -f "$HOME/.profile" ]; then
                PROFILE="$HOME/.profile"
            fi

            if [ -n "$PROFILE" ]; then
                if ! grep -q '.local/bin' "$PROFILE" 2>/dev/null; then
                    printf '\nexport PATH="$HOME/.local/bin:$PATH"\n' >> "$PROFILE"
                    ok "Added PATH to $PROFILE"
                fi
                export PATH="$BIN_DIR:$PATH"
            else
                warn "$BIN_DIR is not in your PATH"
                say "Add this to your shell profile:"
                printf "\n    export PATH=\"\$HOME/.local/bin:\$PATH\"\n\n"
            fi
            ;;
    esac
}

# ── Verify ───────────────────────────────────────────────

verify() {
    if [ -x "$NYX_DIR/bin/nyx" ]; then
        ok "nyx compiler installed"
    else
        err "Build failed: $NYX_DIR/bin/nyx not found"
    fi

    if [ -x "$NYX_DIR/bin/nyx_build" ]; then
        ok "nyx package manager installed"
    else
        err "Build failed: $NYX_DIR/bin/nyx_build not found"
    fi

    if [ -x "$BIN_DIR/nyx" ]; then
        ok "nyx command available in PATH"
    else
        err "Symlink failed: $BIN_DIR/nyx not found"
    fi
}

# ── Main ─────────────────────────────────────────────────

main() {
    printf "\n\033[1m  Installing Nyx Language\033[0m\n\n"

    detect_platform
    ok "Platform: Linux $ARCH"

    check_deps

    install_nyx
    build_nyx
    organize

    setup_path
    verify

    printf "\n\033[1;32m  Nyx installed successfully!\033[0m\n\n"
    printf "  Get started:\n"
    printf "    \$ echo 'fn main() { print(\"Hello!\") }' > hello.nx\n"
    printf "    \$ nyx run hello.nx\n\n"
    printf "  Learn more: https://nyxlang.com/learn/\n\n"
}

main
