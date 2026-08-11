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
    # `nyx test` es uno de los comandos que la doc AI-first promete
    # (LLM.md §1, AGENTS.md paso 5). Sin esto el binario nunca se construye y
    # el comando falla en TODA instalación estándar — y el mensaje de error
    # mandaba a `make build-test`, imposible de correr porque dist-clean.sh
    # borra compiler/ y el Makefile del árbol instalado. Va ANTES de organize()
    # por esa misma razón: después ya no están los fuentes.
    spin "Building test runner..." make build-test \
        || err "make build-test failed"
    # C4 (2026-08-11, fricción ERP): `nyx check` es el paso 5 de AGENTS.md
    # ("self-check first") y el wrapper lo rutea desde siempre — pero el
    # binario nunca se construía: mismo bug que nyx_test arriba, misma
    # solución. ANTES de organize() porque dist-clean borra compiler/.
    spin "Building checker..." make build-check \
        || err "make build-check failed"
}

# ── Organize (move binaries to bin/, keep runtime+std) ───

organize() {
    cd "$NYX_DIR"
    # Create bin/ layout
    mkdir -p bin
    cp nyx_bootstrap bin/nyx
    cp nyx_build bin/nyx_build
    chmod +x bin/nyx bin/nyx_build

    # Limpieza con la LISTA CANÓNICA compartida (scripts/dist-clean.sh) —
    # la misma que usa `nyx update`, para que install y update no diverjan.
    # Conserva: runtime/ (incl. wasi/), std/, templates/ (con .claude/skills),
    # LLM.md, CHANGELOG.md (what's-new de nyx update) y VERSION.
    bash scripts/dist-clean.sh "$NYX_DIR"
    ok "Organized: bin/ + runtime/ + std/ + templates/ (v$(cat VERSION 2>/dev/null || echo '?'))"
}

# ── Symlink ──────────────────────────────────────────────

setup_path() {
    mkdir -p "$BIN_DIR"
    # Symlink al WRAPPER (scripts/nyx), no al driver crudo (bin/nyx): el
    # wrapper rutea los subcomandos PM (build/init/run/add) a bin/nyx_build
    # y maneja --version/--help. Symlinkear bin/nyx hacía que `nyx build`
    # compilara un script.nx inexistente y saliera 0 sin producir binario.
    ln -sf "$NYX_DIR/scripts/nyx" "$BIN_DIR/nyx"
    ok "Linked nyx to $BIN_DIR/nyx"

    # Add BIN_DIR to PATH in shell profile if not already there.
    # PATH_WAS_PRESENT tracks whether the PARENT shell already had BIN_DIR in
    # PATH — verify() uses it so we don't claim "available in PATH" when the
    # user still needs to `source` their profile (the export below only affects
    # this installer subshell, not the parent shell).
    case ":$PATH:" in
        *":$BIN_DIR:"*)
            PATH_WAS_PRESENT=1
            ;;
        *)
            PATH_WAS_PRESENT=0
            PROFILE=""
            if [ -f "$HOME/.bashrc" ]; then
                PROFILE="$HOME/.bashrc"
            elif [ -f "$HOME/.zshrc" ]; then
                PROFILE="$HOME/.zshrc"
            elif [ -f "$HOME/.profile" ]; then
                PROFILE="$HOME/.profile"
            fi
            PATH_SOURCE_PROFILE="$PROFILE"

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

    if [ ! -x "$BIN_DIR/nyx" ]; then
        err "Symlink failed: $BIN_DIR/nyx not found"
    fi
    if [ "${PATH_WAS_PRESENT:-1}" = "1" ]; then
        ok "nyx command available in PATH"
    else
        # El symlink existe pero el shell PADRE no tenía BIN_DIR en su PATH:
        # el export de setup_path solo vale en este subshell. Avisar claramente.
        warn "nyx is installed but not yet on your PATH in this shell"
        if [ -n "${PATH_SOURCE_PROFILE:-}" ]; then
            say "Run:  source $PATH_SOURCE_PROFILE   (or open a new terminal)"
        else
            say "Add to your shell profile, then open a new terminal:"
            printf "\n    export PATH=\"\$HOME/.local/bin:\$PATH\"\n\n"
        fi
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
