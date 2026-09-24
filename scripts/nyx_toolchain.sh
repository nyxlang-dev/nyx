# nyx_toolchain.sh — toolchain con versiones lado a lado (arco toolchain-atomico,
# spec docs/design/specs/2026-09-24-toolchain-atomico-design.md). Se SOURCEA desde
# `make install-local`, `nyx update` e install.sh: una sola implementación.
#
# Layout (ROOT = ~/.nyx):
#   ROOT/versions/<id>/   un toolchain COMPLETO (bin/, nyx_*, runtime/, std/, …)
#   ROOT/current          texto: el <id> activo (fuente de verdad, portable)
#   ROOT/active           symlink → versions/<id> (POSIX)
#   ROOT/<entrada>        symlink → active/<entrada> para cada entrada de la
#                         versión: quien lee ~/.nyx/bin o ~/.nyx/VERSION directo
#                         sigue andando (nyx-edit, verificar.sh de nyxerp)
#   ROOT/src.git          el repo git (instalaciones públicas / `nyx update`)
#
# POR QUÉ: antes ~/.nyx era a la vez fuente, lugar de build y toolchain activo, e
# instalar reescribía en su lugar lo que otras suites estaban leyendo (nyxerp
# 2026-09-18 y 09-20: corridas que mezclaban dos compiladores; el candado
# global las serializaba, a costa de hacer esperar hasta 10 min). Ahora una
# versión nueva se arma aparte y se ACTIVA con un rename: nadie lee un archivo a
# medio escribir, y un proceso ya arrancado sigue con la versión que resolvió
# (el wrapper fija NYX_HOME a la ruta REAL de la versión).

# Reemplaza DST (archivo, directorio o symlink) por SRC con un rename atómico.
# `mv -T` es de GNU; en BSD/macOS `mv -h` no sigue un symlink destino.
nyx_tc_mv() {
    mv -fT "$1" "$2" 2>/dev/null || mv -fh "$1" "$2" 2>/dev/null || { rm -rf "$2"; mv -f "$1" "$2"; }
}

# ¿ROOT ya tiene el layout versionado?
nyx_tc_versionado() {
    [ -f "$1/current" ] && [ -d "$1/versions" ]
}

# Ruta real de la versión activa de ROOT ("" si no hay).
nyx_tc_actual() {
    local root="$1" id
    nyx_tc_versionado "$root" || return 0
    id="$(tr -d '[:space:]' < "$root/current")"
    [ -n "$id" ] && [ -d "$root/versions/$id" ] && echo "$root/versions/$id"
}

# Id para una versión: <VERSION>+<hash corto>, con sufijo de fecha si se pide
# (install-local desde un árbol con cambios sin commitear: dos instalaciones del
# mismo commit no son el mismo toolchain).
nyx_tc_id() {
    local ver="$1" hash="$2" sufijo="${3:-}"
    local id="${ver}+${hash}"
    [ -n "$sufijo" ] && id="${id}-${sufijo}"
    echo "$id"
}

# Escribe `current`, el symlink `active` y los symlinks de compatibilidad de la
# raíz. Cada paso es un rename atómico. Se llama con el candado de flip tomado.
nyx_tc_enlazar() {
    local root="$1" id="$2" e n
    printf '%s\n' "$id" > "$root/.current.nuevo.$$"
    mv -f "$root/.current.nuevo.$$" "$root/current"
    ln -sfn "versions/$id" "$root/.active.nuevo.$$"
    nyx_tc_mv "$root/.active.nuevo.$$" "$root/active"
    for e in "$root/versions/$id"/* "$root/versions/$id"/.[!.]*; do
        [ -e "$e" ] || continue
        n="$(basename "$e")"
        case "$n" in .lock|.toolchain.lock|.git) continue ;; esac
        # Una entrada REAL de la raíz (no symlink) no se pisa: la migración ya
        # movió las del layout viejo; lo que quede es del usuario.
        if [ -e "$root/$n" ] && [ ! -L "$root/$n" ]; then continue; fi
        ln -sfn "active/$n" "$root/.enlace.nuevo.$$"
        nyx_tc_mv "$root/.enlace.nuevo.$$" "$root/$n"
    done
}

# Candado de flip: solo entre instaladores (dos installs a la vez). Nunca
# espera a una compilación: ya no hace falta, nadie lee la versión que se arma.
nyx_tc_con_flip() {
    local root="$1"; shift
    if command -v flock >/dev/null 2>&1; then
        ( flock -x 7; "$@" ) 7>"$root/.flip.lock"
    else
        "$@"
    fi
}

# Publica STAGING (un árbol completo ya construido) como versions/<id> y lo
# activa. Si <id> ya existe, solo se activa (y STAGING se descarta).
nyx_tc_publicar() {
    local root="$1" staging="$2" id="$3"
    mkdir -p "$root/versions"
    if [ -d "$root/versions/$id" ]; then
        rm -rf "$staging"
    else
        : > "$staging/.lock"
        mv "$staging" "$root/versions/$id"
    fi
    nyx_tc_con_flip "$root" nyx_tc_enlazar "$root" "$id"
}

# Layout plano (todo en la raíz) → versionado. Idempotente. Mueve cada entrada
# del toolchain a versions/legado-<VERSION>-<fecha>/ y deja los symlinks; el
# .git de una instalación pública pasa a ROOT/src.git (bare).
# ID opcional: install.sh pasa <VERSION>+<hash> (una instalación limpia no es
# «legado»), así un `nyx update` a la misma revisión la reconoce.
nyx_tc_migrar() {
    local root="$1"
    nyx_tc_versionado "$root" && return 0
    [ -d "$root/bin" ] && [ ! -L "$root/bin" ] || return 0
    # Una sola vez, y con el candado GLOBAL del layout plano en exclusivo: las
    # suites que arrancaron con el wrapper viejo leen ~/.nyx/std/… por la ruta
    # plana y toman ese candado compartido por archivo; entre mover un
    # directorio y crear su symlink hay milisegundos en que la ruta no existe.
    # Así la migración entra entre dos archivos, como hacía install-local.
    if command -v flock >/dev/null 2>&1; then
        ( flock -x -w "${NYX_LOCK_WAIT:-600}" 6 || { echo "✗ el candado $root/.toolchain.lock sigue tomado: no se migra" >&2; exit 1; }
          _nyx_tc_migrar_ya "$@" ) 6>"$root/.toolchain.lock"
    else
        _nyx_tc_migrar_ya "$@"
    fi
}

_nyx_tc_migrar_ya() {
    local root="$1" id="${2:-}" ver dst n
    ver="$(tr -d '[:space:]' < "$root/VERSION" 2>/dev/null)"; [ -n "$ver" ] || ver=0
    [ -n "$id" ] || id="legado-${ver}-$(date +%Y%m%d%H%M%S)"
    dst="$root/versions/$id"
    mkdir -p "$dst"
    for n in bin runtime std templates scripts VERSION LLM.md CHANGELOG.md \
             nyx_bootstrap nyx_build nyx_check nyx_fmt nyx_gendocs nyx_test nyx_vet \
             nyx_repl nyx_doc nyx_bindgen; do
        [ -e "$root/$n" ] && [ ! -L "$root/$n" ] && mv "$root/$n" "$dst/$n"
    done
    if [ -d "$root/.git" ] && [ ! -e "$root/src.git" ]; then
        mv "$root/.git" "$root/src.git"
        git --git-dir="$root/src.git" config core.bare true 2>/dev/null || true
    fi
    : > "$dst/.lock"
    nyx_tc_con_flip "$root" nyx_tc_enlazar "$root" "$id"
}

# Borra versiones viejas: conserva la activa y las KEEP más recientes, y nunca
# una EN USO (el wrapper tiene su .lock compartido mientras el proceso vive; acá
# se intenta exclusivo sin esperar y, si no se puede, se deja). Borra también
# armados a medio hacer de más de un día (un install que murió).
nyx_tc_podar() {
    local root="$1" keep="${2:-3}" actual v n=0
    actual="$(tr -d '[:space:]' < "$root/current" 2>/dev/null)"
    find "$root/versions" -maxdepth 1 -name '.staging.*' -mtime +1 -exec rm -rf {} + 2>/dev/null
    for v in $(ls -1t "$root/versions" 2>/dev/null); do
        [ "$v" = "$actual" ] && continue
        n=$((n + 1))
        [ "$n" -le "$keep" ] && continue
        if command -v flock >/dev/null 2>&1; then
            ( flock -x -n 7 || exit 1; rm -rf "$root/versions/$v" ) 7<"$root/versions/$v/.lock" 2>/dev/null \
                || echo "  (versión $v en uso: se conserva)"
        else
            rm -rf "$root/versions/$v"
        fi
    done
}
