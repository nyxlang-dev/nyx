# AGENTS.md — How to write Nyx in this project (read this FIRST)

You are writing a program in **Nyx**. Everything you need is in **three places**:
this file, **`CAPABILITIES.md`** (what the standard library already does — auto-generated,
always current), and **`examples/by-example/`** (worked recipes).

> **GOLDEN RULE — do NOT read the compiler or stdlib source** (`std/`, `compiler/`, or
> anything under your Nyx install) "to understand how it works". You don't need to and
> you WILL get lost. If you want a function, look it up in `CAPABILITIES.md`. If you want
> an idiom, look in `examples/by-example/`. That's it.

---

## How to build a Nyx program (decision procedure)

1. **State the task** in one sentence (e.g. "HTTP server that stores form posts in SQLite").
2. **Check `CAPABILITIES.md`** — does a stdlib module already do this? It almost always does
   (HTTP, SQLite, JSON, files, crypto, TCP/TLS…). If yes: `import "std/<module>"` and call it.
   **Do NOT reimplement what already exists.**
3. **Find the idiom** in `examples/by-example/` for the shape you need.
4. **Write the program.** Prefer the smallest thing that works.
5. **Run it:** `nyx run` (or `nyx build`). Read the compiler output.
6. **If it doesn't compile:** read the error (it has file:line and often a "did you mean").
   Check the Gotchas below — most first-try failures are one of them. Fix and re-run.
7. **If you hit a real wall** — the language or stdlib genuinely can't do it, or you found a
   bug — **STOP. Do NOT invent a hacky workaround.** Run `nyx report` (it creates a
   `FRICTION.md` in this project) and tell the user. The user will handle it.

---

## Hard rails (do NOT do these)

- **Do NOT invent syntax.** If you're unsure a keyword/feature exists, it probably doesn't —
  check `CAPABILITIES.md`/by-example instead of guessing.
- **Do NOT reinvent stdlib functionality.** If `CAPABILITIES.md` lists it, use it.
- **Do NOT wander into `std/`/`compiler/` source** to "figure things out".
- **Do NOT hack around a limitation.** Report it with `nyx report` and stop.
- **Do NOT leave the project directory** to explore the toolchain.

---

## Gotchas (the footguns that cause most first-try failures)

1. **Enum variants use `.`, not `::`** — `Shape.Circle(5)`, not `Shape::Circle(5)`.
2. **Map literal keys must be strings** — `{"k": 1}` and `{}` work; `{ident: v}` is NOT a map.
3. **Typed functions need a value in `return`** — use `return 0` in a function that returns `int`,
   not a bare `return`.
4. **`arr[i]` as a direct method receiver needs a bind first** —
   `let p = points[i]; p.dist()` ✓  ·  `points[i].dist()` ✗ (wrong result/crash).
5. **`for-in` over a mixed-type array loops forever** — use `while` + index instead.
6. **`charAt()` returns an int** (byte/codepoint), not a String — compare with numbers: `if c == 65`.
7. **Strings are byte-based** — `length()`, `substring()`, `indexOf()`, `charAt()` operate on
   BYTES and compose safely (`s.substring(0, s.length())` is the identity). For user-visible
   character counts use `char_length()`. HTTP `Content-Length` = `length()`.
8. **Callbacks: prefer `Fn(Type) -> Ret`** over bare `Fn` (bare `Fn` may fail the type-check).
9. **Channels are `Map`, not `int`** — `let ch: Map = channel_new(10)`.
10. **Nested Maps crash** — use flat keys: `m.insert("user::name", "alice")`, not a Map inside a Map.
11. **`map.remove(k)` on a struct FIELD is a silent no-op** — bind to a local first:
    `let m = obj.the_map; m.remove(k)` (Maps are references, so it mutates the same map).
12. **Closures capturing locals are limited.** Capturing a value into a nested function works in
    common cases (v0.17.1); if a capture behaves oddly, keep the value in scope or use a
    module-level global instead — and if it's clearly broken, `nyx report` it.
13. **Nested arrays work** (`grid[0][0]`), since v0.17.

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
