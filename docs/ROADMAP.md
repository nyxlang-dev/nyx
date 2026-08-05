# Roadmap — Nyx Language

## Mission

Build the first language capable of hosting itself as a complete web platform — proxy, backend, database, queue, HTTP/2, playground — written entirely in Nyx. From bare-metal to the browser DOM in a single language, optimized so that humans and AIs can operate it alike (LLM-dense docs, `NYX_DIAG=json`, `nyx update`/`nyx report`).

**Current version**: see the `VERSION` file (this line said v0.20.1 four minors too long) — canonical test counts in `docs/TESTS.md` (single source of truth) — self-hosting compiler with verified fixed point, hardened parser (never hangs, multi-error NYX01xx + JSON), type checker M-08 complete, implicit monomorphization, **real type system** (TyVar/occurs-check/real monomorphization of generic impl-methods), **real async** (stackful goroutines + M:N scheduler + epoll event loop — `await`/`spawn` run real concurrency), **borrow checker** (free-safety NYX1220/1221 SOUND, move-checking of `#[affine]` types NYX1230, deterministic drop/RAII, dangling-ref detection NYX1222/1223, `&mut` exclusivity NYX1210/1211), Web Push crypto (VAPID RFC 8292 + aes128gcm RFC 8291), real wasm32-wasi target through the browser (extern "js", std/dom, std/browser), in-place mutation, WebSocket proxying, consolidated `std/resp` server-side reader.

---

## Completed (Sprints 1–12)

### Sprint 1–4 — Products & Auth (March 2026)
- **nyx-kv** ✅ — Redis-compatible KV store, 52 commands, RESP2, Pub/Sub, multi-tenant AUTH, per-plan rate limits, binary `.ndb` persistence
- **nyx-serve** ✅ — HTTP framework (Flask-style), middleware chain, cookie sessions (nyx-kv backed), static serving, 73K req/s
- **nyx-proxy** ✅ — HTTPS reverse proxy, TLS termination, virtual hosting, path routing, health checks, rate limiting, access logs
- AUTH multi-tenant: TOKEN_CREATE/AUTH/WHOAMI, namespace isolation, free/pro/enterprise plans
- Pub/Sub: SUBSCRIBE/PUBLISH/UNSUBSCRIBE fan-out
- Package manager: `nyx init`, dependency resolution, `nyx.toml` / `nyx.lock`

### Sprint 5–7 — New Products (March–April 2026)
- **nyx-queue** ✅ — At-least-once message queue, RESP2, blocking DEQUEUE, ACK/NACK, automatic redelivery, 500 req/s rate limit
- **nyx-http2** ✅ — HTTP/2 server (h2c), binary framing, HPACK compression, stream multiplexing
- **nyx-db** ✅ — In-memory SQL database, custom SQL parser/executor, SELECT/INSERT/UPDATE/DELETE/JOIN/transactions, RESP2 interface, 1000 req/s rate limit
- Website redesigned: unified design system, VS Code color themes, The Nyx Book (31 chapters in website/static/learn/)

### Sprint 8 — Consolidation (April 2026)
- DRY: `std/resp.nx` unified RESP parser (replaces 3 near-identical files)
- Unified landing server: `website/landing-server.nx` (env-based PORT/SITE_DIR)
- Unified sync script: `sync_to_public.sh [core|kv|serve|proxy]` *(histórico: kv extraído en 2026-04; targets vigentes en el propio script)*
- Service files: `deploy/nyx-{queue,http2,db}.service`
- `.gitignore`: `products/*/nyx-*` glob

### Sprint 9 — Security & Ops (April 2026)
- **TLS for nyx-kv**: `--tls` flag, OpenSSL, Let's Encrypt compatible
- **Token expiry**: TOKEN_CREATE with optional `ttl_seconds`, TOKEN_REVOKE, TOKEN_LIST
- **Rate limiting for nyx-queue and nyx-db**: per-IP sliding window, configurable
- **Log rotation**: `deploy/logrotate.conf` for nyx-proxy access.log
- **Automated backup**: `deploy/nyx-backup.{service,timer}` — daily at 03:00, 7-day retention

### Sprint 10–11 — Compiler Fixes & Test Infrastructure (April 2026)
- **Compiler fixes**: Short-circuit `and`/`or`, `arr[i].method()` SEGV fix, `defer` blocks, bare `return`, new builtins (chr, read_byte, term_cols/rows, raw_mode_enter/exit, arr.insert/remove)
- **nyx-edit** ✅ — Terminal text editor (1091 lines), selection, undo, search, clipboard, raw mode
- **Product tests**: `make test-products` (69 tests: kv 41, queue 17, db 11), `make test-integration` (11 tests: serve+kv E2E)
- **`--port` flag** for nyx-kv and nyx-serve (testability)
- 4 new regression tests (201–204)

### Sprint 12 — Process Control & Tooling (April 2026)
- **`nyx test`** ✅ — Integrated test runner (compiler/test.nx), project discovery, `--filter`, `--verbose`, `--timeout`
- **13 process builtins** — runtime/process.c: fork, execvp, waitpid, dup2, pipe_new, close_fd, open_fd, getcwd, chdir, stat, isatty, getpid, kill_process
- **nyx-shell** ✅ — POSIX interactive shell with pipes, redirects, &&/||, $VAR expansion, history, raw mode line editing
- 1 new regression test (205-process-builtins)

---

## Two roadmaps

Starting with v0.13, Nyx tracks two independent version lines:

- **Language** (this file, sections below) — compiler, runtime, stdlib, tooling.
  Tagged as `v0.X.Y` on the main repo.
- **Products** (see `docs/PRODUCTS_ROADMAP.md`) — each product (`nyx-kv`,
  `nyx-serve`, `nyx-proxy`, etc.) has its own version in its `nyx.toml`,
  released independently. Product changes do not require a language bump.

Shared rule: a product release can pin to any language tag ≥ its
declared minimum. The language never holds up a product release and
vice versa.

---

## Path to v1.0.0 — Language only

```
v0.12.0  — Sprint 12 complete (8 products, nyx test, nyx-shell) ✅
v0.13.0  — products→libraries refactor, services/ + sites/ consumers,
            portable toolchain (install.sh → ~/.nyx/), bilingual compiler (NYX_LANG),
            M-01/M-02/M-03/M-04 + M-08 S1–S23a semantic type checker, cookbook 100/100 ✅
v0.13.1  — Audit B1-B5 (builtin collision, cross-module globals, runtime C hardening
            + unit suites), off-by-8 proxy cache fix ✅
v0.14.0  — AI-first: NYX_DIAG=json + line:column en errores, contrato de strings
            unificado en bytes (char_length para codepoints), assert abortivo,
            make install-local ✅
v0.15.0  — M-08 type checker closed (B8): real trait bounds (NYX1020),
            enum variant payloads (local + cross-module), multi-error recovery;
            nyx build shows failure causes ✅
v0.16.0  — Hardened compiler: parser never hangs (error budget +
            panic-mode), multi-error parse diagnostics NYX0101-0105 + JSON,
            implicit monomorphization (generics without turbofish, gap S10)
v0.16.1  — Bugfixes dogfooding: driver errors on unresolved imports,
            semantic validates assert expression (mono F2 in assert),
            codegen coerces arr[i] to ptr in assign/call/string_to_int ✅
v0.16.2  — Dogfooding venezuelainfo: vendored imports, global String arrays,
            i64→ptr coercion in remaining sites, JSON float serialization,
            HTTPS support in std/http
v0.17.0  ✅ Real WASM target through the browser (extern "js" FFI,
            #[export_name] exports, std/dom, std/browser, per-event arena,
            closures as handlers, multi-file `make wasm`), in-place mutation
            (Camino B: `&mut self` by pointer + auto-deref *Struct), end-to-end
            WebSocket proxying in the gateway, AI-first tooling groundwork
v0.18.x  ✅ Monorepo split complete (products/services/sites extracted to their
            own repos ~/nyx-*-stack), WASM/in-place-mutation consolidation
v0.19.0  ✅ "Real guarantees": real type system (TyVar/occurs-check/real
            monomorphization of generic impl-methods) + real async (stackful
            goroutines + M:N scheduler + epoll) + borrow checker (free-safety
            NYX1220/1221, move-checking #[affine] NYX1230, deterministic drop/RAII)
v0.20.0  ✅ Borrow checker complete (dangling refs inter-procedural NYX1222/1223,
            real ownership types Box/Rc/MoveOnly) + Web Push crypto (VAPID + aes128gcm)
v0.20.1  ✅ RESP binary-safe over TLS + extern "C" dedup in codegen +
            server-side RESP reader consolidation + docs/agents/skills hygiene
v0.21.0  ✅ Runtime primitives + std/llm (llama.cpp bindings, c_fn_ptr callbacks)
v0.22.x  ✅ SCAN + borrow campaigns; "Primer intento verde" (first-attempt bench
            7/8, clang attribution, did-you-mean imports, honest CAPABILITIES)
v0.23.0  ✅ Correction campaign: runtime heap-overflow fixes (WS/msgpack/HPACK/
            RESP), stdlib correctness, the verification net (runner compares
            expected/), compiler silent-failure kills
v0.24.x  ✅ "Honest dispatch" (NYX1022/2007/3001 in all 3 layers) + interpreter
            NYX30xx + public-ecosystem hardening + "annotation rules" arc
            (short-name structs, on-demand mono, match float) + static slot
            tag (NYX2008) + visible gradual-typing blindness (NYX_STRICT=warn)

FUTURE (not version-pinned — the ladder below v1.0 gets decided per-arc by
the author; the old v0.21-v0.23 assignments above never happened as written):
- Package Registry: nyx publish / nyx install, self-hosted registry server,
  first external packages (nyx-jwt, nyx-bcrypt, nyx-s3). NOT built yet
  (docs/VERSIONING.md wrongly marked it ✅ for months — no `nyx publish`
  subcommand exists).
- Cross-Platform: macOS ARM64 pre-built binary, Docker image, Windows/WSL
  install guide, CI build matrix (Windows target épica in TASKS.md).
- Language-owned friction channel (plan approved, pending execution:
  docs/superpowers/plans/2026-08-05-friccion-propia-nyxlang-api.md).
- Better iterator/closure element-type inference — the lever behind the
  NYX_STRICT=warn data (60/100 canonical recipes have blind spots; the worst
  are all iterator chains).
- Pre-1.0 freeze: SPEC audit (stable vs experimental), API stability
  guarantee for std/, migration guide, security audit
v1.0.0   — First stable public release (requires author approval)

(The registry/cross-platform milestones were deferred: v0.18–0.20 instead
shipped the "real guarantees" arc — real type system, real async, and the
borrow checker — plus the monorepo split and Web Push crypto.)
```

---

## v0.13.0 — Products→Libraries Refactor + Portable Toolchain

Target: architectural cleanup + developer experience baseline.

- [x] products/kv, products/serve, products/proxy → pure PM libraries
- [x] services/gateway/ (consumes nyx-proxy) — HTTPS :443
- [x] services/nyxkv/ (consumes nyx-kv) — RESP2 :6380
- [x] sites/*.com/ (4 consumers of nyx-serve) — landing pages
- [x] Retired daemons: nyx-queue.service (:6381), nyx-http2.service (:3004), nyx-db.service (:6382)
- [x] Bilingual compiler output (NYX_LANG=es/en env var)
- [x] M-01: method typo detection in semantic analysis
- [x] M-03: missing return detection in semantic analysis
- [x] install.sh — portable toolchain installer (~/.nyx/bin/ + runtime/ + std/)
- [x] CLI flags documented: kv, queue, db (H-05)
- [ ] H-06: TLS for nyxkv.com public endpoint
- [ ] H-07: tier enforcement (Pro/Enterprise limits)
- [ ] Stripe integration for plan upgrades
- [ ] Dashboard: live stats per user (keys, ops/s, quota)

---

## Developer Experience — backlog (sin versión asignada)

- [x] Compiler error messages: show source line + column ✅ (v0.14.0, line:column)
- [ ] `nyx fmt` improvements: trailing commas, import sorting
- [ ] `nyx vet` improvements: unused variables, unreachable code
- [ ] REPL: multi-line input, history, auto-complete
- [ ] LSP: hover types, go-to-definition for stdlib functions
- [ ] `std/http2` (movido del roadmap del ex-producto nyx-http2 al absorberse
      al core, 2026-07-05): TLS/ALPN (true h2 sobre HTTPS, no solo h2c),
      server push, stream priority. Ver docs/HTTP2.md.

---

## v0.17.0 — WASM to the Browser + In-Place Mutation + WebSocket Proxying

- [x] Real `wasm32-wasi` target (`make wasm` produces a working `.wasm`, runs under wasmtime)
- [x] `extern "js" fn` FFI (wasm imports namespace `js`) + `#[export_name]` exports for JS→Nyx re-entry
- [x] `std/dom` extended (attrs/classes/value/count/get_attr_all) + `std/browser` (fetch/timers/geo/localStorage/tz/matchMedia)
- [x] Closures as event handlers via function table (`-Wl,--export-table` + `dom_on_fn`)
- [x] Per-event arena allocator (`runtime/wasi/nyx_arena.c`, opt-in, 10k re-entries memory-stable)
- [x] Multi-file `make wasm` (`NYX_PROJECT_DIR`)
- [x] Camino B — in-place mutation: `&mut self` by pointer, auto-deref `p.campo` over `*Struct`
- [x] `std/stack.nx` (first stdlib data structure using `&mut self`)
- [x] WebSocket proxying end-to-end in the gateway (`ws_proxy`/`ws_tunnel`, `tcp_read_partial`/`tls_read_partial`/`tcp_shutdown`)
- [x] AI-first tooling groundwork: `nyx update` what's-new, `nyx report` friction capture
- [x] Backlog fix batch: nested arrays, `#[naked]` IR, Map.get/arr[i] String SEGV (inline+arg), url_decode `%XX`, JSON float serialization, HTTPS in std/http, async+alloc crash, XFF headers in nyx-proxy/gateway

---

## v0.18.0 — Package Registry

- [ ] `nyx publish` — upload a package to the registry
- [ ] `nyx install <package>` — download and cache
- [ ] Package registry server (self-hosted, written in Nyx)
- [ ] First external packages: `nyx-jwt`, `nyx-bcrypt`, `nyx-s3`

---

## v0.19.0 — Cross-Platform

- [ ] macOS ARM64: pre-built binary download
- [ ] Windows (WSL-only initially): install guide
- [ ] Docker image: `ghcr.io/nyxlang-dev/nyx`
- [ ] CI: GitHub Actions build matrix (Linux x86_64, macOS ARM64)

---

## v0.20.0 — Language Polish

- [ ] Better generic error messages ("expected T, got String at line X")
- [ ] Macro hygiene: scoped macro variables
- [ ] `match` improvements: nested enum patterns, `..` rest patterns
- [ ] Compile-time constants: `const N: int = 100`

---

## v0.21.0 — Compiler perf + stdlib

- [x] M-08 deuda fina: enum variant payloads cross-module ✅ (v0.15.0, B8-F2)
- [x] Real trait bound validation (`T: Display` enforced) ✅ (v0.15.0, B8-F1, NYX1020)
- [ ] HTTP/2 TLS/ALPN en std/http2.nx (verdadero h2 sobre HTTPS)
- [ ] Compile-time speedup: profile bootstrap, identify hot paths
- [ ] stdlib: más cobertura de tests por módulo

---

## v0.22.0 — Pre-1.0 Freeze

- [ ] SPEC.md audit: mark stable vs experimental features
- [ ] API stability guarantee for std/ modules
- [ ] Migration guide (v0.x → v1.0)
- [ ] Security audit: runtime, TLS, auth subsystems
- [ ] 400 tests (new integration tests across all products — ver docs/PRODUCTS.md)

Nota: los hitos de producto (Stripe, dashboard, tier enforcement, WebSocket
en framework, response caching en proxy, etc.) viven en
`docs/PRODUCTS_ROADMAP.md` y siguen su propio versionado. v1.0 del lenguaje
no requiere cerrar ninguno de ellos.

---

## v1.0.0 — First Stable Release

**Requires explicit approval from Ottavio Cavallina.**

Criteria:
- 250+ tests all passing
- At least 100 real users on playground or KV
- SPEC.md covers 100% of stable language features
- No known crashes (ASAN clean)
- All products deployed and running for 30+ days (clasificación y conteo: docs/PRODUCTS.md)

---

## Non-goals (v1.x)

These are deliberately deferred post-1.0:

- **Borrow checker**: ownership enforcement (Rust-style) — language overhead not justified yet
- **Async runtime overhaul**: current goroutines/channels model works well
- **JIT compilation**: LLVM AOT is sufficient for Nyx's performance targets
- **GUI toolkit**: out of scope for a systems language

---

## Development History

| Version | Date | Milestone |
|---------|------|-----------|
| v0.1.0 | Mar 2026 | Self-hosting compiler bootstrap |
| v0.4.0 | Mar 2026 | Generics, traits, closures, ADTs |
| v0.6.0 | Mar 2026 | FFI, unsafe, concurrency (goroutines, channels) |
| v0.8.0 | Mar 2026 | Networking (TCP, TLS, HTTP, WebSocket) |
| v0.9.0 | Mar 2026 | Version reset + audit. 190 tests. |
| v0.10.0 | Mar 2026 | Web Playground |
| v0.11.0 | Mar 2026 | nyx-db (transactions, migrations, typed queries) |
| v0.12.0 | Mar–Apr 2026 | nyx-proxy, nyx-queue, nyx-http2; Sprint 9 security/ops |
| v0.13.0 | Apr 2026 | products→libraries refactor, services/, sites/, portable toolchain, bilingual compiler |

Full history in CHANGELOG.md.
