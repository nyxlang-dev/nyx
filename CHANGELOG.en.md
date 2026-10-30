# Changelog — Nyx Language (English)

All notable changes to this project, in English. This is a translation of
[CHANGELOG.md](CHANGELOG.md), which is the normative version (in Spanish) and holds the complete
history; the translation starts at 0.33.0. Format based on
[Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

> **Note**: current version = the top entry below (source of truth: `VERSION` file). Upcoming changes
> live in the `[Unreleased]` section of [CHANGELOG.md](CHANGELOG.md) and are translated when a version
> is cut: `scripts/release-check.sh` refuses a release without its English entry, and check 13 of
> `make docs-health` compares the headings, subsections and list items of both files.

---

## [0.40.0] — 2026-10-30

> **MINOR**: new API — `std/process` (child processes without `fork`, with the same API on every platform)
  [arco: procesos-spawn], `std/serial` [arco: serial-nativo], `Error.stage` and `try_tcp_connect_ms` — and Windows
  W5 [arco: w5-windows]. Sorting becomes O(n log n), and correctness fixes arrive that nyxerp found in real use:
  HTTP with lowercase headers, `[lib]` with cycles, `contains` after `sort_str` and `/proc`.
>
> **Migration**: (1) `Error` has a fourth field, `stage`: an `Error { code, kind, msg }` literal no longer compiles
  (NYX1032); use `err_new(code, kind, msg)`, or add `stage: ""`. (2) `nyx build --target` with a Windows triple
  now fails with the reason, instead of building a native executable and exiting 0.

### Changed
- **`sort_int`, `sort_str` and `sort_by` sort in O(n log n)** [dogfooding:nyxerp]: they were bubble and insertion
  sort, O(n²); with 32,000 elements `sort_by` took 15 s and now takes 11 ms. Non-recursive merge sort,
  **stable** (equal elements keep their order) and with the same contract: they sort the array in place and
  return it. Regression +1 (`test-517`, 534 files).
- **The C runtime is always built with `-O2`**, also without `--release`, in `nyx run`, `nyx build` and `nyx test`:
  at `-O0` everything living in C ran about 7 times slower (`sha256` of 120 MB: 4,858 → 741 ms with `nyx run`), and
  nyxerp reported it as PBKDF2 slowness. It is compiled once into the `~/.cache/nyx/rt/` cache (the one build and
  test already used; `nyx run` starts using it: before, it recompiled the runtime on every run), with at most as
  many `clang` processes at once as there are cores. The user's Nyx code is still not optimized outside
  `--release`. Guard in `run_toolchain_recipe_audit.sh`.
- **`pbkdf2_hmac_sha256` about 5 times faster** [dogfooding:nyxerp]: natively it uses OpenSSL's
  `PKCS5_PBKDF2_HMAC` (600,000 iterations: 872 → 166 ms on aarch64 with `--release`); the in-house implementation,
  kept for wasm32-wasi, precomputes the SHA-256 states of `k^ipad` and `k^opad` once per call (2 compressions per
  iteration instead of 4; wasm 1,276 → 620 ms). Same result byte for byte (RFC 7914 vectors in `test_crypto.c`,
  through both paths). What nyxerp measured (6.2 s) was also the unoptimized runtime outside `--release` (see the
  previous item).

### Added
- **`try_tcp_connect_ms(host, port, ms)` in `std/net`: connect with a deadline of your own** [dogfooding:nyxerp]:
  `try_tcp_connect` waits up to 3000 ms; with a powered-off device on the local network (the store bridge's ticket
  printers, over TCP 9100) that stalled everyone's status. It returns `Err` of kind `timeout` (code 110) if it does
  not connect in time; `ms <= 0` = no deadline of its own. `std/http` already used it internally and nyxerp
  declared it as its own `extern`. Recipe 152; regression +1 (`test-520`); the expired deadline is still covered
  in C by `test_net_result.c`.
- **`Error.stage`: at which step a multi-step operation failed** [arco: procesos-spawn] [dogfooding:nyx-shell]:
  `Error` (`std/error`) gains the field `stage: String`, `""` when the operation has no stages. `err_new` does not
  change and `err_stage(code, kind, msg, stage)` sets it. `std/process` fills it with `exec`, `stdin`, `stdout`,
  `stderr` or `cwd`: a redirection that fails to open and a nonexistent program both give `not_found`, and
  nyx-shell told them apart by searching for text in `msg`. A hand-written `Error { code, kind, msg }` literal now
  needs `stage` (there was none outside the std). `test-518` covers each stage.
- **`std/serial`: native serial port for server programs** [arco: serial-nativo] [dogfooding:nyxerp]:
  `try_serial_open(path, baud, data_bits, parity, stop_bits)`, `try_serial_write`, `try_serial_read(p, max, deadline_ms)`
  (`Ok("")` = the deadline expired with no data), `try_serial_read_until(p, end, max, deadline_ms)` for STX…ETX
  frames (it does not consume the byte after the end, e.g. the LRC), `try_serial_close` and `serial_ports()` with USB
  VID:PID. Linux (termios, `/sys/class/tty`) and Windows (`\\.\COMn`, DCB, SetupAPI; not yet verified on real
  Windows); macOS opens and lists without VID/PID. Exclusive open (`in_use`), DTR active, raw mode without flow
  control, standard speeds only. Bytes as `String`, with adapters for the `Array` of `std/browser_serial`. Through
  `extern "C"`, without touching the compiler. Requested for nyxerp's store bridge (fiscal printer and scales).
- **`std/process`: launch child processes without fork** [arco: procesos-spawn]: `try_spawn(argv, SpawnOpts)` with
  each stream as `Stdio` (inherited, null, pipe or file), `cwd` and `env`; `try_spawn_pipeline` for `a | b | c`;
  `wait`/`try_wait`, `kill`, `signal` (posix only), `read`/`read_err`/`write`/`close_stdin` and `collect`, which
  drains stdout and stderr at the same time (reading them one after the other hangs on large output). posix on top
  of `posix_spawnp`; Windows on top of `CreateProcessW` with the command line built from argv (written, not yet
  verified on real Windows). Errors `not_found`, `permission` and `invalid` with the stage in the message; writing to
  a child that closed its stdin gives `EPIPE`, it does not kill via SIGPIPE. Regression +1 (`test-518`); C runtime
  +2 suites (`test_os_proc_spawn.c`, `test_os_win_cmdline.c`).
- **Recipes 64 and 65 with `std/process`, new recipe 151 and the win32 error that points to it**
  [arco: procesos-spawn]: 64 (launch a program) and 65 (pipes) move from `fork`/`execvp`/`pipe_new` to `try_spawn`
  and `try_spawn_pipeline`, with a note that the raw builtins remain posix; 151 captures stdout and stderr with
  `try_child_collect`. Under win32, `fork`, `execvp`, `waitpid`, `pipe_new` and `kill_process` are still
  forbidden, but the message now says "use std/process". By-example recipes 151 (`make test-examples`: 158 with the
  7 at the root). Documented in `LLM.md` (blocking, nonexistent program = `not_found` at launch, `.bat`/`.cmd`
  rejected on Windows, `signal` posix only) and in `docs/SPEC.md`.
- **TLS on Windows: a root the system has not downloaded yet no longer breaks the connection** [arco: w5-windows]:
  Windows ships few roots installed and downloads the rest when building a chain, so an arbitrary site failed with
  X509 20 on a new machine. On that error, with the system store, the chain is requested from
  `CertGetCertificateChain`, the store is reloaded and it retries once; verification is still OpenSSL's. No changes
  on posix or wasm (written, not yet verified on real Windows).
- **W5: processes, signals and `dl` adapters compile for Windows** [arco: w5-windows]: `exec`, `exec_code`,
  `getpid`, `getcwd`, `chdir`, `stat`, `isatty`, `open_fd`, `close_fd`, `dup2`, `fsync`, `fdatasync`, `signal_*` and
  `setup_shutdown_handler` leave the win32 gate. On Windows, `exec()` normalizes `\r\n` to `\n` and `exec_code()`
  gives 127 for a nonexistent command when the line is simple. SIGINT and SIGTERM arrive through
  `SetConsoleCtrlHandler`: Ctrl+C gives SIGINT, and Ctrl+Break, console close, logoff and shutdown give SIGTERM,
  with up to 4.5 s for the closure (the `persist` flush) to finish. `taskkill /F` and `TerminateProcess` give no
  notice. The sqlite, zlib and llama adapters also try the `.dll` names, and `compress.c` loads zlib entirely
  through `dl` (no `<zlib.h>` and no mandatory link). `fork`, `execvp`, `waitpid`, `kill_process` and `pipe_new`
  stay posix-only, until the `procesos-spawn` arc. No changes on Linux. Verified on Windows 11 x64 (laptop):
  processes, `dl`, real Ctrl+C and the `persist` drain; `std/serial` only on no-port errors (no hardware).

### Fixed
- **`try_read_file` and `read_file` read `/proc` files** [dogfooding:nyxerp]: the runtime sized the buffer with the
  file size, and `/proc` reports 0; `/proc/self/status` gave `Ok("")` with no error (`cat`: 1,184 bytes). Now it
  reads until EOF and uses the size only as a hint for the first buffer; a stream with no position (FIFO) still
  gives `ESPIPE`. C runtime +7 asserts (`test_file_result.c`).
- **`contains` and `indexOf` find texts again after `sort_str`** [dogfooding:nyxerp]: merge sort moved elements with
  `dst[i] = src[j]`, and that slot-to-slot copy left the tag at 0 (unknown); `contains` and `indexOf` only compare by
  content in slots tagged as String, so they returned `false` and `-1` on an array that did have the text, with no
  error. Codegen now propagates the source tag in an indexed assignment whose value comes from another slot, and the
  insertion swap uses a temporary slot. The case of an untyped intermediate variable
  (`let t = a[i]; b[k] = t`) stays filed in `TASKS.md`. Regression +1 (`test-521-sort-conserva-tags`, also
  `sort_by` and `sort_int`); `codegen_call_expr` grows 16 B in the stack guard.
- **Docs: `sort_int`, `sort_str` and `sort_by` sort the array they receive** [dogfooding:nyxerp]: `LLM.md` did not
  document them and nothing warned that they sort in place and return the same array; `let sorted = sort_str(keys)`
  broke nyxerp's pairing of `keys` with `values`, with no error. New entry in `LLM.md` §Array and the
  `sort-in-place` trap (AGENTS.md in both languages), with the way to sort a copy:
  `sort_str(xs.slice(0, xs.length()))`. AI-first +1 (`44-sort-ordena-en-el-lugar`); `build_manifest` +1 (the Windows
  case from the next entry).
- **`nyx build --target x86_64-pc-windows-msvc` no longer builds native silently** [dogfooding:nyxerp]: the Windows
  triples passed validation (codegen knows them), but `nyx build` does not link for Windows: it printed "build
  complete", exited 0 and left an executable for the current platform. Now it fails with the reason, like an unknown
  triple, and the `nyx` help no longer advertises "Windows (cross)". New case in `run_build_manifest.sh`.
- **HTTP: a request body is no longer lost if the header arrives as `content-length`** [dogfooding:nyxerp]: the C
  parser (the one in `http_serve` and `std/serve`) required `": "` as the separator and compared `Content-Length`
  with exact capitalization, so `content-length: 5` or `Content-Length:5` reached the handler with an EMPTY body and
  no error. Now header names are case-insensitive and the `:` allows optional spaces on both sides of the value
  (RFC 9110 §5.1 and §5.6.3), also in the Nyx parsers of `std/http` (requests, responses by fd and over TLS) and in
  the upstream response of `std/proxy`. Each header's value arrives without those spaces. Regression +1
  (`test-519`, both parsers); `test_net.c` +15 asserts.
- **`[lib] modules`: two libraries that import each other now compile** [dogfooding:nyxerp]: `a`'s unit was not
  counted as imported, so when coming back through `b`'s import another copy of `a` was inlined and its structs
  appeared twice in the IR ("redefinition of type" in clang). Uncovered by `run_lib_real` on nyxerp's
  `formatos ↔ formatos_lienzo`. New case in `run_lib_modules.sh`.
- **win32: `try_exec_full` no longer hangs without a console** [arco: w5-windows]: from a service the child read from
  a new console and never returned; now it gets stdin `NUL` and is created with `CREATE_NO_WINDOW`.
- **win32: an invalid fd gives `EBADF`, not `__fastfail`** [arco: w5-windows]: CRT invalid-parameter handler; and
  `isatty` gives 0 for `NUL` (confirmed with `GetConsoleMode`).
- **win32: `tls.c` compiles with the MSVC CRT and its `e.code` is canonical** [arco: w5-windows]: static OpenSSL
  from vcpkg in the gate (job `w5-tls`); `persist.c` and `compress.c` enter the subset, and `<gc.h>` in the four
  `.c` files that still used `<gc/gc.h>`.
- **sqlite: a missing symbol is "library absent", not a crash**: before, the library loaded with a null pointer that
  blew up on the first call. Now `try_sqlite_open` returns the cause with the symbol and library name, and
  `sqlite_open` reports it once on stderr. New variable `NYX_SQLITE_SO`, which pins the library.
- **The parser no longer silently cuts off programs of more than 100000 statements** [dogfooding:nyxerp]: the main
  loop had a fixed limit; on exceeding it, it printed "too many iterations" and went on with the program half
  parsed. A project with many imports lost its whole `main.nx`: `nyx check` exited 0 and the build failed with
  "undefined reference to main". Now the bound is the number of tokens, and exceeding it is a hard internal error.
  `parser-sin-tope` guard in `make test-ai-first`.
- **A chain of more than 50 postfix operations now compiles**: `a.b().c()…` had a 50-round limit in the parser, and
  operation number 51 gave NYX0107 on valid code. Now the loop ends when a round consumes no token. Regression +1
  (`test-515`, 532 files).
- **An `Fn` variable or parameter shadows the global `fn` of the same name in the result TYPE too**
  [dogfooding:nyxerp]: the call already went to the closure, but `let r = f(41)`, `match f(41)` and `f(41)?` took
  the return type of the global `fn f` (even if it was in another module). `nyx check` passed and the build failed
  far from the cause (NYX2007 on a field, or invalid IR). With a lambda in the same function, a local closure
  returning a struct by value gave invalid IR even without a same-named global. Regression +1 (`test-516`,
  533 files).

---

## [0.39.0] — 2026-10-27

> **MINOR**: new API — `std/crypto` (AES-GCM), `std/exec` (`try_exec_full`), `try_ping`, the local-network UDP
  primitives and `std/mdns` (codec) [arco: red-local] — and two behavior changes: `task_cancel` becomes
  cooperative and NYX1047 rejects code that used to compile.
>
> **Migration**: (1) `task_cancel(t)` NO LONGER stops the task: a task running a loop has to check
> `task_cancelled()` and return (a `sleep` inside it returns on its own when cancelled). A task that neither
> checks nor sleeps keeps running. (2) NYX1047 ships straight as an error, without the prior warning that rule
> 7 of `docs/VERSIONING.md` asks for (exception approved by Ottavio): what it rejects —`for x: dyn T in arr` or
> `let y: dyn T = arr[0]` over an Array of concrete structs— died with SIGSEGV as soon as it ran, and a search
> of the consumers found zero cases. The way out is declaring the Array as `Array<dyn T>`.

### Added
- **`std/crypto`: authenticated AES-GCM encryption, both directions** [dogfooding:nyxerp]: to store secrets
  that must be reused in clear (each customer's SMTP password) without leaving them readable in the database.
  `try_aes256gcm_seal`/`try_aes256gcm_open` pick a random nonce (nonce ‖ ciphertext ‖ tag);
  `try_aes256gcm_encrypt`/`decrypt` and `try_aes128gcm_*` take an explicit nonce (`try_aes128gcm_decrypt` opens
  what Web Push's `aes128gcm_encrypt` produces, which had no inverse). A bad tag = `Err(invalid 74)` without
  releasing the text. GCM specification vectors in `test-stdlib-14-aes-gcm`; recipe 147.
- **`csprng_bytes` on wasm32-wasi** (via `getentropy`/`random_get`): it did not exist before, and every program
  importing `std/webpushcrypto` or `std/oauth2` failed to link on wasm. The browser shim no longer falls back to
  `Math.random` without `crypto.getRandomValues`: it returns NOSYS and `csprng_bytes` gives `""`.
- **`std/exec`: `try_exec_full(cmd) -> Result<ExecResult, Error>`** — stdout, stderr and exit code separately
  (`ExecResult { stdout, stderr, code }`); before, `exec` gave only stdout and `exec_code` only the code
  (anonymous request of 2026-07-23, archived without a task). Reads both streams at once (poll on posix, one
  thread per stream on Windows), so it does not hang when one fills its pipe; binary-safe, no `\n` stripping;
  `code` = 128+signal if a signal killed it, 127 if the command does not exist; Err only if it could not
  launch (and 95 on wasm). New `os_proc_run_full` layer (win32 written, not compiled). `test-512`, 3 cases in
  `test_os_proc.c`, recipe 148.
- **Local network, first batch** `[arco: red-local]`: `std/net` gains `try_udp_recvfrom_from` /
  `try_udp_recvfrom_from_timed` (the datagram with the sender's IP and port; ms deadline via `poll`),
  `try_udp_bind_shared` (shared port; `try_udp_bind` is unchanged), `try_udp_join`/`leave`,
  `try_udp_set_multicast_ttl`/`loop`/`iface` and `try_udp_set_broadcast`, on new os-layer primitives (win32
  written, not compiled). And `std/mdns`, the base of the module: a pure codec for mDNS messages (RFC
  6762/6763) with A/PTR/SRV/TXT records and defensive name decompression (backward pointers only, caps on
  jumps, label, name and records) that returns `Err("parse")` instead of aborting; verified against dnslib and
  python-zeroconf packets and over 1000 mutations. The probe measured that a network read with a deadline
  inside `spawn {}` holds a scheduler worker: the reader goes in `thread_spawn` (HIGH task for the I/O
  primitive). Tests `test-stdlib-15-net-multicast` (SKIP if the environment does not deliver multicast) and
  `-16-mdns-codec`.
- **`std/net`: `try_ping(host, timeout_ms) -> Result<PingReply, Error>`** (ICMP echo IPv4, `{ ip, rtt_us }`):
  an unprivileged datagram ICMP socket where the system allows it (Linux with an open `ping_group_range`,
  macOS), raw as a fallback; `IcmpSendEcho` on Windows (written, not compiled). Anonymous request of
  2026-08-05, archived without a task. `test-stdlib-17-ping` (SKIP if the system forbids ICMP), recipe 149.
- **TLS and the HTTP client on Windows, first part** `[arco: w5-windows]` (Ottavio's decision: static OpenSSL
  + the Windows certificate store's CAs): `os_sys_root_certs` reads the «ROOT» store and `tls.c` adds those CAs
  to OpenSSL; `tls_*`, `https_*` and `http_get/post/request` leave the win32 gate. Written, not compiled:
  linking vcpkg's OpenSSL and verifying it are W5 Task 4, on the laptop. Nothing changes on Linux.
- **`CHANGELOG.en.md`, the English CHANGELOG** from 0.33.0 (Ottavio's decision): published at
  nyxlang.com/changelog/. Each release translates its entry: `release-check.sh` refuses to cut without it and
  the new check 13 of `make docs-health` requires the same headings, subsections and items per version.

### Changed
- **`task_cancel` is cooperative** (Ottavio's decision; W5 spike §5): it requests cancellation and the task
  checks it with the new builtin **`task_cancelled() -> bool`** (Go's `ctx.Done()`); `sleep()` inside a
  cancelled task returns at once. Before, it was `pthread_cancel` on Linux (a task that only allocates kept
  running forever; 200 of them brought WSL down) and `TerminateThread` on Windows (it could leave the GC lock
  held and hang the process, 4 out of 5); both skipped `defer`. **Behavior change**: a task that neither checks
  nor sleeps is no longer stopped. `test-513` with the spike's scenarios.

### Fixed
- **NYX1047: `for x: dyn Trait in arr` and `let y: dyn Trait = arr[0]` over an Array of concrete structs**
  passed `nyx check` and died with SIGSEGV (anonymous report of 2026-09-08, archived without a task): turning
  into `dyn` changes the representation when the element is WRITTEN, and reading a struct as a fat pointer
  crashes. It is now an error asking for `Array<dyn Trait>`; an untyped `Array` full of already-`dyn` values
  keeps working (test-391). Residue: an Array that arrives filled from another function is not detected. 3
  cases in `test-errors`.
- **win32: `runtime/csv.c` joins the subset** `[arco: w5-windows]` (test-141 had not linked since `e0a02263`;
  the laptop's patch). `TerminateThread` left `os_thread_cancel` (it could hang the GC, 4 out of 5) and was
  superseded the same day by cooperative cancellation (see «Changed»).
- **x86_64 on WSL2** (W5 spike): `nyx_ev_pipe_write_fd` (test-161 assumed `pipe()` gives consecutive fds and
  WSL inherits an fd 5), the «connection refused» tests are skipped with a notice when loopback does not
  refuse (mirrored mode), and `run_stack_frame_audit.sh` has per-architecture ceilings.
- **`std/smtp` with a «Name <address>» sender or recipients** [dogfooding:nyxerp]: the envelope went out as
  `MAIL FROM:<Shop <sales@x.com>>` (a real server rejects it), the Message-ID took `x.com>` as its domain and an
  accented name traveled as raw UTF-8 in `From`. Now `MAIL FROM` and `RCPT TO` carry only the address, the
  Message-ID uses its domain and the display name of `From`/`To` goes out in RFC 2047 when it is not ASCII
  (without the quotes around it). New test `test-stdlib-13-smtp-remitente-nombre`.
- **The `std/postgres` pool cleans the session and replaces dead connections** [dogfooding:nyxerp]:
  `pg_pool_put` only did ROLLBACK, so a `SET`, a temp table or a LISTEN leaked to the next request, and a
  connection cut by the server went back to the pool and was handed out broken again and again. It now does
  ROLLBACK + `DISCARD ALL` and, if that fails, closes the connection and empties the slot (the next get
  reconnects). New `pg_pool_discard`. Points 3 and 4 of the 2026-09-27 request. `tests/postgres/10-pool-sanea.nx`.
- **`wcwidth` gives 2 for wide emoji** (U+270A, U+231A...): `__ucs_wide` is now exactly Unicode 15's East Asian
  Width W/F. **`html_unescape` knows the 253 HTML 4.01 entities** (before, ~50) and `&#0;` gives U+FFFD instead
  of a 0 byte. Anonymous requests of 2026-07-31, archived without a task. New cases in `test-302`/`test-303`.

## [0.38.0] — 2026-10-26

> **MINOR**: new API for processing tabular data: the columnar reader `try_csv_read` in `std/csv`
  [arco: csv-columnar] and `string_to_X_range`. In addition, an integer that does not fit in 64 bits is now
  invalid instead of saturating: `string_to_int` on such a number now aborts (before, it silently gave INT64_MAX).
>
> **Migration**: if your code checks that the text is only digits and then calls `string_to_int`, a number of
> 19+ digits that arrives from outside now **aborts the process** (before, it saturated). The way out is
> `string_to_int_or(s, def)` or rejecting the overflow beforehand. Today this affects nyx-kv (`INCRBY`, `LRANGE`,
> `SCAN`, `SET … EX`, `INCR`), nyx-db (`LIMIT`/`OFFSET`), nyx-proxy (`max-age`) and the kv webhook: do not
> recompile them with 0.38.0 until they have their fix (filed in `TASKS.md`).

### Added
- **`string_to_int_range(s, ini, fin, def)` / `string_to_float_range(s, ini, fin, def)`**: parse the
  number in bytes `[ini, fin)` of `s` without creating the substring; they always yield the same value as
  `string_to_X_or(s.substring(ini, fin), def)`. Reason: in a 5M-row CSV, `split()` +
  `string_to_float` per row makes ~11 GC allocations per row and takes half the time
  (bench 2026-10-25 against Python/pandas/polars). Pre-sizing the `split()` Array was tried earlier and
  discarded: −4% on the giant split, +4..9% on the short ones. +1 test (`507`), recipe
  `examples/by-example/145-csv-sin-split.nx`.

- **`std/csv`: columnar reader `try_csv_read(texto, esquema, opts)`** [arco: csv-columnar]: parses in a single pass
  straight into typed columns (`int`, `float`, `str`, and `cat` = codes + dictionary), with the core in the
  new `runtime/csv.c` (RFC 4180: quotes, line breaks inside quotes, CRLF, BOM). Strict: an invalid value
  is an `Err` with row and column. `try_csv_guess_schema` proposes the schema. In the 5M-row bench,
  grouping and filtering takes 0.93 s and 265 MB, against 1.21 s for pandas and 1.19 s for polars with one thread (with
  `split()` + `Map`: 5.5 s). +1 test (`509`), +1 C suite (`test_csv.c`), recipe `146-csv-columnar`.

### Changed
- **An integer that does not fit in 64 bits is invalid, not saturated**: `string_to_int` aborts with its own
  message, `string_to_int_or`/`_range` return the default, and an `int` column of `try_csv_read` gives `Err`
  (“does not fit in an int” («no entra en un int»)). Before, `strtoll` left it at INT64_MAX/MIN and nobody checked `ERANGE`:
  `string_to_int_or("99999999999999999999", 0)` silently gave 9223372036854775807 (Ottavio's decision).
  Consequences that were fixed along with the change: **`std/json`** stores such an integer as `"float"` with its
  text (before, it saturated it; with the change it would have aborted the process on a number coming from outside), and
  **the interpreter/REPL** applies the same NYX2015 rule as the compiler: `-9223372036854775808` gives
  exact INT_MIN (it gave -9223372036854775807) and a literal that does not fit is an error (it gave INT_MAX). +2 tests
  (`510`, `511`), +1 C suite (`test_int_parse.c`), +2 checks in the REPL smoke test.
- **`string_to_float` / `_or` / `_range` parse with the Clinger fast path** [arco: csv-columnar]: a number
  `[+-]digits[.digits]` of up to 15 digits is converted with one exact division, which gives the same double
  as `strtod` bit for bit; the rest (exponents, 16+ digits, `inf`, hex, whitespace) still goes to `strtod`.
  Verified against `strtod` on 5M random values and on the edge cases (`test_float_parse.c`). In the bench of
  5M rows, `indexOf` + `_range` drops from 2.67 s to 2.13 s. +1 test (`508`), +1 C suite.

## [0.37.1] — 2026-10-24

> **PATCH**: the three nyxerp friction reports of 2026-10-22.

### Fixed
- **NYX1046**: an enum pattern (`Result.Ok(v)`, `Option.None`) in a `match` whose value is primitive
  (`int`, `float`, `bool`, `String`) is an error. Before, it passed `nyx check` and clang failed with invalid IR
  or, with a String, it compiled and never entered any arm (nyxerp friction with
  `match string_to_int(s)`, which returns `int`). +2 error tests.

### Added
- **`sse_close_room(room) -> int`** in `std/serve`: closes only the channels of one room; the rest keep going and
  the room can be reopened. `sse_drain_close` did not work for this: it leaves the registry draining and no later
  open gets registered (nyxerp friction). +5 checks in the serve smoke test.
- **`std/postgres` takes the password like libpq** when the string has no `password=`: `PGPASSWORD`, then
  `passfile=`, `PGPASSFILE` or `~/.pgpass` (wildcards `*`, escapes `\:` and `\\`; a file readable by
  others is ignored). `pg_pgpass_buscar` is exposed (nyxerp friction). +1 test (`506`).

## [0.37.0] — 2026-10-22

> **MINOR**: two warnings from 0.36.x become errors, as announced (rule 7 of `docs/VERSIONING.md`):
> NYX1010 between integer and String, and NYX1045 on an unknown escape. Everything else is additive: `std/pdf_render`,
> chunked HTTP responses, wildcard SNI, `http_serve_en`, DNS records, `nyx build -j N` and
> several improvements to `std/pdf`, `std/xlsx`, `std/image` and `std/smtp`. Before the cut, 1201 files were
> reviewed (nyxerp, the products, the sites, and std, examples and compiler of this repo) with the
> 0.36.x compiler: not a single case of the two warnings.

### Changed

- **NYX1010 between integer and String is an error** (a warning in 0.36.x). `5 + "a"`, `5 == "5"` and `"a" < 5`
  compiled and died with SIGSEGV when the line ran; now they do not compile, with the same hint
  (`int_to_string`, `string_to_int_or`). The three `test-nyx1010-*-mixto` cases move to the error list of
  `run_error_tests.sh`. It is still a warning when one side reads a slot (`dst[1] == "dos"`):
  the inferred element type of an Array can lie (`var dst = [9]` and then `dst.push(src[1])`
  with a String) and the slot carries its tag, so that program works (`test-323`, case 6; warning in
  `test-nyx1010-casilla-aviso`).
- **NYX1045 on an unknown escape is an error** (a warning in 0.36.x). `"\q"` or `"\e"` were worth the letter without the
  backslash; now the analysis rejects them with the line and the list of valid escapes (`\x1b` instead of
  `\e`). It comes out with the format and NDJSON of the other analysis errors (`"severity":"error"`).

### Added

- **`std/http`: `http_serve_en(host, port, handler)` and `http_serve_mt_en(host, port, workers, handler)`**
  choose the bind address; `http_serve`/`http_serve_mt` stay on `0.0.0.0` for compatibility
  (gotcha `http-serve-all-interfaces`). The playground moves to `127.0.0.1:8081`: in production it was
  left open directly even though the gateway serves it (server order, 2026-10-21). Test
  `test-505-http-serve-en` (binds `127.0.0.2` and checks that `127.0.0.1` does not connect).
- **Wildcard SNI in the TLS server**: `tls_server_add_cert("*.dominio", cert, key)` covers one
  label (`a.dominio`, not `dominio` nor `a.b.dominio`, RFC 6125), exact names win over the
  wildcard regardless of order, the comparison is no longer case-sensitive and the cap goes up from 16 to 64
  domains. Request from nyxerp (phase C0 of its automatic onboarding of customers `<cliente>.nyxerp.com`).
  Test `test_sni_name_matches` (runtime) and real handshake verified with `openssl s_client`.
- **`std/http`: reading a response in chunks** `[arco: http-streaming]` (nyxerp friction
  20261019-200016-team-1: forwarding to the browser each chunk of a language-model API as soon as it
  arrives). `try_http_stream_opts(method, url, headers, body, http_stream_opts())` → `HttpStream`, which
  returns with the status and the headers:
  - `read()` gives body chunks without the chunked framing; `read_event()` gives `text/event-stream` events
    already assembled (`SseEvent { evento, datos, id }`, WHATWG).
  - Deadlines `connect_ms`, `primer_byte_ms`, `lectura_ms` (between two chunks) and `total_ms` (no cap by
    default). HTTP and HTTPS.
  - `sse_wait_room(room, ms)` in `std/serve` closes the forwarding race: the channel enters the room
    after the handler returns, and without waiting the first events were lost.
  - Test `test-504-http-stream` (split chunked, Content-Length, until close, split SSE, deadlines,
    gzip, disconnects, TLS), `tests/ai-first/42`, recipe `144-reenviar-eventos`.
- **`std/pdf_render`: drawing a PDF page as an image** `[arco: pdf-a-imagen]` (nyxerp friction
  20261019-080021-team-1: tracing, in the format editor, the preprinted sheet that the print shop
  sends as a PDF). New module in pure Nyx: the same code on native and on `wasm32-wasi`, with the
  image byte for byte identical on both.
  - `pdf_open(bytes, pdf_open_limits()) -> Result<PdfDoc, Error>`, `doc.page_count()`,
    `doc.page_size(p)`, `doc.render(p, ppp, pdf_render_strict())` and `doc.render_report(...)` with
    `pdf_render_best_effort()`, which returns the image and the list of what was omitted. Shortcut
    `pdf_page_to_image(bytes, página, ppp)`. The output is the `Image` of `std/image`.
  - Parser with classic xref, xref streams, object streams, incremental updates and
    reconstruction by sweeping; Flate filters (with predictors), LZW, ASCIIHex, ASCII85 and RunLength.
  - Antialiased rasterizer (exact horizontal coverage × 4 subsamples), nonzero and even-odd,
    strokes with joins, caps, dashing and stroke adjustment, and clipping.
  - Color gray, RGB, CMYK (poppler's interpolation), ICCBased, Indexed, Lab, Separation and DeviceN
    with functions of type 0, 2, 3 and 4; constant alpha.
  - JPEG and raw images, with SMask, Mask and stencil. Large ones are downscaled in a single pass to the size
    they occupy on the page, without materializing them whole.
  - Text with embedded TrueType and CFF (simple and Type0/CID). The 14 standard fonts, when not embedded, use a
    subset of Liberation (OFL 1.1, 227 KB, license included in the generated block). Cache of
    rasterized glyphs.
  - Strict by default: anything unsupported (shadings, Type 1/3, JBIG2/JPX/CCITT, encryption...) is
    `Err(unsupported)` with the name. `PdfOpenLimits` bounds size, decompression, nesting,
    forms, operators, ppp and pixels: a hostile PDF gives `Err(invalid)` naming the limit.
  - Verified against poppler 25.03: synthetic corpus of 12 PDFs (`tests/pdf-corpus/`,
    `scripts/testing/pdf_render_oracle.sh`) and 44 real local PDFs (93 pages, none fails).
  - Tests `test-503-pdf-render`, `test-wasm-59-pdf-render` and `tests/ai-first/41-pdf-pagina-a-imagen`;
    recipe `143-pdf-a-imagen`.

- **`std/dns`: TXT, CNAME and MX queries** `[arco: dns-registros]` (request from nyxerp, 2026-10-18, to
  check SPF, DKIM and DMARC before turning on email). New module with its own DNS client in Nyx
  (RFC 1035) over UDP, with a TCP retry if the response comes truncated and no link-time dependencies.
  - `dns_txt` (one String per record), `dns_cname`, `dns_mx` (sorted by preference), raw `dns_query`,
    `dns_set_server`, `dns_set_timeout`, `dns_is_nxdomain` and `dns_is_nodata`.
  - `Result<_, Error>` errors: NXDOMAIN `not_found` 3, NODATA `not_found` 61, `timeout` 110,
    SERVFAIL/REFUSED `io`, `parse`.
  - Hostile-input parser: cap of 16 compression jumps, names of 255 bytes, random ID and
    question verified. Servers from `/etc/resolv.conf` (up to 3 IPv4); on Windows it requires
    `dns_set_server`. No cache, IPv6, EDNS(0) or DNSSEC.
  - Verified against the real network (SPF and DMARC of gmail.com, 17 TXT of google.com over TCP).
  - Tests `test-499-dns` (fixed packets), `test-500-dns-servidor` (fake UDP/TCP server) and
    `test-501-dns-red-real` (SKIP without network); recipe `142-dns-spf-dkim-dmarc`.
- **`std/smtp`: email with text and HTML (`multipart/alternative`)** `[arco: smtp-alternative]` (request from
  nyxerp, 2026-10-18). `smtp_message_alternative(de, para, asunto, texto, html)`: text first and HTML
  after (RFC 2046), each part in quoted-printable (RFC 2045 §6.7). With `smtp_attach` it comes out as
  `multipart/mixed` › `alternative` + attachments, with distinct boundaries and dot-stuffing per part.
  `smtp_message` and `smtp_message_html` do not change a byte. Test `test-stdlib-12-smtp-alternative`
  (includes a full round trip through `mime_parse`) and recipe `141-smtp-texto-y-html`.
- **`std/image`: thumbnails of scanned sheets in tenths of a second** `[arco: image-rapido]` (nyxerp
  friction, 2026-10-18), with byte-for-byte identical output (still equal to Pillow).
  - Resize, JPEG decoder and encoder read and write through pointers on 64-bit native; wasm32
    keeps the previous versions, and the two paths give the same bytes.
  - Sheet of 1275×1650, CPU time of `image_thumbnail`: 3.6 s → 1.0 s with `nyx build` (clang `-O0`)
    and 0.92 s → 0.25 s with `--release` (`-O2`). At 2550×3300: 8.6 s → 2.4 s and 2.3 s → 0.65 s.
  - A good part of the 3.5 s reported was compiling without `--release`.
  - Test `test-497-image-rapido` (CRC32 fingerprints pinned before optimizing), recipe
    `140-imagen-hojas-escaneadas` and `scripts/bench_image_thumb.nx`.
- **`std/xlsx`: dropdown lists and fill color** `[arco: xlsx-validacion]` (request from nyxerp,
  2026-10-17, for bulk-upload templates).
  - `XlsxSheetOut.validate_list(rango, valores)` and `validate_list_range(rango, origen)` emit
    `<dataValidations>` in the order required by the ECMA-376 schema. `xlsx_write` returns `Err` if the fixed
    list exceeds 255 characters, if a value contains a comma or quotes, or if the range is invalid.
  - `xlsx_fill(celda, "RRGGBB")` gives a solid fill and chains with `xlsx_bold`.
  - `xlsx_read` does not change.
  - Test `test-495-xlsx-validacion` and recipe `138-xlsx-plantilla`.
- **`std/pdf` phase 2: line width, gray and color, 12 Core14 fonts and rotated text** `[arco: pdf-fase-2]`
  (request from nyxerp, 2026-10-17, for preprinted sheets and labels).
  - `line_width`, `gray` and `color` change both the stroke and the fill of whatever is drawn afterwards.
    Each page starts in the PDF default state: black and 1 pt.
  - New fonts: `HelveticaOblique`, `HelveticaBoldOblique`, `TimesBold`, `TimesItalic`,
    `TimesBoldItalic` and the four `Courier`. The three new Times AFM tables were cross-checked between
    pypdf and pdfminer.six; the only difference is the €, which pdfminer does not include.
  - `text_rotated` rotates the text with the `Tm` matrix, at any angle, with sine and cosine computed
    without libm; multiples of 90° come out exact.
  - No phase 1 PDF changes bytes.
  - Test `test-496-pdf-fase-2` and recipe `139-pdf-preimpreso`.

- **`nyx build -j N`: `[lib]` units are compiled in parallel** `[arco: build-lib-paralelo]`
  (nyxerp friction, 2026-10-17). Before, they ran serially: 302 modules and about 50 minutes cold on 4
  cores. The units do not depend on each other to compile, so now up to N are launched at the same
  time (`-j N`, `--jobs N` or `NYX_JOBS`; by default, the cores). `nyx test` goes through the same
  path. Output and linking in manifest order; on an error all the units that
  failed are reported and no half-written object is left behind. Two builds of the same project at the same time (several
  `nyx test` in parallel, as nyxerp runs them) take a lock on `target/nyx-lib`: the second one
  waits and reuses; before, they deleted each other's temporaries. A build with nothing to compile
  launches no helper processes (the one `nyx test` triggers on each file). Measured on a copy of
  nyxerp: 300 libraries cold, 2,894 s serial and 1,057 s with `-j 4`. Measurement in
  `docs/design/spikes/2026-10-17-build-lib-paralelo-medicion.md`: under 600 MB per unit. Case 10
  of `run_lib_modules.sh`.

### Fixed

- **A header written as `"Nombre: valor"` in a single element reaches the request** (silently-wrong,
  nyxerp friction). The `std/http` client only read `[nombre, valor]` pairs and dropped it without warning;
  now it accepts both forms, also mixed (a header name cannot contain `:`, so there is
  no ambiguity with values like `Bearer a:b`). Test `tests/ai-first/43`.
- **`CAPABILITIES.md` lists public types and their methods**: until now only free functions, so
  APIs made of methods (`doc.render()`, `s.read()`, `d.text()`) and their structs did not appear (nyxerp
  friction, 2026-10-20).
- **NYX1017 suggests the call when the name is a method**: `s.status` on an `HttpStream` now
  says “'status' is a method: call it with parentheses, .status()” (nyxerp friction, 2026-10-20). Test
  `test-nyx1017-metodo-sin-parentesis`.
- **String literals compile in linear time** `[arco: pdf-a-imagen]`. The lexer and
  `escape_string` concatenated one byte at a time: a 64 KB literal took ~4 s in the frontend and a 400 KB one,
  32 s. Now 64 KB takes 35 ms. `test-lexer` and `test-emit-bytes-global` pin it.
- **A float from a slot without `<T>` keeps its value when assigned and when pushed**
  `[arco: pdf-a-imagen]`. `x = d[i]` with `x: float` already declared, and `b.push(a[2 * i])`, silently gave
  the bits of the double as a number (1.5 → 4.6e18). Test `test-502`.
- **wasm32: a slot passed directly to an `impl` method** `[arco: pdf-a-imagen]`. With an `Array` or `String`
  parameter, the call emitted the raw i64: on native it worked by chance, on wasm32 it was an `unreachable`
  trap. Now it is converted, just like in free functions. Test
  `test-wasm-58`.
- **Single-line enum variants no longer depend on the import path** (nyxerp friction,
  2026-10-18). `std/pdf` declares `pub enum PdfFont { Helvetica, … }` on one line; when it arrived first through a
  transitive import, the line-by-line scan in `semantic` looked for the variants on the following lines
  and registered garbage. Since the first registration wins, `PdfFont.Helvetica` gave NYX2012 “has no variant” (the
  NYX2012 check in expressions, new in this version, made it visible; before, it failed in codegen
  with “unknown enum variant”). With the imports reversed it compiled. Regression: `test-498`.
- **`std/smtp` verifies against the system CAs** (nyxerp friction, 2026-10-18). `smtp_starttls` (587) and
  `smtp_connect_tls` (465) verified against the `tls_set_ca_file` store, which starts empty: every
  public relay with a valid certificate gave “unknown ca”. The workaround, `tls_set_ca_file("")`, added all the
  public CAs to a global store that the `verify-ca` of `std/postgres` also uses. Now they use
  `tls_upgrade_fd_verified_system` / `tls_connect_verified_system`, as `std/imap` already did. Verified
  against `smtp.gmail.com` on 587 and 465: before, both failed; now they verify. The self-signed one is still
  rejected (`test-stdlib-07`, case d). The workaround is no longer needed; a per-connection private CA is
  filed.
- **A slot of an `Array` without `<T>` passed directly to a struct parameter, or used as a `Map` key,
  now works** (nyxerp friction, 2026-10-17). `texto(hs[0])`, with `fn texto(h: Hoja)`, passed
  the raw `i64` of the slot where the function expected the struct by value. The result was “GC heap
  exhausted” or, in another nyxerp program, the function received a different element. `m.insert(pares[0],
  pares[1])` used the `i64` as the key pointer and clang rejected the IR. In both cases
  `nyx check` was green. Now the slot is converted to the parameter's struct (`inttoptr` + `load`,
  as in `let h: Hoja = hs[0]`), and the key of a Map method that comes from a slot is read as a
  String. The compiler itself had the same pattern in `cg_tipo_duplicado(decls[i], …)`, which worked
  by chance thanks to the aarch64 calling convention. `ASTNode` is left out: in a slot it is an
  Array, not a pointer. Regression: `tests/ai-first/40-casilla-sin-tipo-como-argumento.nx` and gotcha
  `untyped-slot-as-argument`.
- **`nyx check` rejects an enum variant that does not exist (NYX2012)** (nyxerp friction, 2026-10-17).
  `PdfFont.Zzzz` passed the check in green and only codegen rejected it, with a message that asked for
  a type annotation. Now it is NYX2012, with “did you mean” if there is a close variant, for both local
  and imported enums. It is not validated when the name corresponds to a variable or a
  parameter. Cases `test-nyx2012-variante-{inexistente,importada}`.

- **String escapes: `\xNN` and `\u{…}` are worth what they say, and an unknown escape warns (NYX1045)**
  `[arco: escapes-de-string]`. Before, the lexer knew only `\n \t \\ \" \r \0` and any other escape
  silently lost the backslash: `"\x41"` was worth `x41`, `"\u{0}"` was worth `u{0}` and `'\x41'` printed `41`.
  There were three real cases, all wrong without anyone noticing: the `"\u{0}"` sentinel in the
  nyxerp configuration, the `"\x1F"` separator of the `DISTINCT` key in nyx-db (and its copy in
  venezuelainfo), and the ANSI sequences `"\x1b[…"` in the nyx-edit example. With this fix the three
  are worth what they meant without touching their code. `\'` and `\$` (`"\${x}"` is a literal `${x}`) are
  now documented. A malformed `\x` or `\u{…}` is a lexer error with line and column. Any other
  escape is `warning [NYX1045]` and becomes an error in 0.37.0. The four lexer paths that read
  escapes, which were four copies of the same `if`, now go through a single function.
  `test-494-escapes-hex-unicode`, seven `test-nyx1045-*` cases and gotcha `string-escapes`.

- **`CAPABILITIES.md` no longer hides 34 stdlib modules under “Otros”**. The curated `module_category` table
  in `compiler/build.nx` lacked 34 of the 78 modules, among them `serve`,
  `postgres`, `error`, `math`, `map`, `router`, `template`, `xlsx`, `pdf` and `image`. All of them now have a
  category, and two new categories are added: “Núcleo” (`error`, `prelude`) and “IA & LLM”. “Otros”
  remains only for builtins without a topic. New guard (d) in `run_capabilities_test.sh`: it fails if a
  `std/` module lands in “Otros”, so a new module enters the table in the same commit that creates it.

- **The compiler no longer copies quadratically: a large nyxerp test file compiles 9 times
  faster** `[arco: test-sin-repetir]` (nyxerp friction, 2026-10-17: ~42 s per `nyx test` file).
  Per-phase measurement showed that time grew faster than the IR, and a sampling profiler
  showed that 81% was GC, caused by concatenations that recopied everything accumulated: the text constants
  in `generate_llvm`, the module declarations in `resolve_source`, and each module's symbol prefix
  recomputed character by character on every unqualified call. Now they use
  `StringBuilder`, the prefixes are computed once (`ctx.alcances[3]`), the lookup of a function
  among the modules is memoized (`ctx.alcances[4]`, with the set's version in the key),
  `extract_exports` does not trim lines that cannot export anything and `scan_module_types` does not re-read a
  module already scanned. The `[lib]` fingerprint in `nyx_build` had the same pattern (`todo = todo + …`
  over the import closure): an unchanged `nyx_build libs`, which `nyx test` runs on every file,
  dropped from 5.7 s to 2.0 s in nyxerp. The IR comes out byte for byte identical. Measured: 105.6 s → 11.2 s and 822 → 642 MB on the
  largest file; 3.5 s → 1.6 s on a medium one. Spike:
  `docs/design/spikes/2026-10-17-test-sin-repetir-medicion.md`.
- **Operators between primitives of different classes: NYX1010 instead of SIGSEGV or invalid IR.** The
  check let arithmetic and comparison through between any pair of types. The matrix measured on
  2026-10-17 (four types per side, nine operators) showed that only numbers with numbers,
  `String + x`, `==`/`!=` between two Strings or two bools and ordering between two Strings exist; the rest died with
  SIGSEGV when the line ran (`5 + "a"`, `5 == "5"`, `"a" < 5`) or gave invalid IR that only
  clang rejected (`x * "dos"`, `2.5 + "a"`, `true + 1`). The latter never produced a binary and is
  an error now; the former compiled, so by rule 7 of `docs/VERSIONING.md` it is
  `warning [NYX1010]` in 0.36.x and **an error in 0.37.0**. Nyxerp (539 files) has no cases.
  Tests: `test-493-operadores-primitivos-mixtos` (the values of what does exist) and five of
  `make test-errors`; gotcha `mixed-primitive-operators`.
- **Reinstalling the same compiler no longer invalidates `target/nyx-lib`** (nyxerp friction, 2026-10-17).
  The fingerprint of each `[lib]` object carried the path and mtime of the compiler binary, and the
  absolute path of each `std/` in the closure. Since every `make install-local` / `nyx update` builds a new
  folder in `~/.nyx/versions/`, reinstalling the same compiler recompiled everything: 302 modules
  and about 50 minutes in nyxerp. Now the compiler is identified by the sha256 of its content, stored
  in `target/nyx-lib/.compilador` along with the path, size and mtime that produced it, and the `std/`
  by their relative path. Case 9 of `run_lib_modules.sh`: an identical reinstall reuses, a different
  compiler recompiles.

## [0.36.1] — 2026-10-17

> **PATCH**: a codegen fix (numeric conversion on an untyped `Array` slot) and two additive capabilities
> requested by nyxerp for OAuth2 mail: `smtp_auth_xoauth2` in `std/smtp` and the new module
> `std/oauth2`. Nothing that used to compile stops compiling.

### Added

- **`std/oauth2`: stateless OAuth2 client** `[arco: oauth2-cliente]` (nyxerp friction 2026-10-11,
  GO 2026-10-16): PKCE S256 and `state` (CSPRNG), authorization URL (+ provider extras:
  Google's `access_type=offline`), code exchange, refresh that preserves the `refresh_token`,
  `client_credentials` and device code (RFC 8628: `oauth2_device_code` / `_poll` / `_wait`, with
  `verification_uri` and Google's `_url`). Errors `auth` / `protocol` / `pending` / `invalid`,
  never carrying the token, the secret, or the verifier. No new runtime: `std/http` + `std/json` +
  `std/url` + `std/base64` + `std/webpushcrypto`. `test-stdlib-11-oauth2` (RFC 7636 B vector and a
  canned provider shaped like Google and Microsoft), recipe `137-oauth2`, SPEC and LLM.md with the
  Gmail and Microsoft 365 recipes. CAPABILITIES: `oauth2` under "Crypto & security" ("Cripto & seguridad"),
  and in passing `imap` and `mime` move from "Other" ("Otros") to "Network" ("Red").
- **`smtp_auth_xoauth2(c, usuario, token)` in `std/smtp`** (nyxerp friction, 2026-10-11): the
  counterpart of `imap_auth_xoauth2` for SENDING through Gmail and Microsoft 365, which no longer accept
  username and password. It requires the EHLO to have advertised `XOAUTH2` and handles the mechanism's own
  rejection (`334` with a base64 JSON -> empty line -> `535`); the decoded JSON goes into the `Error`, the
  token never does. Case (e) of `test-stdlib-07-smtp-tls` (good token, expired token, server without the
  mechanism). Obtaining and refreshing the token remains the application's job: `std/oauth2` was seeded
  as the arc `oauth2-cliente` (DRAFT, GO pending) in
  `docs/design/specs/2026-10-16-oauth2-cliente-design.md`.

### Fixed

- **`int_to_float(arr[i])` / `float_to_int(arr[i])` on an `Array` without `<T>` bound to a typed `let`
  generated invalid IR that `nyx check` did not see** (nyxerp friction, 2026-10-16). Indexing
  inherited the `expected_type` of the `let`: with `let f: float = int_to_float(cuentas[q])` the
  slot was read as `double` and the `sitofp i64` received a `double`; with
  `let n: int = float_to_int(pesos[0])`, the reverse (`fptosi double` on a raw `i64`). Only clang failed,
  late, with "invalid IR". Now both builtins set the hint of the type they require (`int` /
  `float`) while their argument is code-generated, just like `string_to_int` with `String`. Regression:
  `tests/ai-first/39-conversion-de-casilla-sin-tipo.nx` (+1 in `make test-ai-first`).

## [0.36.0] — 2026-10-10

> **MINOR because it rejects code that used to compile** (decision #3): NYX2019 becomes an error on the `let`
> to an integer (it was a warning in 0.35.x, rule 7 of `docs/VERSIONING.md`); NYX1031 for the file-handle
> family given a path (previously, SIGSEGV at run time); NYX1042 (`return`/`break`/`continue`
> leaving a `defer`; previously it hung or did nothing), NYX1043 (`defer` in an `async fn`) and NYX1044
> (ambiguous capture by name in a block closure). None of them rejects a program that gave the
> correct result. The bulk is block semantics: real scopes in codegen,
> `defer` and `#[affine]` drops when their
> block closes (also on `throw`), closures inside blocks (decision #22). In addition, the nyxerp
> requests: `std/zip`/`xml`/`xlsx`, `std/image`, `std/mime`, `std/imap`, `std/expr`, `std/rsa`,
> gzip and limits in `std/serve`, mTLS and multipart in the HTTP client.

### Added

- **`std/xlsx`: frozen panes, autofilter and thousands-separator format** (nyxerp request,
  2026-10-02): `h.freeze(filas, columnas)` (`<pane state="frozen">`), `h.autofilter("A1:F120")`
  (with the hidden name `_xlnm._FilterDatabase` that Excel keeps) and `xlsx_number_fmt(v, código)`
  with any Excel code (`"#,##0.00"` uses built-in 4; the regional settings of whoever opens it decide
  whether it shows 1.234.567,89). Test 462 extended and verified with openpyxl; recipe 124.

- **nyxerp's second batch (2026-10-01): JPEG output, thumbnails and mail reading over IMAP**,
  reviewed before integrating and integrated with a full test battery:
  - **`std/image` writes JPEG and builds thumbnails** `[arco: std-image]`: `image_encode_jpeg(img,
    quality)` (baseline, libjpeg-style quality 1-100 over Annex K, standard Huffman, JFIF, 4:2:0
    up to q90 and 4:4:4 above, single-component grayscale, alpha over white, no EXIF, ICC preserved;
    integer FDCT: the same bytes in native and wasm). Same PSNR as Pillow at equal quality up to q90.
    `image_thumbnail(bytes, max_w, max_h, quality)` and `image_thumbnails(bytes, sizes, quality)`:
    decodes with downscaling, shrinks with Lanczos3 and encodes in one step, a single decode for
    several sizes (12 MP to 600 px in ~1.4 s). `image_default_quality()` (80) and `image_strip_icc`.
    Tests 481-482, wasm 57, recipe 133.
  - **`std/imap`: read a mailbox** `[arco: std-imap]`: implicit TLS (993) and STARTTLS (143), both
    always verifying against the system CAs; LOGIN, PLAIN and XOAUTH2 (app token), never in
    cleartext; `imap_select`/`imap_examine`, `imap_fetch_since` (UID cursor, chunked search,
    `stale` on a changed UIDVALIDITY, optional global deadline), `imap_fetch_message`,
    `imap_search_unseen`, `imap_mark_seen`; everything with BODY.PEEK. The server is treated as hostile
    input: limits on line, literal (before reading it), total per command and depth, plus deadlines.
    A large message, or one that a `std/mime` limit would reject, comes out with its headers and `truncated`.
    Tests 483-485, sub-suite `test_imap_client.py` (107 checks against a fake server
    with PKI and hostile cases), recipe 134. Not yet verified against real Gmail or Dovecot.
  - **`std/mime`: `mime_parse_head`** parses only the headers: a body that exceeds a limit no longer
    loses the `In-Reply-To` (resolves the filed item "an exceeded limit takes down the whole message" for imap
    and for whoever calls it; `mime_parse` still returns Err).
  - The review found and fixed, each with its case: FETCH split across several responses gave an empty
    message and advanced the cursor (the mail was lost); no accumulated per-command limit
    (memory); capacities with quadratic cost; the first run on a mailbox of >130 thousand messages
    did not start. In `std/image`, the re-prefixing of `image_thumbnail` errors.

- **Seven nyxerp requests from 2026-09-29** `[arco: friccion-nyxerp-0929]`, done by subagents
  in their own worktrees and integrated with a full test battery:
  - **gzip in `std/serve`, on by default**: text responses between 1 KiB and 1 MiB, when the
    client sends `Accept-Encoding: gzip` (with q-values); `Vary`, `Content-Length` in bytes, weak
    ETag, HEAD same as GET, sha256 cache. It changes what gzip-accepting clients see:
    `app_compress(app, false)` turns it off. `std/zip` gains `zip_gzip`/`zip_gunzip`. Test 463, recipe 126.
  - **Limits in `std/serve`**: per-route body limit (`app_max_body`, 413) and a per-origin limiter
    shared by all workers (`app_rate_limit`, `app_route_rate_limit`, 429 with
    `Retry-After`; `app_rate_limit_key` and `rate_key_forwarded_for` behind a proxy). Test 464,
    recipe 127.
  - **`std/rsa`**: verify RSA-SHA256 signatures (v1.5, base64 and PSS) with a PEM public key, for
    signed notices from payment gateways. `EVP_DigestVerify` in `runtime/crypto.c`; in wasm
    `Err(invalid 95)`. Test 465 with vectors from the openssl CLI, recipe 128.
  - **Mutual TLS in the HTTPS client**: `HttpOpts.client_cert_pem`/`client_key_pem`, only for that
    request and validated before opening the socket (same path as `cas_extra`). Sub-suite
    `test_http_mtls.py` with a server that requires a certificate, recipe 129.
  - **multipart in the HTTP client**: `multipart_field`, `multipart_file`, `multipart_build` and
    `try_http_post_multipart`; binary-safe, verified against Python's `email` parser. Test
    467, recipe 130.
  - **`std/expr`**: safe evaluator of formulas with variables, in fixed-point decimals (6), not
    float: `0.1 + 0.2 == 0.3`, `round(2.675, 2) = 2.68`. 1500 random expressions equal to Python's
    `decimal`; same result in wasm. Test 468, recipe 131.
  - **browser fetch and SSE to the local network, with a deadline**: Chrome's `targetAddressSpace` and
    AbortController; the old API does not change (the merge had changed it by accident and it was restored:
    `c3c6a87e`). Wasm test 53, recipe 132. The permission in a real Chrome could not be verified.
  Specs in DRAFT for the large ones (images, IMAP, local network, Android) and, in the nyx-proxy repo,
  the one for domains without restart and ACME.

- **`std/zip`, `std/xml` and `std/xlsx`: read and write `.xlsx` spreadsheets in pure Nyx** (nyxerp
  friction, 2026-09-29) `[arco: std-xlsx]`. An `.xlsx` is a zip with XML inside, so there are three
  modules and the two lower ones are useful on their own. `std/zip`: `.zip` container (`zip_read` via the central
  directory, `zip_writer`) with limits against zip bombs (`ZipReadOpts`). `std/xml`: event-based reader
  and small tree; `<!DOCTYPE` is an error, so there is no XXE or expansion bombs. `std/xlsx`:
  `xlsx_read` yields typed cells (text, number, date, bool, error, empty), with dates in ISO and the
  1900 and 1904 epochs; formulas are not evaluated (the cached value is read) and gaps are `empty`
  cells; `xlsx_write` builds the workbook (text, numbers with fixed decimals, dates, bold, widths,
  merged cells). No `extern "C"`: identical in native and `wasm32-wasi`. The DEFLATE codec
  (inflate, deflate, CRC-32, Adler-32) was moved from `std/pdf` to `std/zip` with `zip_*` names (so as
  not to clash with `std/compress`): a single implementation, and PDFs come out byte-for-byte identical.
  Verified against other readers: 818 cells of a real Excel workbook equal to openpyxl's; what
  `xlsx_write` writes opens in openpyxl; the `.zip` files from `zip_writer` are accepted by `zipfile` and
  `unzip` (`run_zip_verify.sh`, in `make test-stdlib`; `run_xlsx_verify.sh` separately, it needs openpyxl). `test-458..462` and recipes
  123 (zip), 124 (write a workbook) and 125 (read a sheet).

- **First batch of nyxerp's large requests from 2026-09-29** (GO from Ottavio on 2026-09-30),
  done by subagents in their own worktrees, reviewed and integrated with a full test battery:
  - **`std/image`: decode, shrink and crop photos in pure Nyx, identical in native and wasm**
    `[arco: std-image]`. `image_info` (format by signature, dimensions, orientation without decoding);
    `image_decode` of full PNG and of 8-bit baseline JPEG (gray or color, all
    subsamplings, restarts), with EXIF orientation already applied, the ICC profile exposed in
    `Image.icc` without applying it, and 1/2, 1/4 and 1/8 downscaling during decoding
    (`image_decode_scaled`, `image_decode_min`); `image_resize`, `image_resize_fit`,
    `image_resize_cover`, `image_crop` and `image_flatten` (premultiplied alpha). Limits
    (`ImageLimits`: bytes, pixels, side) validated BEFORE reserving memory. Progressive, CMYK and 12-bit
    give `Err(unsupported)` with the output; WebP, GIF, HEIC, AVIF, BMP and TIFF are recognized by signature.
    Verified against Pillow (photos from several encoders, all 8 orientations, resizing).
    The PNG reader moved out of `std/pdf`, which now imports it. The JPEG encoder and the
    one-step thumbnails are still missing (Tasks 5-6). Tests 475-480, wasm 55-56; prototype spike measured.
  - **`std/mime`: read incoming mail** `[arco: std-imap]`: headers with folding, RFC 2047 and
    2231, base64 and quoted-printable, charsets, nested multipart with a depth limit, binary
    attachments, bounces, HTML to text, and thread ids (Message-ID, In-Reply-To, References). Foundation
    of `std/imap` (Tasks 4-6, next batch). Tests 472-474, wasm 54.
  - **`std/smtp`: Message-ID and thread headers** `[arco: std-imap]`: the id is fixed when the message
    is created (previously it changed on every `smtp_render` and there was no way to know the one that went out);
    `smtp_message_id`, `smtp_set_message_id`, `smtp_header` and `smtp_reply_to` (builds
    `In-Reply-To` + `References`; the `Reply-To` header is set with `smtp_header`). `smtp_send`
    rejects with `Err(header)` CR/LF/NUL, invalid names and the headers that the library writes itself.
    `test-stdlib-10`. nyxerp request from 2026-10-01 (help desk).
  - **`tls_upgrade_fd_verified_system`** in `std/tls`: STARTTLS verified against the system store,
    for IMAP (143) and SMTP (587). `std/imap` TLS probe in `make test-integration`.
  - **Android** `[arco: target-android]`: arm64 build probe against the NDK sysroot (spike) and
    the `os_*` layer for bionic: own context switch in aarch64 assembly and
    cooperative `os_thread_timedjoin`/`cancel`.

### Fixed

- **The drop of an `#[affine]` value with `Drop` is per declaration and runs when its block closes**
  `[arco: drop-por-declaracion]`. Silently-wrong: the drop went by name and by function, so in a
  loop each iteration overwrote the same slot and only the last value was released (the rest was lost
  without a warning); a `throw` released nothing; and two homonymous affines were NYX2020. Now the drop is an
  implicit `defer` of its declaration (own slot, pending scope entry with its `try` frame): once
  per declaration, also per iteration and on `throw`. The flag of a returned value is turned off
  before the exits. The function's cleanup section, `%__defer_retval` and NYX2020 are gone.
  Test `tests/ai-first/38`; gotcha `drop-per-declaration`.

- **A `defer` runs only if it was reached, and a `throw` runs the reached `defer`s**
  `[arco: defer-alcanzado-y-throw]`. Silently-wrong: `if b { return 1 } defer {...}` ran the
  `defer` with `b` true, because the cleanup section generated all the top-level ones on
  every exit. And a `throw` skipped all the cleanup. Now the function body is one more scope
  (the `defer`s are generated inline at the exits that reached them) and each `defer`, when executed, pushes
  an implicit `try` frame whose catch runs it and rethrows: the reached ones run, innermost to
  outermost, before the `catch`; a `throw` inside a `defer` does not repeat it. Tests 492 and
  `tests/ai-first/37`; the gotcha `defer-not-on-throw` becomes `fixed`.

- **A closure inside a block can capture the block's variables; a named `fn` in a
  block links** `[arco: closures-capturan-bloque]`. Closures only existed at the top level:
  a lambda in an `if` did not see the `if`'s variables (NYX1002) and a named `fn` in a block did not
  link (clang's `use of undefined value`, with no line). The parser leaves the lambda in its block,
  codegen collects the nested functions of any block and block variables with a unique name
  enter the SharedEnv. What cannot be captured by name (a name repeated in the function, a
  `for` variable, a `match` binding) is NYX1044, never a wrong value. Tests: ai-first
  36 and two error tests; gotcha `closures-capture-block-vars`.

- **`for` over an array literal, over `Array<T>` and over `Map`: three wrong results in the
  same codegen function.** `for q in ["x", "y"]` typed `q` as `int` (`print(q)` showed the
  String's address, with no error); an `Array<T>` element gave SIGSEGV when used, and a `Map` one returned
  `m.size() == 0` silently (both fell into the struct branch, with an extra load). The literal takes
  the common type of all its elements (a mixed one stays untyped); `Array<T>` and `Map`/`Map<K, V>`
  have their own branch. Test `tests/ai-first/35`; gotcha `for-in-element-type`.

- **`defer` is no longer silently discarded outside the function's top level; `return` in a
  `defer` no longer hangs** `[arco: defer-al-cerrar-bloque]`. A `defer` inside a block (`if`,
  `else`, `while`, `for`, `match` arm, `try`, `catch`, `unsafe`), in a nested fn or in a
  lambda compiled, passed `nyx check` and never ran. A `return` inside a `defer` hung
  the program, a `break` did nothing, a `defer` inside another was ignored, and a fn with `defer`
  and a nested fn with `return` did not compile (clang error with no line). Now the `defer`s run, and
  `return`, or `break`/`continue` that leaves the body of a `defer`, is NYX1042; a `defer` in an
  `async fn` is NYX1043. Tests: `tests/ai-first/34-defer-al-cerrar-bloque.nx`, `test-488` to
  `test-491`, `test-nyx1042-*`, `test-nyx1043-*`.
- **`file_write_string("/ruta", "hola")` no longer compiles only to crash later: it is NYX1031** (nyxerp
  friction, 2026-10-09). The file-handle functions (`file_write_string`, `file_write_bytes`,
  `file_read_line`, `file_read_bytes`, `file_seek`, `file_tell`, `file_flush`, `file_close`) take
  the handle from `file_open`; given a `String` path they passed the checker and the binary died with SIGSEGV with no
  message, also losing the output in the buffer. Now the checker rejects it with a hint
  (`file_open` or `write_file`); a handle stored in an `int` still works. `LLM.md` §4 and
  `CAPABILITIES.md` state the type of each argument. New error test.

- **A name redeclared inside a block no longer shadows the outer variable** (nyxerp friction,
  2026-10-04) `[arco: alcance-de-bloque-codegen]`: codegen kept a function's variables
  in a flat map, so a `let q` inside an `if`/`else`/`while`/`for`/`match` arm/`try`/
  `catch`/`unsafe`, the variable of a `for q in ...` or the binding of `Option.Some(q) =>` REPLACED
  the outer one until the end of the function. It compiled, `nyx check` was green (the checker did
  restore it) and the result was garbage or a segfault with a different type, and the inner value with no symptom
  with the same type: `let q: S = S{a:3}; if true { let q: S = S{a:99} }; return q.a` gave 99. Now
  each block is a real scope and when it closes the name goes back to being the outer variable, with its
  value and its type. In addition: a function-level `defer` sees the function's `q` even if the `return`
  leaves from a block that declared another; a closure that captures a function-level variable
  keeps seeing it even if a block declares another with the same name (a lambda returned 801 instead of 707); the checker
  opens a scope in the `try` body and in `unsafe` (a `let` in the `try` was visible in the `catch` and
  rejected valid programs with NYX1014). New diagnostics: NYX1041 (a lambda written inside a
  block uses a name that in that block is another variable; the arc `closures-capturan-bloque` left it
  as a backstop for NYX1044) and NYX2020 (two homonymous affines with `Drop`; retired in this same
  release by `drop-por-declaracion`). Tests: `tests/ai-first/33-sombreado-en-bloque.nx` (13
  cases), 486, 487, `test-nyx1041-lambda-captura-de-bloque` and `test-nyx2020-drop-sombreado`; recipe
  135; gotcha `block-shadowing-restores-outer`.

- **A local `Fn` variable with the same name as a global `fn` was checked against the global's
  signature** (nyxerp friction, 2026-10-04): `let leer: Fn(int) -> int = a.leer; leer(21)` gave NYX1005
  "expected String, got int" if there was a `fn leer(s: String)` in another file, and with equal signatures the
  check passed against the wrong function. Semantic now resolves the name like codegen: the most recent
  variable wins and contributes its own `Fn` signature (also the return type and `it.map(f)`).
  Regression: ai-first 32 and an error test.

- **`std/xlsx`: a number with 3+ decimals written before the first date was read as a date**
  (silently-wrong): the date had the fixed `numFmtId` 164 and collided with that of `"0.000"`. Now every
  custom format takes 164 + its position. Found while reviewing the nyxerp request; regression in test 462.

- **Editing an `include_bytes` file did not recompile its `[lib] modules` library.** The fingerprint
  of `target/nyx-lib` hashed the module's source and its import closure, but not the embedded
  files: `nyx run`/`test`/`build` reused the `.o` and served the OLD content with no error
  (not even `touch` on the `.nx` was enough). Now every fully hashed file adds the path and the sha256 of
  each `include_bytes("…")` it names, including those of non-`[lib]` modules that the library
  inlines. nyxerp friction 20260930-170003; three new cases in `run_lib_modules.sh`.
- **"Verified" STARTTLS verified nothing** (`runtime/tls.c`). `nyx_tls_client_upgrade` with mode
  4 (strict against the system store) fell into the `tls_set_ca_file` context and no branch
  verified it: the handshake accepted any certificate. Now it uses the system context and
  verifies chain and name; a mode outside 0..4 fails closed. Found by the `std/imap` TLS probe
  `[arco: std-imap]`.
- **Review of the batch before integrating** (hostile input: uploaded photos and incoming mail):
  - `std/image`: an SOS of length 2 at the end of the file aborted the process (out-of-range
    read), and each Huffman table of a DHT, when read, built a 65536-entry table with no limit on
    how many the file carries (1 MB of empty tables was ~4·10⁹ writes). Now they are built
    when used. Cases in test 478 `[arco: std-image]`.
  - `std/mime`: `mime_html_to_text` lowercased the entire HTML on every `<style>` (a quadratic
    DoS controlled by the sender), and the trailing `_` of an RFC 2047 Q word was lost
    ("Cotización123"). Cases in test 473 `[arco: std-imap]`.
  - `std/smtp`: `smtp_render`, which is public, wrote the extra headers without validating (injection
    of a `Bcc` from an `In-Reply-To` copied from an incoming mail). Now it replaces CR/LF/NUL with
    spaces and omits invalid or reserved names.
  - The neutral-Spanish guard took the acronym "SOS" (the JPEG marker) for the River Plate "sos".

- **An element of an untyped `Array`, assigned to a field or compared with a String.**
  `c.nombre = xs[i]` stored the element's opaque integer directly in the field, and `f != xs[0]` (the
  element on the right) passed it raw to the comparison: invalid IR that only clang rejected,
  with `nyx check` green, while `s = xs[i]` and `xs[0] == f` did build. Assignment to a field
  now converts with the same code as assignment to a variable (also an int, float or
  struct field), and `==`/`!=` convert the opaque side wherever it is. nyxerp friction 20260930-040018.
  Regression: `test-471`.

- **`m[k]` and `m[k] = v` on a `Map`.** Indexing a `Map` was not implemented: it fell to the
  Array path with a String key as the index and the program did not link (`defined with type 'ptr'
  but expected 'i64'`), also as an argument (`nums.push(m["a"])`) and in a concatenation
  (`"x" + m["k"]`). Now codegen rewrites it to `get`/`insert`, on local and global `Map`s, parameters
  and struct fields. Two more faults came out while testing it: the value type of a
  `Map<String, int>` was deduced from the first type argument (the key), and a `Map<String, float>`
  returned the **bits** of the double as an integer (1.5 → 4.6e18, no error) in `get` and `get_or`; now
  they are reinterpreted with `bitcast`. Closes three filed items in TASKS. Regression: `test-470`; recipe 06.

- **String values of a `Map` are stored whole.** Codegen stored a String in a `Map`
  as `char*` and read it with `strlen`. Four faults with that root: a value with a 0 byte (gzip, raw
  hash, image) came back **truncated with no error** (the gzip cache of `std/serve` received 3 bytes);
  `values()` on a `Map<String, String>` delivered those `char*` as String and the program asked for
  700 GB and died; the opaque path (`get` as an integer) gave garbage; and in global `Map`s `insert` already
  stored the `nyx_string*` while `get` read it as `char*`. Now the whole `nyx_string*` is stored,
  like any other pointer, at the eight codegen sites (literal, methods, globals,
  struct fields, `get_or`). The runtime does not change; since the compiler itself uses the convention,
  the nine fixed-point modules were recompiled in two passes. Cached `[lib]` objects are
  invalidated on their own (the fingerprint includes the compiler). Keys remain `char*`: a key with a
  0 byte is truncated (known limit). Regression: `test-469`, one case per path.

- **`e.code` with Linux errno numbering on all platforms** `[arco: w4-windows]`.
  The MSVC CRT numbers differently from 35 on (and 26): `ECONNREFUSED` 107 instead of 111, and there are
  collisions that misclassified: an unreachable host on Windows came out as `timeout`. New
  `os_errno_canon` (`runtime/os/errno_canon.h`, table by symbolic name, identity on Linux) at a
  single point of the `net.c` boundary: the 18 `*_result` functions become wrappers around their `*_native` body,
  which still sees the native number. `test-374` passes on Windows; new runtime suite
  `test_os_errno_canon.c`. Implemented and measured on the Windows laptop (W4 Task 9).

- **Native socket read and write over IOCP on Windows** `[arco: w4-windows]`.
  win32's `os_ev_read`/`os_ev_write`/`os_ev_cancel` stop being `-ENOSYS`, without changing the `os_ev`
  contract: the read is a zero-byte `WSARecv` plus a non-blocking `recv` on completion (the
  kernel never writes into the caller's buffer, and a cancel loses no data), and the write sends from
  an internal copy. `loop_free` cancels and drains what is pending. `test_os_ev.c` runs in full on
  Windows (110/110) and on Linux (111/111), with two new portable cases (`cancel_lossless`,
  `free_pending`); gate 240/240. Implemented and measured on the Windows laptop (W4 Task 7).

- **Windows timers over IOCP, with a growing table** `[arco: w4-windows]`. win32's `os_ev_timer`/`os_ev_wake`
  stop being `-ENOSYS`: they wait in `GetQueuedCompletionStatusEx` with the timeout of the nearest
  deadline, wake with `PostQueuedCompletionStatus` (coalescing wakes: at most one in flight) and
  the table grows from 256 to 65536 like POSIX's. `event_loop_win32.c` becomes a thin adapter.
  Before, with more than ~72 sleeping goroutines, the rest did not wake on time (fixed table and workers
  busy in the fallback): `test-411` goes from 0/20 to 20/20, and likewise with 1500 goroutines; gate
  240/240. Implemented and measured on the Windows laptop (W4 Task 5); new test
  `tests/runtime-unit/win/test_os_ev_timers_win32.c`. The final verification of the `test-241`
  fix on `main` gave 300/300.

- **Nested `await` on win32: the scheduler no longer reuses the TLS address across `os_ctx_swap`**
  `[arco: w4-windows]`. `nyx_goroutine_join` (with `yield` inlined) computed the address of
  `g_current_worker` once and reused it after each swap; if the goroutine came back on another worker,
  it read the previous thread's slot and swapped to the scheduler of a worker that was running
  something else: two threads on the same fiber, with SEGV, a hang, or the "entry return" abort ("entry retorno").
  `test-241` failed ~7-29% on win32 depending on the machine; on Linux it did not, because the ELF backend re-evaluates the
  address on every use. All reads go through a `noinline` accessor. Diagnosis and patch from
  the laptop (W4 Task 3, spike `2026-09-29-w4-test241-fibers`): 723/723 runs and gate 36/36 on win32.
- **`nyx_goroutine_block_on_fd` no longer leaves a goroutine blocked forever** `[arco: w4-windows]`.
  It ignored the -1 from `nyx_event_loop_add`: with nothing registered to wake it, the goroutine stayed
  BLOCKED and its `join` never returned (on win32 with any fd; on POSIX with an invalid one). Now it undoes
  the state and returns -1. New test in `test_scheduler.c`, with an `alarm` that turns the hang
  into a failure.

- **`s[i]` on a `String` reads the correct character.** `codegen_index` did not distinguish the String
  receiver and fell into the Array get (same in-memory shape), which reads 8 bytes at position `i*8`:
  `"abcdefghijklmnopq"[1]` gave `i` instead of `b`, `[2]` gave `q`, and `let c: int = "abc"[0]` gave
  6513249, all with rc 0. `[0]` toward a `char` came out right by chance. Now it is byte `i`, just
  like `s.charAt(i)` (and out of range aborts the same way). Found while measuring NYX2019 false positives.
  Regression: `test-457`, which compares against `charAt` in eight contexts (annotated let int/char, unannotated,
  comparison with char and with int, loop, computed index, builtin argument). Gotcha
  `string-index-byte`.

- **`nyx archivo.nx` shows compiler warnings.** On successful compilation the wrapper threw away the whole
  log, so no `⚠` reached the user on that path (not even NYX2019, which in 0.35.x is
  a warning precisely so that it is seen before becoming an error in 0.36.0); `nyx build` already forwarded them from
  the arc compilacion-separada. Found while testing the installed 0.35.0. Guard in
  `run_tooling_gates.sh` (`make test-ai-first`), with a positive control: a program without warnings
  shows none.

### Changed

- **NYX2019 is an error also on the `let` to an integer**: `let n: int = fila[0]` with an element the
  compiler knows is `String` (annotated `Array<String>` or inferred from its literal, or `split()`) compiled and
  stored the String's ADDRESS as if it were the number. In 0.35.x it was a `⚠ warning`, one release
  before the rejection (rule 7 of `docs/VERSIONING.md`); since 0.36.0 compilation fails with the
  function and the variable. Convert explicitly (`string_to_int`) or declare it `String`. The cases
  `nyx2019-let-int` and `nyx2019-split-int` of the error runner now expect the error; the
  `nyx archivo.nx` warnings guard now uses the "untyped Array" warning.

- **New `defer` behavior: it runs when the block that contains it closes**
  `[arco: defer-al-cerrar-bloque]`. On falling off the end, on `return`, on `?` with Err, on `break` or
  `continue`; LIFO within the block and from the inside out; in a loop body, once per
  iteration; the `return` value is evaluated before the `defer`s and the `defer` body sees the
  values on exit (Zig/Swift semantics, not Go's). Measured with the full corpus (repo,
  nyxerp, stacks): 16 `defer`s, none outside the top level, so no known program
  changes result. A `throw` that leaves the function also runs the reached `defer`s (arc
  `defer-alcanzado-y-throw`, in this same release).
- **New block-shadowing behavior: after the block the outer variable is read**
  `[arco: alcance-de-bloque-codegen]`. A program that relied on reading or assigning, after the block,
  the inner variable that had shadowed the outer one now uses the outer one. Measured with
  `NYX_SCOPE_AUDIT=1` (in the checker: reports every use of a name where checker and codegen saw different
  variables) over 1286 files of the repo, the nyxerp ERP and the stacks: zero real cases,
  so no known program changes result. To review your own code:
  `NYX_SCOPE_AUDIT=1 nyx check archivo.nx` (lines prefixed with `scope-audit:`). `let x = x + 1` in the
  same scope still replaces, as always.

- **Goroutine context switching is own assembly on Linux aarch64** (previously only
  opt-in): glibc's `swapcontext` does one `rt_sigprocmask` per switch, ~2230 ns per yield against ~175
  ns in asm (64 goroutines, 1 worker). Validated with the runtime suite and 23 goroutine programs on
  both paths; `-DNYX_OS_CTX_ASM=0` goes back to ucontext. macOS and x86_64 stay on ucontext.
  Decision by Ottavio `[arco: target-android]`.

## [0.35.0] — 2026-09-29

> **MINOR because it rejects code that used to compile** (`[arco: release-0-35]`): NYX1036/NYX2010 without the
> 0.34 transition, and NYX2019 (an error on `let` to `bool` and on assignment; a warning on `let` to an
> integer, which becomes an error in 0.36.0). It also includes everything accumulated since 0.34.0: `nyx exec`,
> the public mirror with `runtime/wasi/`, crypto on wasm32-wasi, `HttpOpts.cas_extra`, `arena_persist`
> phase 1, and the fixes below. Verified with `make test-all` on the cut; the only failure is
> `test-wasm-29-arena-autocancelacion` under the node shim, which is intermittent and already filed (LOW): it
> fails the same way with 0.34 (5 runs out of 10 against 4 out of 10).

### Changed — rejects code that used to compile (hence 0.35.0)

- **NYX1036 and NYX2010 without a transition: they are errors** `[arco: release-0-35]`. In 0.34 the cases
  that showed up only because of the resolver fix of 2026-09-24 (closing a transitive import reopens the
  parent module, and up to 0.33.x that stretch was attributed to the main file) came out as
  `⚠ warning` and compiled. Now they are errors like any other: add `pub` to the function or qualify
  the call. Everything that sustained the 0.33.x attribution in semantic and codegen was removed, and
  `resolve.nx` no longer emits `//#module-reabre`. Consumers measured beforehand: nyx-proxy had no cases, nyxerp
  was resolved on its live line, and nyx-queue was fixed in its repo (`mq_ensure_queue` becomes `pub`).
- **NYX2019: an Array element that the compiler knows to be `String` does not fit into an `int` or `bool`
  variable** `[arco: release-0-35]`. `let n: int = fila[0]` over `["42"]` stored the String's ADDRESS as if
  it were the number and came out as 0; with `bool`, and in the assignment `n = fila[0]`, it was invalid IR
  at link time, reported as a compiler bug. `let` with `bool` and every assignment are **errors**
  from now on (they never linked, so nothing that worked is broken). `let` to an integer
  that is not `bool`, which did compile with the wrong value, is a **warning** in 0.35.x and becomes an error in
  0.36.0 — rule 7 of `docs/VERSIONING.md`: what is going to reject code warns one release earlier.
  Convert with `string_to_int` or declare `String`. It complements NYX2014, which acts at runtime
  when the element type is not known. Regression: three errors (`let bool`, assignment to `int` and
  to `i32`), two warnings that compile (`let int`, `split()`), the positive control, and `test-456`.

### Added

- **`nyx exec [--version <id>] -- <cmd>`: a single toolchain version for a whole suite**
  (nyxerp, 2026-09-29). The wrapper pins the version per process, so a suite that launches many
  standalone `nyx test` runs resolved it in each one, and a `nyx update` in the middle split it between two
  compilers: the whole thing had to be relaunched. `nyx exec` runs the command with `NYX_HOME` pinned to the
  real path of the version (the active one, or one installed with `--version`) and passes the version lock
  down to it, so pruning does not delete it while it runs either. And `install-local`/`nyx update` warn if the
  version they replace is in use. `CLAUDE.md` rule 3 said that the foreign suite ended with its
  version; that held only for a process tree. Guard: `make test-toolchain` (cases 5-6, with a
  positive control: the same suite without `exec` gets split).

- **`CAPABILITIES.md` says which builtins do not exist on wasm32-wasi** (request from nyxerp,
  2026-09-27): each one carries "· *does not exist on wasm32-wasi*" (original: «· *no existe en wasm32-wasi*»).
  `std/builtins.index` adds a sixth field (`no-wasm`) that the generator derives from `wasm_forbidden_builtin`
  and from the `codegen_target_guard` calls named after a builtin (atomics, `run`). `run_wasm_builtin_symbols.sh`
  checks that mark against what wasm ACTUALLY blocks —it compiles one probe per builtin— and fails if
  they differ: it was this cross-check that found the four that did not come from the list. An old
  five-field index still works.

- **Hashes, HMAC and PBKDF2 on wasm32-wasi** (friction from nyxerp, 2026-09-27). `sha256`,
  `sha256_raw`, `md5`, `hmac_sha256`, `hmac_sha256_raw` and `pbkdf2_hmac_sha256` used to be "not supported
  on target 'wasm32-wasi'": `crypto.c` did not make it into the wasm runtime because it included OpenSSL, and an
  offline POS had to ask WebCrypto for PBKDF2 from JavaScript. Hashes and HMAC were already our own C;
  PBKDF2 becomes our own too (previously `PKCS5_PBKDF2_HMAC`), with the HMAC over stack buffers —on
  wasm without an arena nothing is freed, and 80,000 iterations allocating on each one came to several MB—.
  Same bytes as OpenSSL: RFC 7914 vectors and two cases pinned against OpenSSL before the change
  (`test_crypto.c`). The OpenSSL part (Web Push) stays behind `__wasi__`. Regression:
  `test-wasm-51-cripto` (wasmtime and browser shim).

- **`HttpOpts.cas_extra`: add certificates to ONE HTTPS request** (friction from nyxerp,
  2026-09-27). A site that sends an intermediate that does not match its leaf does not verify against the
  system CAs; since the store separation of 2026-09-14, `tls_set_ca_file` no longer reaches the
  HTTPS of `std/http`, and `SSL_CERT_FILE` replaces instead of adding, for the whole process and only
  before the first https. `cas_extra` (PEM content, one or several) is added to the system CAs
  only for that connection (`SSL_set1_verify_cert_store` over a store owned by the SSL), with the
  chain and the name verified all the same; the rest of the process does not notice. A PEM with no readable
  certificates = `Err(invalid, 22)`. At low level, `try_tls_connect_cas` (`std/tls`) and
  `nyx_tls_connect_result_cas` (runtime). Regression: sub-suite `test_http_cas_extra.py` (test PKI
  with the wrong intermediate: 5 cases, including "does not leak into the next request" and
  "the name is still verified"). Recipe `122-https-intermedio-extra`.

- **`arena_persist` closes its phase 1** `[arco: wasm-arena-persistir]`:
  - **NYX1039 in semantic**: persisting a struct, a `Map`, an `Fn` or an `Array<Struct>` is
    rejected in `nyx check`, not only when generating code; semantic also sees the type of an Array's
    ELEMENT, which codegen does not know.
  - **Nested arrays**: an Array stored inside another (literal, `push`, `a[i] = x`) now carries the
    `Array` tag instead of none, and `arena_persist` deep-copies it (before, it aborted). Typed
    reads that clash with that tag —reading an Array as `String` or `float`— go from
    silently returning garbage to aborting with a diagnostic; as `int` they still give the raw value.
    Verified: the compiler with the new tags compiles itself without false aborts
    (fixed point in three passes).
  - **On native it is the identity** (Ottavio's decision): there is no per-event arena and the GC
    already keeps the value, so the same code runs with `nyx test` and on wasm without per-target branches.
    Before, it was a target error.
  - Documentation: SPEC (NYX1039), LLM.md §wasm, gotcha `wasm-arena-closure-env`, recipe
    `121-arena-persist-wasm`. Regression: 3 negative cases and 1 positive in `tests/compiler/errors/`,
    and wasm test 36 adds a nested array with computed integers (10,000 events, arena on).

- **`nyx update --sync-docs` no longer overwrites what a project wrote in its `AGENTS.md`.** Until
  now it reseeded the whole file and only saved a `proyecto:inicio`…`proyecto:fin` block
  that the project had to know about; nyxerp lost its "Project rules" several
  times that way. Now nyx replaces ONLY its own block, between the lines `<!-- nyx:inicio -->` and
  `<!-- nyx:fin -->` (seeded by `nyx init`); what is outside belongs to the project, and its own content goes
  on top, where the agent reads it first. A previous `AGENTS.md` is migrated by `## ` sections:
  the one the template does not recognize as its own is kept verbatim on top, and the sync reports what it
  kept and what it replaced (with `.bak`). `nyx sdd init` puts its trigger above the block.
  Logic in `nyx_build agents-merge` (`agents_merge`, compiler/build.nx), the same for `init`
  and `--sync-docs`. Regression: scenarios (g)–(k) of `run_sync_docs_migration.sh`; on a
  copy of nyxerp's real `AGENTS.md`, the previous wrapper left 0 of its rules and the new one
  keeps them byte for byte.

- **Send timeout on the HTTP servers and header timeout in `http_serve`/`http_serve_mt`.**
  `NYX_HTTP_SEND_SECS` (30 s by default) bounds how long the writing of a response can stay stuck
  without progress: a client that stopped READING a large response held its `std/serve` worker
  forever. It is per write, not total (a slow download that makes progress is not
  cut off). The two `std/http` servers also used to read with no timeout: a connection that dripped the
  header (slowloris) silenced `http_serve`, which has a single thread; they now use the `std/serve`
  parser with a timeout (`NYX_HTTP_HEADER_SECS`, 408 and close). Runtime:
  `os_sock_set_send_timeout` (`SO_SNDTIMEO` only) and `nyx_tcp_set_send_timeout`. Regression:
  new sub-suite `test_http_plazos.py` (8 checks, red with the previous `std/http`) and 1 check
  in `test_serve_std_keepalive.py` (22 → 23).

- **`std/serve` announces its keep-alive timeout**: every response with `Connection: keep-alive` carries
  `Keep-Alive: timeout=N` (N = `NYX_HTTP_KEEPALIVE_SECS`). A proxy with a pool that did not know this
  reused the connection already closed by the server, and a POST —which is not retried— got
  a 502 (nyxerp → sumain2, 2026-09-25). The proxy side (discarding dead or
  expired connections before writing) is an assignment to nyx-proxy. Regression: 1 check in
  `test_serve_std_keepalive.py` (21 → 22).

### Fixed

- **An `assert` message can be an opaque value** (friction from nyxerp, 2026-09-17).
  `assert(arr[0] == "x", arr[0])` with an `Array` returned by a fn did not link: the message arrived
  as `i64` at `nyx_string_to_cstr`, which wants `%nyx_string*` (invalid IR), with `nyx check` green.
  The builtins-arg-opaco arc had converted the builtins' arguments, but `assert`
  is a statement and was left out. The three sites of `codegen_assert` that evaluate the message (generic
  path and the `int == int` and `String == String` branches) now go through `codegen_arg_str`. The filed report
  said it worked in `main()`; measured today, it failed the same. Regression: `test-455` (one line per site,
  each one broke the link on its own).

- **`nyx update` left the version without `runtime/wasi/` and nothing compiled to wasm32-wasi** (friction
  from nyxerp, 2026-09-29). The public mirror —which `nyx update` builds from— never had that
  folder: `sync_to_public.sh` copied `runtime/*.c`, which does not descend into subfolders, and only
  `runtime/os/` was listed explicitly. It went unnoticed because development installs come from
  `make install-local`, which does copy it. The sync now copies the whole folder and does not commit if
  `main_shim.c`, `nyx_arena.c`, the `gc.h` files or `os_wasm.c` are missing. Verified with `install.sh` from
  the mirror in an isolated HOME and with a real `nyx update`.

- **`.to_string()` on `char` and on fixed-width integers** (`i8`, `u8`, `i16`, `u16`, `i32`,
  `u32`) aborted with NYX2002. `char`, `i8` and `u8` share `i8` in LLVM: the helper now receives the Nyx
  type of the receiver, so a `char` gives the character ("A") and a `u8` the number ("200"), and
  the sign decides `sext`/`zext`. The NYX1022 catalog adds `char` (only with an annotation, like the
  other scalars). `codegen_method_call` stack unchanged (helper forms without literals).
  Regression: `test-454`.

- **NYX1022 also on `int`, `float` and `bool`.** Semantic's per-type method catalog
  covered String, Array, Map, Option and Result; without a catalog, a scalar approved any method, and
  `x.contains("a")` with `x: int` went down in codegen through the arrays branch (an `i64` can be an
  untyped Array): invalid IR with `nyx check` green. On a scalar only `to_string` exists.
  The check applies only to variables DECLARED with a scalar annotation (`var x: int`): an inferred
  scalar can lie (`[1, "dos"]` is inferred as `Array<int>` and `a[1].contains("d")` is legitimate,
  test-323), so there the runtime tag still decides. Verified with no false positives against
  all the compiler modules with semantic active, the real nyxerp, and the stacks. `char` is left without a catalog (its `to_string` is missing; filed in TASKS).
  Regression: `test-nyx1022-metodo-sobre-int` (test-errors 347 → 348).

- **`let x: T = <scalar of another width>` converts to the annotated type.** `let s: int = w + h` with
  `w`/`h` of type `i32` stored an `i32` in a variable declared `int`: the following `.to_string()`
  failed in codegen with `nyx check` green, and the arithmetic stayed at 32 bits. Assignment
  already converted; `let` did not. Integers among themselves and `float`/`f32` among themselves; an annotated
  `bool` is not truncated. Regression: `test-452`.
- **A method on a primitive `const`** (`K.to_string()`, local or imported) gave "NYX2002: method
  'to_string' is not available on the global 'K'": an int/float/bool const is inlined and is not a
  variable, so it fell into the globals branch. Now it is materialized as a local variable and
  follows the normal path; the Map trio (`contains`/`insert`/`get`) still gives NYX2007 on a
  const. Regression: `test-453`. Along the way it was filed that the same trio on an `int` VARIABLE
  gives invalid IR with no diagnostic (a previous bug). The generic "method not available on
  this receiver" error (the catch-all of `codegen_method_call`) carried no code: it is now NYX2002,
  like the one for globals — a nonexistent method on a const still gives NYX2002.
- **Internal:** `interfaz_de` (the per-interface fingerprint of `[lib]`, `compiler/build.nx`) compares
  against `char` literals instead of ASCII codes, now that the bug that forced it is fixed.

- **Toolchain: a new version no longer inherits the active one's `.fijada` mark.** `install-local`
  builds the new version by copying the active one, and if that one was pinned (today, nyxerp's
  production one) the copy carried the mark along: the new version ended up pinned without anyone asking, and
  pruning would never delete it. `nyx_tc_publicar` removes the mark before publishing. Guard:
  `run_toolchain_versions.sh` (4b), red without the fix.

- **An opaque value can be passed directly to any builtin** `[arco: builtins-arg-opaco]`. An element of an
  untyped Array (`get_args()[i]`, an Array returned by a fn), `m.get(k)` or the return of a signature-less `Fn`
  reached the builtins as `i64`, and nobody converted it:
  `read_file(args[2])` went down to `call @nyx_read_file(i8* %<i64>)` —invalid IR that clang rejected
  at link time, with `nyx check` green—. Measured: 76 of 87 builtins with a pointer parameter
  (files, environment, crypto, regex, network/TLS, mutex/channels/condvar/rwlock, `panic`, …). A single
  helper (`codegen_arg` and its four forms, in `compiler/codegen.nx`) converts the argument to the type
  that the handler already declares: `inttoptr` towards a pointer, `ptrtoint` towards an `i64` slot (so
  `channel_send(ch, <String>)`, which did not link either, works). The four forms do not carry the type
  as a literal so as not to bloat the frame of `codegen_call_expr` (measured: +5.4 KB per level with the
  literal; with the forms, within the ceiling). New guard: `run_builtin_arg_opaco.sh` (in
  `test-ai-first`; 76/87 red with the previous compiler), and `test-451` checks the result,
  not just the IR (sha256, setenv/getenv, write/read_file, a String through a channel, a mutex taken out of
  an Array). Closes two TASKS entries.

- **`std/postgres`: the pool is thread-safe** (friction from nyxerp, 2026-09-27). With
  `std/serve` and 16 threads sharing one `pg_pool_new`, the server hung in 3 of 6 runs;
  with 8, it died with "Index 0 out of range" (original: «Índice 0 fuera de rango»). `try_pg_pool_get` looked for a free slot and marked it
  in use in two steps without a lock: two threads took the SAME connection and mixed the protocol
  on one socket. `PgPool` now carries a mutex (field `mu`) taken only for the slot state,
  never during I/O (connecting, the ROLLBACK of `pg_pool_put`, closing). Regression:
  `tests/postgres/09-pool-hilos.nx` (16 threads × 300 queries over a pool of 4, each response
  checked against its thread): with the previous pool it fails 4 of 4 runs, with the new one it passes 9 of 9.

- **`std/serve`: an idle connection that times out with a request already arrived is served, not
  reset.** The parking sweep (`runtime/net.c`) closed on timeout without checking whether the
  socket already had a request that the event loop had not yet seen; closing with unread data
  makes the kernel send an RST, and the client saw ECONNRESET on a request that the server did receive. Now
  the expired ones with data are handed to the workers. It came out of analyzing nyxerp's load test (ECONNRESET only under
  saturation); the data point mostly to the keep-alive race of the generator itself, so this is a hardening, not the
  measured cause. Deterministic regression with a `-DNYX_RUNTIME_TESTING` hook (parking thread
  held still): `test_http_park_vencida_con_pedido`, red without the fix (the client receives ECONNRESET).

- **Assigning an opaque value to an already declared variable converts it to its type** (nyxerp friction
  20260925-090024). `let x: S = xs[0]` worked, but `var s: S = …` + `s = xs[0]` emitted
  `store %S %<i64>`: invalid IR, `nyx check` silent and the link rejected by clang. The
  conversion of the opaque value (`xs[i]`, `m.get(k)`, return of a signature-less `Fn`) lived inline
  in `codegen_let` and assignment had a partial copy (only `String` and `Array`); now
  both use `coerce_opaque_i64` — struct, enum, `Map`, `bool`, `char`, narrow integers, float,
  `Array<T>`, `Fn(...)` — and `n = m.get(k)` on a declared `int` does the `ptrtoint`.
  Regression: `test-450-asignar-valor-opaco-a-var-declarada` (9 type families).
- **`std/serve`: `HEAD` no longer contaminates the keep-alive connection.** A `HEAD` fell to the 404 and the
  404 went out **with a body**; a proxy that reused the connection (nyx-gateway) read those bytes
  as the start of the next response and returned a **502** to another user — seen in
  production at serve.nyxlang.com on 2026-09-25. Now a `HEAD` without its own route uses the `GET`
  route of the same path (also in mounted routers; an explicit `HEAD` route wins) and every
  response to a `HEAD` goes out without a body with the `GET`'s `Content-Length` (RFC 9110 §9.3.2); an
  `sse_open` does not open the channel on a `HEAD`. Regression: 8 new checks in
  `test_serve_std_keepalive.py` (`HEAD` + `GET` pipelined on the same connection; 13 → 21).

## [0.34.0] — 2026-09-25

A big release, driven almost entirely by friction from nyxerp (an ERP written in Nyx) ahead of its first
production deployment (Sumain, 2026-09-26). The highlights:
- **`[lib] modules` ready for real projects**: every import form, transitivity, type checking identical to
  a build without `[lib]` (the importer reads the whole module; codegen declares), `<module>__<fn>` names,
  and recompilation by INTERFACE (a comment in a central module: 1 module, not 105). The nyxerp suite:
  1,566 s → ~366-431 s.
- **Toolchain with side-by-side versions** in `~/.nyx`: installing no longer swaps the compiler under a
  running suite; `nyx update --version <rev>` returns to an installed revision instantly; `.fijada`
  (pinned) versions that are never pruned.
- **New stdlib**: `std/pdf`, `std/barcode` (Code 128, EAN-13, QR), `std/browser_serial` (Web Serial),
  LISTEN/NOTIFY in `std/postgres`.
- **`std/serve`**: an idle keep-alive connection no longer holds a worker; idle and header timeouts.
- **Tooling**: automatic precompiled runtime (`nyx build` 9.9 s → 1.0 s), CAPABILITIES by stdlib
  signature, `nyx check` without the LSP protocol on screen, compiler fingerprint in `nyx test`.
- **wasm**: a guard checks every builtin against the wasm runtime (25 cases fixed or given a clear
  error).
- **Transition**: calls to a private fn of another module (NYX1036) and the ambiguities (NYX2010) that a
  resolver bug hid up to 0.33.x remain a WARNING in 0.34.0 and become errors in **0.35.0** (kept for one
  more cycle so as not to break other people's builds on the eve of production).

### Fixed
- **Shared toolchain safety** (nyxerp friction `20260924-020001-team-4`): `nyx update --help` actually
  updated (every unknown argument fell through to the update); now `--help`/`-h` show help, `--check` only
  queries, and an unknown option is an error (rc 2). `nyx update` takes the EXCLUSIVE toolchain lock and
  `nyx check/vet/fmt` and `nyx file.nx` take the SHARED one (with a warning and `NYX_LOCK_WAIT`). `nyx test`
  prints the compiler fingerprint and warns if it changed during the run.
- **CAPABILITIES.md is regenerated when the stdlib changes**, not only when the version number does: that
  is why the nyxerp index did not list `std/smtp` and they reimplemented it by hand.
- **`[lib] modules` with the import form of real projects** (nyxerp friction
  `20260924-040001-team-1`): `import "src/x"` without braces —the form used by `nyx init` and by 3.372 of
  nyxerp's 3.373 imports— did not cross the boundary (NYX1002 on every call). Now declaring a module in
  `[lib]` does not change which names are visible: every import form behaves as if inlined, transitivity
  included, and `struct`/`enum` without `pub` travel too. Library fns are emitted as `<module>__<fn>`
  just like inlined ones (two libraries can have homonymous fns). Also fixed in the declaration signature
  reader: the arrow of an `Fn(...) -> T` parameter was taken for the return arrow, a multi-line signature
  silently lost its return type (`void`), and the generic return type (`Result<T, E>`) was truncated. If
  a module uses a fn it does not import, `nyx build` says so with a note and the missing import. Verified
  on the real nyxerp: 150 modules in `[lib]` compile and link; `make test-lib-real` watches over it.
- **Homonymous privates in two modules overwrote each other depending on import order** (nyxerp friction
  `20260924-010014-team-1`): the resolver closed an inlined transitive import by returning to the main
  file, so everything the parent module declared afterwards was attributed to the program. Now the close
  reopens the parent module. The same bug switched off NYX1036/NYX2010 in those stretches: the cases that
  show up only because of the corrected attribution come out as a **warning** (they compile, rc 0) until
  the next minor version. `std/url` and `std/web` share the `url_decode` of `std/percent`, which is new.
  `test-439`, `test-440`, +4 cases in `test-errors`.
- **`std/serve`: an idle keep-alive connection no longer holds a worker** (nyxerp friction
  `20260924-200001-team-1`): with N threads, N browsers sitting idle between clicks left the server
  unresponsive to EVERYONE. After responding, the worker stayed blocked reading the next request with no
  deadline. Now the connection is parked in the runtime event loop (like SSE) until another request
  arrives. Limits: `NYX_HTTP_KEEPALIVE_SECS` (15 s of inactivity) and `NYX_HTTP_HEADER_SECS` (10 s for the
  complete header: 408 against slowloris); `serve_idle_connections()`. 13 new E2E checks (6 fail with the
  old code), recipe 120.
- **A private fn of a `[lib]` module competed with the importer's own** (regression from the previous
  delivery, nyxerp friction `20260924-220014-team-1`): NYX2010 «AMBIGUA» (AMBIGUOUS) in 8 test files. A
  foreign private no longer beats a visible one; `nyx test` attributes a test file to its module only if it
  is in `[lib]`. A toolchain version with `.fijada` is never pruned.
- **Five old bugs**: `import { K }` of a `const` gave NYX1013; the visibility of `const`s depended on the
  order of the imports; assigning `charAt()` to a fixed-width `var` emitted invalid IR; three `.node_type`
  reads on Arrays in the parser itself compiled to 0 silently (the `E.V(a, b)` patterns never came out as
  `match_pattern`; that catch-all now aborts with NYX2007); and `try_tcp_read_timed` did not drain the
  per-fd buffer first. `test-447..449`.
- **`std/postgres`: notifications that arrived during a query were dropped** (nyxerp friction
  `20260924-180024-team-1`). Now they are stored on the connection and delivered by the next wait. New
  LISTEN/NOTIFY: `try_pg_listen`, `try_pg_unlisten`, `try_pg_notify` and `try_pg_wait_notifications`
  (with a timeout), in plaintext and with TLS. The real-time bus between several processes on top of
  PostgreSQL, without Redis; together with the SSE of `std/serve` it closes the case. `std/net`:
  `try_tcp_read_timed`. `test-446` (fake server), `tests/postgres/08` (real PostgreSQL), recipe 119.
- **`[lib]` recompiles by interface, not by content** (nyxerp friction `20260924-150024-team-1`): a
  comment in a central module recompiled 105 of nyxerp's 171 modules (216 s); now 1 (22 s). For each
  imported library the fingerprint looks at its signatures, types, constants and globals, not the bodies
  or the comments.
- **`[lib]` no longer has a type hole at the boundary** (nyxerp friction `20260924-150024-team-1`): a
  `String` where an `int` was expected, when calling a fn of another library, passed `nyx build` green and
  arrived as the pointer of the text printed as a number. The importer now reads the full source of each
  `[lib]` module (type checking is identical to a build without `[lib]`, by construction) and codegen emits
  their fns as `declare` from the AST, with the exact signature. The hand-built interface was removed
  (synthetic imports, injected types, signatures read from the text). A library's globals are still
  initialized by the program, in order, as with inlined ones (guard in `run_lib_modules.sh`).
- **Toolchain with side-by-side versions** (nyxerp friction `20260924-020001-team-4`)
  `[arco: toolchain-atomico]`: `~/.nyx` keeps each complete version in `versions/<id>/`, and
  `current`/`active` say which one is active; the entries at the root are links, so the usual paths
  (`~/.nyx/bin`, `~/.nyx/VERSION`) keep working. `make install-local` and `nyx update` assemble the new
  version separately and activate it with a `rename`: a suite in mid-run carries on whole with the version
  it started with, installing no longer waits for anyone, and a failed update does not leave the
  installation broken. `nyx update --version <rev>` returns to an already installed revision instantly
  (415 ms). Pruning (`NYX_KEEP_VERSIONS`, 3) never deletes a version in use. The first installation with the
  new toolchain migrates the flat layout on its own. `make test-toolchain`.
- **`nyx check` shows only the diagnostics**: it dumped hundreds of `SYM:`/`DEF:`/`END` lines of the LSP
  protocol even when the file was healthy. The protocol is still available with `--lsp`. And after a
  NYX1040 (the same `struct` in two modules) the cascade of NYX1017/NYX1032 against the first definition no
  longer appears; it sent people looking for the error where it is not.
- **No builtin dies in wasm-ld with «undefined symbol»**: `string_from_bytes` (and with it
  `base64_decode`) did not link on wasm32-wasi because its runtime lived outside `wasm.srcs`. A new guard
  (`run_wasm_builtin_symbols.sh`, in `make test-wasm`) checks every builtin against the wasm runtime and
  found 25 cases. The pure-C functions were moved to portable units; those that depend on processes,
  network, signals or OpenSSL give a clear error with file and line. `test-wasm-50`.
- **A mention of `compiler/` in a comment or string removed the prelude**: `println` undeclared. Now only
  an `import "compiler/..."` or the `// nyx:sin-prelude` marker counts. `test-435`.

### Added
- **Automatic precompiled C runtime** in `~/.cache/nyx/rt/` for `nyx build` and `nyx test` (content-keyed;
  `NYX_NO_RT_CACHE=1` turns it off): `nyx build` 9.9 s → 1.0 s, one `nyx test` file 9.7 s → 1.2 s,
  without configuring anything.
- **`std/barcode`** (nyxerp friction `20260923-210010-team-1`) `[arco: std-barcode]`: Code 128 (sets B/C
  chosen automatically), EAN-13 (computes or validates the check digit) and QR versions 1-10 with levels
  L/M/Q/H (`qr_matrix`), in pure Nyx and with wasm parity. The QR is verified against the standard's
  published vectors and against an independent decoder written in the test. `test-436..438`,
  `test-wasm-42..44`, recipe 116.
- **`std/browser_serial`** (nyxerp friction `20260924-020001-team-2`): Web Serial with `await` in wasm for
  point-of-sale and fiscal printers (`serial_request_port`, `serial_open`, `serial_write`, `serial_read`
  with a timeout, `serial_close`). Bytes cross as `Array<int>`. Without Web Serial (Firefox, Safari, no
  HTTPS) it gives an `Err` of kind `io`. WebUSB is left for a phase 2. `test-wasm-41` (with a mock),
  recipe 117.
- **`std/pdf`** (nyxerp friction `20260924-020001-team-1`) `[arco: std-pdf]`: PDF in pure Nyx, also in
  wasm. Sizes letter, A4, half letter and free width; positions in mm from the top left. Text with the
  standard fonts and WinAnsi (accents, ñ, ¿¡, €), with `/Widths` and `pdf_text_width` to align amounts.
  Lines, rectangles, JPEG (progressive too, with EXIF orientation) and PNG (alpha in SMask). Verified
  with strict pypdf, pdfminer and Chrome's PDF engine (pdfium), renders inspected by eye.
  `run_pdf_verify.sh` (optional). `test-441..445`, `test-wasm-45..49`, recipe 118 (an invoice).
- **CAPABILITIES.md indexes `async fn`s**: `std/browser_idb` and `std/browser_serial` did not appear.
- **DRAFT specs** for approval: `std/pdf` and atomic toolchain (side-by-side versions).

### Fixed (earlier)
- **NYX2010 also in `nyx check`** (nyxerp friction `20260923-210010-team-3`): an unqualified call to a fn
  that exists in two imported modules only came out at `nyx build` (in nyxerp, 3.5 minutes after a green
  `check`). The checker already detected the ambiguity but only switched off the signature check.
  Resolving by arity when it differs remains an open design decision.
- **`json_parse` of a `\uXXXX` escape trapped in wasm** («unreachable»). Cause in codegen: an i64 argument
  was not truncated to the width of a `char`/i8/i16/i32 parameter; natively it went unnoticed.
  `test-wasm-40`.
- **Linear `json_stringify`** (nyxerp friction `20260923-210010-team-2`): writing a 32 KB text went from
  504 ms to 0.66 ms — it used to grow with the square of the length. A single `StringBuilder` walks the
  tree and the stretches without escapes are copied in one go.
- **`"".trim()` under the wasm arena returned length 1 or 2** (nyxerp friction `20260923-100024`, it ended
  in «memory access out of bounds»). The cause was not `trim`: the empty String that the whole runtime
  shares was born in turn memory if it was requested for the first time during an event, and the arena
  recycled it. It affected `trim`, `repeat(0)` and the ~200 `nyx_string_from_cstr("")` calls in the
  runtime. Now it is a static object. `test-wasm-39`.
- **`json_parse` in wasm: 5.000 records from 6.3 s to ~0.15 s in node and from 235 to 35 MB** (nyxerp
  friction `20260923-100024`). The persistent region requests memory in geometric blocks (64 KB → 8 MB)
  instead of growing the wasm one page at a time, and `parse_string` copies by stretches instead of
  concatenating byte by byte (quadratic). What remains (~18 B per byte of JSON) is the size of the tree.
- **Two `struct`s or `enum`s with the same name in different modules: NYX1040** instead of «redefinition
  of type» over a temporary file (nyxerp friction `20260923-160005`). It shows up in `nyx check` and in
  the build, naming both files and lines. Two identical `enum`s are accepted (they compile today). The
  `struct`/`enum` node now carries the line of the NAME, not that of the closing `}`.
- **wasm: a global Array or StringBuilder that grew during an event was left pointing at turn memory**
  `[arco: wasm-arena-persistir]`. With the arena on, the growth `realloc` allocated the new block in the
  arena, which is recycled when the event ends: 1.000 `push`es of integers to a global gave a garbage sum.
  Now every persistent block carries a mark in its header and `realloc` preserves the region of origin
  (O(1), without touching alloc/reset/pin). `test-wasm-38`.
- **Computed integers carry a tag in the Array** `[arco: wasm-arena-persistir]`: before, only literals
  did. The evidence is the shape of the AST (arithmetic, `length()`, explicit `: int`), never the inferred
  type. Visible effect: `a.push(n * 3)` read as a String goes from SIGSEGV to an orderly abort.
- **The compiler no longer runs out of stack on long expressions: from 52 to ~2.400 operands with the
  default stack** `[arco: pila-del-compilador]`. The cause, measured with `clang -fstack-usage`: the
  toolchain is linked at `-O0` and each level of an expression stacked ~151 KB of codegen frames. Three
  pieces: (1) `codegen_binop` and `codegen_expr` split so that the recursion goes through small frames
  —a pure refactor, identical IR in 524 files— (151 → 23 KB per level, ceiling 322); (2) SROA over the
  seeds when there is an `opt` of the same version as clang, +2 s per bootstrap (23 KB → 2 KB per level,
  ceiling ~2.400; without `opt`, 322); (3) **the main thread's stack overflow has a name**: infinite
  recursion in `main` prints «main thread stack overflow» («desborde de pila del hilo principal») with the
  limit, instead of a mute «Segmentation fault» (POSIX; Windows is left for W4). New guard
  `run_stack_frame_audit.sh` in `make test-ai-first`, a ratchet on the frames of the recursive path. The
  floor that remains is `CodegenContext` by value: its root is the draft arc `structs-byval`.
- **A 53-operand expression made the compiler crash with SIGSEGV and no message** (nyxerp friction
  `20260920-200024`: a stylesheet of 75 concatenations, an hour of manual bisection; `nyx check` and
  `nyx vet` gave green). Measured cause: the toolchain is linked without `-O` and each level of a binary
  expression stacks ~151 KB of codegen frames (`codegen_binop` alone, 132.880 B at `-O0` against 1.488 B
  at `-O2`), so 53 levels exhausted the default 8 MB. **Mitigated**: `nyx`, `nyx build` and `nyx test`
  raise THE COMPILER's stack to 64 MB —the user's program keeps its own— (ceiling from ~52 to ~430
  operands), and if it still dies, the message names the cause instead of leaving only «Segmentation
  fault». The Makefile recipes also raise it (from `scripts/with_testroot_lock.sh`): `make recompile-all`
  could no longer compile `lexer.nx` in 8 MB. The root cause stays in the `pila-del-compilador` spec
  (DRAFT, GO pending).
- **Iterating over a `String` with `for … in` killed the program with SIGSEGV and no location** (nyxerp
  friction `20260921-100001`). `nyx check`, `nyx vet` and `nyx build` gave green: codegen has no String
  path, so the iterable fell into the array path and the `%nyx_string*` was read as `{ i64, i8* }*`. Now
  it is **NYX1038** with file and line, and the hint of iterating by index (bytes with `substring`, UTF-8
  characters with `char_substring`); the same rule lives in codegen for when semantic is off. It is an
  error and not a new capability on purpose: iterating over a string forces a choice between bytes and
  codepoints, and that remains open. **The dynamic variant** —a String inside a bare `Array`, iterated with
  `for g: Array in xs`— blew up in the INNER loop, far from the culprit: now the `for` reads the slot
  checking its tag and aborts in the outer one with **NYX2018** naming the slot and its real type (and
  `for s: String in xs` over an `int` slot uses the checked read that already existed). Gotcha
  `for-in-string-rejected`.
- **`semantic` was QUADRATIC in the size of the closure: the symbol and signature tables were walked
  whole, comparing strings** `[arco: semantic-indice-simbolos]`. `scope_lookup` and `fn_sig_index` scanned
  the whole of `g_sym_names` and `g_fn_sig_names` on every query. Since the resolver inlines the import
  closure into a single translation unit, those tables grow with the number of modules while the number of
  lookups grows with the volume of code: the product is the quadratic. Now there is a **per-name index**
  (`Map<String,int>` + a parallel array that chains homonyms in declaration order) over the two tables, and
  the other six consumers —`scope_get_arity`, `lookup_var_type`, `name_is_builtin`, `fn_es_privada_de`,
  `fn_module_resolve`, `scope_has_in_current`— walk the name's chain instead of the table.
  > **Measured** (aarch64, median of 3, with the machine verified idle), on a synthetic project of 175.375
  > lines of IR —the scale of nyxerp's closure, which measured 184,080—: **front-end 4,680 → 2,700 ms
  > (−42.3%)**, exponent over four sizes **1.20 → 1.04**, and the cost per line of IR from **26.7 → 15.4
  > µs** (it used to double between 7.5k and 175k lines; now it is flat). Peak RSS unchanged: 288 → 286
  > MB. `make bench-test-cache` reproduces it.
  > **The shape of the profile changed**: semantic goes from 54.9% to 16.8% of the front-end, and
  > `nyx_string_equals` from first leaf with 24.4% to sixth with 4.9%. The next bottleneck is allocation
  > (`GC_generic_malloc*`, 40%), filed in `TASKS.md`.
  > **Confirmed from outside the core** (nyxerp, 2026-09-21): their full suite —112 files, 1.200 tests,
  > against PostgreSQL— went from **23 min 07 s to 20 min 43 s (−9.2%)**, measured against MORE work
  > (1.191 → 1.200 tests) and without a quiet window, so it is not comparable with the 42% of the isolated
  > front-end: there the front-end is a fraction of the total clock. **And the effect on MEMORY turned out
  > to be the one that helps them most**: the peak of compiling and running their heaviest file (39 tests)
  > went from **1,357 MB to 198 MB** — that is the joint effect of this arc and of the quadratic `emit`
  > fix (v0.32.2), because their previous measurement dates from 2026-09-17. With 2 cores and 3.8 GB, two
  > compilations at once **now fit and before did not**: the arc unlocked a factor of 2 that they will go
  > looking for on their own.
  > **How we verified that behavior does not change**: each migrated function ran IN PARALLEL with its
  > original scan and a gate that aborted the compilation if the two paths differed, over `make test`
  > (449), `test-errors` (309), `test-m08-types` (18) and the dispatch matrix — **~776 tests, zero
  > discrepancies**, in the three batches. Only with that green was each scan retired. The gates were
  > verified by sabotaging the index and `scope_pop`, because a gate that cannot be shown to fail proves
  > nothing.
  > **A finding the sabotage uncovered**: with `scope_pop` not undoing its stretch of the index,
  > `make test-errors` gives **309/309** — the whole corpus of the repo does NOT catch that bug, and the
  > compiler resolves symbols with the wrong `kind` without saying a word. That is why all queries now go
  > through `indice_cabeza()`, which validates that the head of the chain is alive **always**, with no
  > environment variable: it costs one integer comparison and turns that silently-wrong into a loud error.
  Tests: `test-432-module-fn-homonyms-caller` (450 files / 449 ARM64) pins the UNQUALIFIED resolution from
  inside a module —the rule that `scope_get_arity` and `fn_sig_index` depend on—, which `test-353` did not
  cover. Design: `docs/design/specs/2026-09-21-semantic-indice-simbolos-design.md`.
- **Voseo in five lines of `std/smtp.nx`**, two of them user-visible messages («probá el 465» ("try 465"),
  «Pedí STARTTLS primero … o conectá al 465» ("Ask for STARTTLS first … or connect to 465"))
  `[arco: std-smtp]`. The guard `run_voseo_messages.sh` had been red since 2026-09-20, so `make test-all`
  did not pass.
- **Writing over TLS to a peer that had already closed KILLED THE PROCESS with SIGPIPE**
  `[arco: serve-sse]`. OpenSSL writes with a raw `write()` and this runtime deliberately does not install
  a global `SIG_IGN` for SIGPIPE (`os_sock_send` protects itself with `MSG_NOSIGNAL`, and its comment
  states that this is «load-bearing»), so the TLS layer was left without that protection: a
  `tls_write_conn` against a departed peer killed the entire process. `runtime/tls.c` now uses its **own
  BIO** that writes through `os_sock_send`, instead of ignoring the signal at runtime startup —which would
  have changed the semantics of every program that links Nyx, `nyx prog | head` included—. The 5
  `SSL_set_fd` calls in the file go through `tls_attach_fd`, with the same contract (`BIO_NOCLOSE`: the
  caller closes the fd) and without depending on the `BIO_meth_get_*`, deprecated since OpenSSL 3.5.
  > **Why only now**: in a normal HTTP response the window between «the client closed» and «the server
  > writes» is milliseconds. In a TUNNEL it lasts as long as the stream does, so closing a tab was enough
  > to bring down a gateway that serves every domain. It was found by the `nyx-proxy` session while
  > building the SSE tunnel (measured: rc=141 = 128+SIGPIPE). `ws_tunnel` had had the same hole since
  > 2026-07-01 and is covered by the same fix.
  Tests: `test_tls_write_to_gone_peer_no_sigpipe` in `tests/runtime-unit/test_tls.c` (+4 asserts, 264 →
  268), which measures whether the signal IS GENERATED rather than whether the process survives — the
  suite had `signal(SIGPIPE, SIG_IGN)` in its `main` and so could not see this bug.
  > **Confirmed from outside the core** (nyx-proxy, 2026-09-20): with the gateway recompiled against this
  > runtime and **no mitigation anywhere**, an SSE client over TLS that cuts off abruptly with RST
  > mid-stream leaves the process alive; the same case died with `rc=141` against the previous runtime.
  > The relay did not change (first event at 0.01 s, the second at 0.31 s against a 0.3 s pause from the
  > backend): routing through `os_sock_send` added no latency or buffering. It remains as a permanent
  > positive control on that side — if it dies with 141 again, the regression is the runtime's.
- **`test-377-try-http` failed because of ports, not code**: it used 58744-58749, which fall inside
  `/proc/sys/net/ipv4/ip_local_port_range` (32768-60999), so the kernel handed them out as the SOURCE port
  of any outgoing connection and the test died with «cannot bind port NNNNN: Address already in use». It
  fell three times on 2026-09-15 and once more on 2026-09-20. Moved to 187xx, below the ephemeral range.
  **A red that is not a regression hides the real ones.**
- **The E2E `tests/integration/test_ws_proxy.py` SKIPPED silently** since the migration to `~/nyx/`
  (2026-07-22): its default `NYX_PROXY_SRC` pointed to `~/nyx-proxy-stack`, which no longer exists. Default
  fixed to `~/nyx/products/proxy` and the skip made more explicit.

### Added
- **`nyx update --sync-docs` preserves the project's own block in `AGENTS.md`** (nyxerp request,
  2026-09-24: it wiped their «Reglas de este proyecto» ("Rules of this project") four times). What lies
  between `<!-- proyecto:inicio -->` and `<!-- proyecto:fin -->` survives the reseeding, and a run that
  changes nothing no longer leaves a new `.bak` (before, it always did). Documented in the template.
- **`nyx test` with `[lib] modules`** `[arco: compilacion-separada]`: libraries are compiled once per
  suite and each test file only links them (6.4 s → 1.4 s per file on the 250-module bench).
- **`form_values`/`query_values` in `std/web`** (nyxerp friction `20260923-160005`): all the values of a
  repeated key (checkboxes, `<select multiple>`), in order; `parse_form_data_all` and
  `parse_query_string_all` return the pairs uncollapsed. `req.form` does not change: with repeated keys the
  last one still wins, and now the doc says so. Recipe 115.
- **`[lib] modules` in nyx.toml: separate compilation with object reuse**
  `[arco: compilacion-separada]`. `nyx build` compiles each declared module once into `target/nyx-lib/`
  and reuses it as long as neither it nor its import closure changes; touching a leaf module and
  recompiling costs 41% (88 modules) and 23% (250) of doing it without `[lib]`. Functions, structs and
  enums cross, via `import { f } from` and via `import "m" as a`; generics, `impl` and traits fall back to
  inlining with the NYX0302 warning, which is now shown even when the build succeeds. `nyx build` also
  honors `NYX_RT_ARCHIVE`. Limits: no type checking of the arguments at the boundary, and `nyx test` does
  not use `[lib]` yet.
- **`arena_persist(x)` and `arena_stats()` in wasm** `[arco: wasm-arena-persistir]`, PARTIAL phase 1:
  copies a String or an Array (of String/int/float/bool) from the event arena to the persistent region,
  to keep it between events; `arena_stats()` measures persistent and turn bytes from the inside. A
  struct/Map/Fn is NYX1039 (today in codegen; the check in semantic and the documentation are still
  pending).
- **`std/browser_idb`: IndexedDB for offline PWAs** `[arco: browser-indexeddb]` (nyxerp request).
  Asynchronous `idb_get`/`idb_put`/`idb_delete`/`idb_keys` (`await`, Asyncify) with `Result<_, Error>` and
  the usual kinds (`not_found`, `in_use`, `oom`, `io`); a single database with a composite key
  `[store, key]`, so that a new store does not trigger a version bump that blocks across tabs. A separate
  module: only whoever imports it pays for Asyncify. Injectable `opts.idb` in the shim to test without a
  browser (`test-wasm-35-idb`), recipe `114-idb-offline-wasm`.
- **`make bench-test-cache`** — a bench measuring the cost of compiling a test file, by phase (`front` /
  `clang_ll` / `link` / `run` / `hash`), on synthetic three-layer projects with reuse, from 8 to 250
  modules `[arco: semantic-indice-simbolos]`. It was born to re-measure the filed item about the
  closure-hash binary cache and ended up being the instrument of the arc.
  > **It demands a quiet window before measuring**: it waits until there are no foreign compilers, and if
  > one enters in the middle of a repetition it discards the repetition and repeats it. If the wait times
  > out, it ABORTS naming the process occupying the machine instead of reporting noise. It is not
  > paranoia: the arc's first baseline came out **9% high** because another session was running its suite
  > on the same two-core machine, and with the guard in place the bench repeats to **0.1%**.
- **`std/smtp` — sending mail from Nyx** `[arco: std-smtp]` (nyxerp request, which was left with no way to
  send a password-recovery link: the only way out their system could offer was to create a new user). A
  connection through both real paths —587 with `STARTTLS` and 465 with TLS from the greeting—,
  `AUTH PLAIN`/`LOGIN`, and the message with headers, text or HTML body and binary attachments in base64.
  **Zero new builtins**: the low-level piece already existed (`tls_upgrade_fd`, which is the exact shape of
  STARTTLS and which `std/postgres` already used that way).
  > **What the module solves on its own, which is where hand-made implementations break**:
  > **dot-stuffing** (a body line that starts with `.` goes out doubled; without that the server considers
  > the message finished right there and delivers half of it, with NO ERROR from anywhere), CRLF
  > normalization, base64 wrapped at 76 columns, the `Message-ID` with the sender's domain, and the second
  > `EHLO` after encrypting —mandatory, because the capabilities change—. **`AUTH` over a cleartext
  > channel is rejected and there is no flag to force it**: the check looks at the real state of the
  > channel, not at what the server announces. And the **certificate is verified by default**, with
  > `_insecure` variants that say so in the name — the same criterion applied to `https_get` on
  > 2026-09-11.
  >
  > Out of scope by decision of the arc: receiving (IMAP/POP3), queues and retries, nested multipart,
  > `quoted-printable`, RFC 2047 file names and DKIM/SPF/DMARC.
  Doc: `docs/SPEC.md` §Correo saliente, `LLM.md` §std/smtp. Recipe:
  `examples/by-example/113-smtp.nx`. Tests: stdlib 5 → 9 (parsing and dialogue, STARTTLS/TLS/AUTH, message
  assembly and E2E sending, and errors distinguishable by value).
- **`scripts/run_stdlib_tests.sh` links the FULL runtime**: it had a trimmed list (without `compress.c`,
  `scheduler.c`, `event_loop.c` and eight more), so a std module that used a builtin from any of those
  could not be tested there — it failed in the linker with «undefined reference», not in the test. A
  runner that links a different runtime from the one the toolchain links does not test what people run.

### Changed
- **SSE now works behind the gateway** `[arco: serve-sse]`: `nyx-proxy` 0.4.4 tunnels the stream (detects
  `Content-Type: text/event-stream` and stops accumulating), deployed on `:443` on 2026-09-20 with the 8
  domains verified by SNI. The warning «detrás del gateway SSE todavía no funciona» ("SSE does not work
  behind the gateway yet") is removed from `LLM.md` §std/serve, `docs/SPEC.md` §SSE and
  `examples/by-example/110-serve-sse.nx`. On the proxy side: 8 tunnel cases + 1 over TLS, with the 11 of
  `pool_framing` intact.

---

## [0.33.0] — 2026-09-20

> **This bumps MINOR because it rejects code that used to compile** — code that compiled and blew up at
> run time, but the repo's rule does not distinguish: whatever the compiler stops accepting changes the
> minor.

### Changed
- **Calling a `Fn` value WITHOUT A SIGNATURE is now rejected at compile time when the context expects a
  struct by value or a `float`** (`NYX1037`) `[arco: fn-sin-firma]`. This is the third appearance of the
  same cause —a `Fn` without a signature does not carry its return convention and the indirect call
  assumes `i64`—, and this time it is closed instead of patched: with a struct that was a **SIGSEGV** (the
  `i64` that arrives is the first field, and it gets dereferenced) and with `float`, **silent garbage**
  (`0.16` → `281472821301216.0`). It was reported by **nyxerp** from a middleware that compiled cleanly,
  passed `nyx check` and `nyx vet`, and died on the first request.
  > **What does NOT change**: `int`, `String`, `bool`, `char`, `Result`, `Option`, any pointer and the
  > discarded result keep working through a `Fn` without a signature — for those the assumed convention
  > matches, measured with values. Nor does `let f: Fn = some_fn` followed by `f()` change: codegen
  > refines that slot with the real signature since 2026-08-06.
  > **Why not the uniform convention with thunks**, which was the spec's recommendation: it is surgery in
  > the closure codegen —what `dom_on_fn`, the `browser_*_fn` and `Result.map` rely on—, it costs one
  > allocation per call, and it does not even close the residual case, because the problem of an
  > unannotated `let r = f()` is not the ABI but the absence of a type. What made it unnecessary is a
  > measurement: in the failing cases the compiler ALREADY knows the expected type.
  > **The split between layers is what each one can see**: `semantic` looks at parameters (`nyx check`
  > sees them); `codegen` is the backstop and reads the type AFTER the refinement, so it catches the `Fn`
  > that comes from a struct field —which blew up and not even W004 covered— and the
  > `NYX_SKIP_SEMANTIC=1` path.
  > **Migration**: `nyx vet` warns with W004 since 0.32.4, so the dangerous form can be found before the
  > compiler rejects it. The fix is to declare the signature: `f: Fn(T) -> R`.

---

