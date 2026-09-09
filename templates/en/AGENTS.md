# AGENTS.md — How to write Nyx in this project (read this FIRST)

<!-- template: 1 -->

You are writing a program in **Nyx**. Everything you need is in **three places**:
this file, **`CAPABILITIES.md`** (what the standard library already does — auto-generated,
always current), and **`docs/nyx/`** (the dense reference and the three guides — see the
map near the end of this file). One more thing exists but is NOT shipped here: the
**by-example cookbook** at <https://nyxlang.com/by-example/> (~100 worked recipes, EN/ES),
a web page.

> **GOLDEN RULE — do NOT read the compiler or stdlib source** (`std/`, `compiler/`, or
> anything under your Nyx install) "to understand how it works". You don't need to and
> you WILL get lost. If you want a function, look it up in `CAPABILITIES.md`. If you want
> an idiom, look it up at <https://nyxlang.com/by-example/>. **No network access?**
> `CAPABILITIES.md` alone is enough to find the right function — skip the idiom lookup
> and write it directly. That's it.

---

## How to build a Nyx program (decision procedure)

1. **State the task** in one sentence (e.g. "HTTP server that stores form posts in SQLite").
2. **Check `CAPABILITIES.md`** — does a stdlib module already do this? It almost always does
   (HTTP, SQLite, JSON, files, crypto, TCP/TLS…). If yes: `import "std/<module>"` and call it.
   **Do NOT reimplement what already exists.**
3. **Find the idiom** at <https://nyxlang.com/by-example/> for the shape you need
   (skip this step with no network — `CAPABILITIES.md` is enough).
4. **Write the program.** Prefer the smallest thing that works.
5. **Self-check first:** `nyx check` type-checks WITHOUT linking or running — the fastest
   feedback you have, and it exits non-zero on error. It resolves `import "src/..."`,
   `import "std/..."` and the prelude just like `nyx build`, so it holds as the type gate in a
   multi-module project. `nyx vet` catches unused vars and dead code, and flags the grep-able gotchas below with
   `warning[W1NN] <file>:<line>` — so you get the gotcha by name instead of a parser error.
   Both default to `src/main.nx`.
6. **Run it:** `nyx run` (or `nyx build`). Read the compiler output.
7. **Test it:** `nyx test` runs `tests/*.nx`. Tests MUST use `test "name" { ... }` blocks —
   a file with functions named `test_*` is SILENTLY SKIPPED ("No files with test blocks found"),
   so you would wrongly believe your code is tested. `nyx test` DOES type-check: a type error
   in a module or in a test brings the run down with its NYX diagnostic instead of passing
   green.
8. **If it doesn't compile:** read the error (it has file:line and often a "did you mean").
   Check the Gotchas below — most first-try failures are one of them. Fix and re-run.
9. **If you hit a real wall** — the language or stdlib genuinely can't do it, or you found a
   bug — **STOP. Do NOT invent a hacky workaround.** Run `nyx report` (it creates a
   `FRICTION.md` in this project) and tell the user. The user will handle it.

---

## Hard rails (do NOT do these)

- **Do NOT invent syntax.** If you're unsure a keyword/feature exists, it probably doesn't —
  check `CAPABILITIES.md` (or <https://nyxlang.com/by-example/>) instead of guessing.
- **Do NOT reinvent stdlib functionality.** If `CAPABILITIES.md` lists it, use it.
- **Do NOT wander into `std/`/`compiler/` source** to "figure things out".
- **Do NOT hack around a limitation.** Report it with `nyx report` and stop.
- **Do NOT leave the project directory** to explore the toolchain.

---

## Gotchas (the footguns that cause most first-try failures)

<!-- gen:gotchas kinds=trap,rule lang=en form=short -->
<!-- gen:ids nested-map-from-call,small-channel-deadlock,ffi-c-int-no-sign-extend,derive-fields-pg-bool-text,int-wraps-silently,fn-callback-typed,await-float-gated,channel-is-map,charat-returns-int,enum-dot-not-colons,map-literal-string-keys,strings-are-bytes,check-bind-return,assert-aborts-process,bare-return-void,dyn-trait-needs-annotation,pg-null-sentinel,random-bytes-not-crypto,sqlite-null-sentinel,string-order-is-bytewise,throw-deprecated -->

1. **Nested Maps: OK for a variable or an inline literal, CRASHES for a function's return value — when in
doubt use flat keys: `map.insert("user::name", "alice")`.**
2. **A small `channel_new(N)` can deadlock a producer/consumer if you send everything before you start
draining a second bounded channel — size each channel to at least the total number of messages it will
carry.**
3. **A C `int` (32 bits) returned by an `extern "C"` function does NOT sign-extend into a Nyx `int` (64
bits) — a negative C value crosses as a huge positive number, never as a negative one.**
4. **A row from `std/postgres` cannot be handed straight to `<Struct>_desde_fila()` if it has a `bool`
column — PostgreSQL's text format for boolean is `t`/`f`, and `desde_fila` only recognizes the exact
string `"true"`.**
5. **`int` arithmetic (`+`/`-`/`*`) overflows into silent wraparound (two's complement) — there is no
saturating function, no compiler flag, and no 128-bit type; use `checked_add`/`checked_sub`/`checked_mul`/`checked_div` to DETECT it and `mul_div_round` for `a*b/c`.**
6. **Callbacks: prefer `Fn(Type) -> Ret`**
7. **`await` of a `float`-returning function is gated (NYX1021)**
8. **Channels must be Map, not int: `let ch: Map = channel_new(10)`, never `let ch: int`.**
9. **`charAt()` returns int (ASCII/codepoint), NOT String — compare with numbers: `if c == 65`.**
10. **Enum variants use `.`, not `::`: `Shape.Circle(5)`, never `Shape::Circle(5)`.**
11. **Map literal keys must be STRINGS: `{"k": 1}` and `{}` work (v0.16), but `{ident: 1}` is NOT a map
literal and fails loudly with `NYX0106`.**
12. **String API is byte-based (v0.14): `length()`, `substring()`, `indexOf()` and `charAt()` all operate
on BYTES — for *character* counts use `char_length()` (UTF-8 codepoints).**
13. **Check the return of `http_serve`/`tcp_listen`/`udp_bind`: a failed bind (port taken) returns `-1` —
`if http_serve(8080, handler) < 0 { return 1 }`.**
14. **`assert()` aborts the process (`exit(1)`) on the first failure**
15. **A bare `return` (no value) works in a `void`-returning function**
16. **To store trait objects in a collection, type the collection: `Array<dyn Trait>`**
17. **A NULL column from `std/postgres` is NOT an empty string — ask with `pg_is_null(v)`**
18. **`random_bytes` (`std/random`) is a PRNG, not a CSPRNG — never use it for salts, tokens, keys,
nonces, or any other cryptographic material; use `csprng_bytes` instead.**
19. **A NULL column from `std/sqlite` is NOT an empty string — ask with `sqlite_is_null(v)`**
20. **`<` `<=` `>` `>=` between Strings compare BYTES, not codepoints or locale**
21. **`throw(x)` is a deprecated alias of `panic(x)`: same channel, same `catch`, same limits.**

<!-- /gen:gotchas -->

If a gotcha bites you, that's expected — fix per the note, don't rewrite your whole approach.

---

## Where to find more (`docs/nyx/`)

Everything below was seeded by `nyx init` and is refreshed by `nyx update --sync-docs`.
It is written for an agent, not for a provider — any assistant reads the same files.

| File | What it is | When to open it |
|---|---|---|
| `docs/nyx/LLM.md` | Dense reference: builtins, methods, types, gotchas in long form, idiomatic patterns (English) | Before writing anything non-trivial, or when `CAPABILITIES.md` gave you the name but not the shape |
| `docs/nyx/guides/write-a-program.md` | How to write idiomatic Nyx: structure, `Result`/`Option`, closures, structs/traits, generics, enums, concurrency | You are about to write a new program or module |
| `docs/nyx/guides/fix-a-compile-error.md` | Read the diagnostic and the `NYX` codes, isolate a minimal case, read the generated IR | Something does not compile, or it crashes at run time |
| `docs/nyx/guides/report-friction.md` | When and how to file friction with `nyx report`, privacy, what happens next | You hit a real wall (step 9 above) |

`CAPABILITIES.md` lives in the project root and is regenerated on every `nyx build`.

---

## Reporting a problem (so the user + maintainers can fix it)

If Nyx genuinely can't do something, or you found a bug, or the docs were wrong/missing:

```
nyx report
```

This creates/opens **`FRICTION.md`** in this project. Fill in: what you were trying to do, the
minimal code that reproduces it, and the exact error. Then **tell the user** the report is
ready. Do not try to work around the limitation — a clean report is more valuable than a hack.
