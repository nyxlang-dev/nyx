#!/usr/bin/env bash
# run_os_layer_ratchet.sh — W1 (spec 2026-08-20 §5b). Los headers de plataforma
# viven SOLO en runtime/os/ — el resto del runtime programa contra nyx_os.h, no
# contra pthread/sched/etc directamente. La lista RATCHET_FORBIDDEN crece un
# dominio por merge a medida que W1-W7 migran más código a la capa:
#   inc 1 (2026-08-20): pthread.h (Tasks 3-5, threads/sync/tiempo) + sched.h
#     (Task 6, os_yield absorbió el sched_yield() del idle loop del scheduler).
#   inc 2 (2026-08-21): sys/mman.h + ucontext.h (scheduler vm+ctx sobre
#     os_vm_*/os_ctx_* — mmap/guard pages y el cambio de contexto en la capa).
#   inc 3 (2026-08-25): sys/socket.h + netinet/in.h + netinet/tcp.h +
#     arpa/inet.h + netdb.h + ifaddrs.h + sys/uio.h (net.c/tls.c/http2.c
#     sobre os_sock_*/os_addr_*). OJO: poll.h NO entra todavía — runtime.c
#     (señales, inc 7) y event_loop.c (inc 4) lo usan legítimamente; entra
#     cuando esos dominios migren.
#   inc 4 (2026-08-25): os_ev implementado (spike borrado) — SIN headers
#     nuevos a propósito: sys/epoll.h lo retienen event_loop.c (API
#     readiness Nyx-facing pineada por test-161; su destino Windows es
#     decisión W4+) y el propio os_posix.c; poll.h sigue retenido por
#     runtime.c. La migración del scheduler a os_ev está BLOQUEADA por el
#     SEGV de test_scheduler (ficha) — recién ahí epoll.h podrá entrar.
#   inc 5 (2026-08-25): dominio proc (exec/exec_code sobre os_proc_run_*,
#     muere el ifdef wasm de runtime.c) — SIN headers nuevos: sys/wait.h lo
#     retiene process.c (builtins posix crudos pineados por test-205 y
#     nyx-shell; su destino Windows es win_forbidden_builtin, W5).
#   inc 6 (2026-08-26): dlfcn.h (los 3 adapters zlib/sqlite/llama sobre
#     os_dl_* — cadenas de fallback de nombres caller-side).
#   inc 7 (2026-08-26, CIERRA W1): señales — os_sig_install(_no_restart) +
#     os_fault_guard; runtime.c/persist.c/scheduler.c sin signal.h. SIN
#     headers nuevos: signal.h lo retiene process.c (builtins posix
#     pineados) y poll.h event_loop.c (API readiness pineada) — las DOS
#     superficies posix documentadas con destino W4/W5.
#   W2 fase A (2026-08-26): termios.h + sys/ioctl.h + dirent.h (dominios
#     fs/term/fd — file-io.c y runtime.c MSVC-compilables). unistd.h y
#     sys/stat.h AÚN NO: los retienen process.c (pineado), event_loop.c,
#     persist.c y scheduler.c (sus dominios ya migraron el uso pesado;
#     el residuo cae con sus limpiezas futuras).
# Regla dormida (se activa en W2): si runtime/os/os_win32.c existe, el stub
# runtime/os/win_w0_hello.c (temporal, solo para el hello-world de W0) ya
# cumplió su propósito y debe haber muerto — si ambos coexisten, alguien migró
# a Win32 real sin borrar el stub.
#
# EN: Platform headers live ONLY in runtime/os/ — the rest of the runtime
# programs against nyx_os.h, not against pthread/sched/etc directly. The
# RATCHET_FORBIDDEN list grows one domain per merge as W1-W7 migrate more code
# onto the layer:
#   inc 1 (2026-08-20): pthread.h (Tasks 3-5, threads/sync/time) + sched.h
#     (Task 6, os_yield absorbed the scheduler idle loop's sched_yield()).
#   inc 2 (2026-08-21): sys/mman.h + ucontext.h (scheduler vm+ctx onto
#     os_vm_*/os_ctx_* — mmap/guard pages and context switching in the layer).
#   inc 3 (2026-08-25): sys/socket.h + netinet/in.h + netinet/tcp.h +
#     arpa/inet.h + netdb.h + ifaddrs.h + sys/uio.h (net.c/tls.c/http2.c
#     onto os_sock_*/os_addr_*). NOTE: poll.h NOT yet — runtime.c (signals,
#     inc 7) and event_loop.c (inc 4) still use it legitimately.
#   inc 4 (2026-08-25): os_ev implemented (spike deleted) — NO new headers
#     on purpose: sys/epoll.h is retained by event_loop.c (user-facing
#     readiness API pinned by test-161; its Windows fate is a W4+ decision)
#     and os_posix.c itself; poll.h still held by runtime.c. Scheduler
#     migration onto os_ev is BLOCKED by the test_scheduler SEGV (filed).
#   inc 5 (2026-08-25): proc domain (exec/exec_code onto os_proc_run_*,
#     runtime.c's wasm ifdef dies) — NO new headers: sys/wait.h is retained
#     by process.c (raw posix builtins pinned by test-205 and nyx-shell;
#     their Windows fate is win_forbidden_builtin, W5).
#   inc 6 (2026-08-26): dlfcn.h (the 3 adapters zlib/sqlite/llama onto
#     os_dl_* — library-name fallback chains stay caller-side).
#   inc 7 (2026-08-26, CLOSES W1): signals — os_sig_install(_no_restart) +
#     os_fault_guard; runtime.c/persist.c/scheduler.c without signal.h. NO
#     new headers: signal.h retained by process.c (pinned posix builtins),
#     poll.h by event_loop.c (pinned readiness API) — both documented with
#     their W4/W5 fate.
#   W2 phase A (2026-08-26): termios.h + sys/ioctl.h + dirent.h (fs/term/fd
#     domains — file-io.c and runtime.c are MSVC-compilable). unistd.h and
#     sys/stat.h NOT yet: retained by process.c (pinned), event_loop.c,
#     persist.c, scheduler.c.
# Dormant rule (fires in W2): if runtime/os/os_win32.c exists, the temporary
# stub runtime/os/win_w0_hello.c (W0 hello-world only) has served its purpose
# and must be gone — if both coexist, someone migrated to real Win32 without
# deleting the stub.
#
# set -u sin pipefail (regla del repo).
set -u
cd "$(dirname "$0")/../.."

RATCHET_FORBIDDEN="pthread.h sched.h sys/mman.h ucontext.h sys/socket.h netinet/in.h netinet/tcp.h arpa/inet.h netdb.h ifaddrs.h sys/uio.h dlfcn.h termios.h sys/ioctl.h dirent.h"
FAIL=0

for h in $RATCHET_FORBIDDEN; do
    hits=$(grep -ln "^[[:space:]]*#[[:space:]]*include[[:space:]]*<$h>" runtime/*.c runtime/*.h 2>/dev/null)
    if [ -n "$hits" ]; then
        echo "  ✗ <$h> fuera de runtime/os/: $hits"
        FAIL=$((FAIL + 1))
    fi
done

if [ -f runtime/os/os_win32.c ] && [ -f runtime/os/win_w0_hello.c ]; then
    echo "  ✗ runtime/os/win_w0_hello.c (stub W0-TEMP) sigue vivo con os_win32.c presente"
    FAIL=$((FAIL + 1))
fi

if [ "$FAIL" -gt 0 ]; then
    echo "  ratchet de la capa nyx_os_*: FALLÓ ($FAIL)"
    exit 1
fi
echo "  ✓ ratchet nyx_os_*: ningún <$RATCHET_FORBIDDEN> fuera de runtime/os/"
exit 0
