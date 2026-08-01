# AGENTS.md — How to write Nyx in this project (read this FIRST)

You are writing a program in **Nyx**. Everything you need is in **three places**:
this file, **`CAPABILITIES.md`** (what the standard library already does — auto-generated,
always current), and the **by-example cookbook** at <https://nyxlang.com/by-example/>
(~100 worked recipes, EN/ES) — it is NOT shipped in this project or the toolchain install,
it's a web page.

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
   feedback you have, and it exits non-zero on error, so `nyx check && nyx run` is safe to chain.
   `nyx vet` catches unused vars and dead code. Both default to `src/main.nx`.
6. **Run it:** `nyx run` (or `nyx build`). Read the compiler output.
7. **Test it:** `nyx test` runs `tests/*.nx`. Tests MUST use `test "name" { ... }` blocks —
   a file with functions named `test_*` is SILENTLY SKIPPED ("No files with test blocks found"),
   so you would wrongly believe your code is tested.
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

1. **Enum variants use `.`, not `::`** — `Shape.Circle(5)`, not `Shape::Circle(5)`.
2. **Map literal keys must be strings** — `{"k": 1}` and `{}` work; `{ident: v}` is NOT a map.
   The compiler stops you with `NYX0106` if you get this wrong, so trust it.
3. **`charAt()` returns an int** (byte/codepoint), not a String — compare with numbers: `if c == 65`.
4. **Strings are byte-based** — `length()`, `substring()`, `indexOf()`, `charAt()` operate on
   BYTES and compose safely (`s.substring(0, s.length())` is the identity). For user-visible
   character counts use `char_length()`. HTTP `Content-Length` = `length()`.
5. **Callbacks: prefer `Fn(Type) -> Ret`** over bare `Fn`.
6. **Channels are `Map`, not `int`** — `let ch: Map = channel_new(10)`.
7. **Nested Maps: OK for a variable or an inline literal, CRASHES for a function's return value.**
   `outer.insert("k", inner)` with `let inner: Map = {...}` works, and so does an inline
   `{"a": "b"}`. But `outer.insert("k", make_map())` still SEGVs on read. Also: the outer map must
   be homogeneous, and reading the inner one needs a typed binding (`let v: String = inner.get(k)`).
   When in doubt use flat keys: `m.insert("user::name", "alice")`.
8. **`map.remove(k)` on a struct FIELD is a silent no-op** — bind to a local first:
    `let m = obj.the_map; m.remove(k)` (Maps are references, so it mutates the same map).
9. **`Option<Struct>`/`Result<Struct, E>` with a 2+-field struct payload fails to LINK**
   (not a silent runtime bug — `clang` refuses it every time). Boxing always reserves one
   word. Don't put a multi-field struct through `Option`/`Result` directly — return
   `Option<Array>`/`Result<Array, E>` with the fields packed into an Array instead.
10. **`arr[i] = <float>` on an existing Array corrupts the value on the next read** — the
    indexed-assignment path doesn't retag the slot. Never reassign a float by index into an
    existing Array: only `.push()` fresh floats (append-only), or sort an Array of `int`
    indices instead of swapping float values in place.
11. **A small `channel_new(N)` can deadlock a producer/consumer** if you send everything
    before you start draining a second bounded channel. Size each channel to the total
    number of messages it will carry, or interleave sends and receives.
12. **A missing method on a typed receiver is a compile error (NYX1022)**, not silent
    garbage — e.g. `m.length()` on a `Map` fails with a did-you-mean. Use `size()` on Map,
    `length()` on String/Array.
13. **Check the return of `http_serve`/`tcp_listen`/`udp_bind`** — a failed bind (port
    taken) returns `-1` and prints to stderr; without the check your program "runs" with no
    server: `if http.http_serve(8080, handler) < 0 { return 1 }`.

If a gotcha bites you, that's expected — fix per the note, don't rewrite your whole approach.

---

## Reporting a problem (so the user + maintainers can fix it)

If Nyx genuinely can't do something, or you found a bug, or the docs were wrong/missing:

```
nyx report
```

This creates/opens **`FRICTION.md`** in this project. Fill in: what you were trying to do, the
minimal code that reproduces it, and the exact error. Then **tell the user** the report is
ready. Do not try to work around the limitation — a clean report is more valuable than a hack.
