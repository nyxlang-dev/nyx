# Fix a compile error

<!-- template: 1 -->

Method for diagnosing and fixing a program that does not compile — or that compiles and
then fails at run time. Read the diagnostic, isolate a minimal case, read the generated
IR, map the symptom to a cause. The footguns themselves live in `AGENTS.md`
(section «Gotchas»); this guide cites them by id.

## Step 1 — Read the diagnostic

```bash
nyx check                      # parse + type-check only: fastest, exits non-zero on error
nyx build                      # full build (compile + link)
NYX_DIAG=json nyx build 2>&1 | grep '^{'   # one JSON object per error, for tooling
NYX_LANG=es nyx build          # compiler messages in Spanish
NYX_VERBOSE=1 nyx build        # show which phase is running
```

Every diagnostic carries a code, a file and a line, and often a «did you mean». Read it
before changing anything: the code alone usually names the fix.

### Parse phase (NYX0101–NYX0106)

| Code | Meaning |
|--------|-------------|
| NYX0101 | Unexpected token |
| NYX0102 | Missing closer (`)`, `}`, `]`) |
| NYX0103 | Expression expected, not found |
| NYX0104 | Error limit reached (>20 — the file has serious damage) |
| NYX0105 | Generic parse error |
| NYX0106 | Map literal key is not a String |

### Semantic phase (NYX1001–NYX1021)

| Code | Meaning |
|--------|-------------|
| NYX1001 | Undefined variable |
| NYX1002 | Undefined function |
| NYX1003 | Unknown type |
| NYX1004 | Type mismatch |
| NYX1005 | Unknown method on type |
| NYX1006 | Missing return in a non-void function |
| NYX1007 | Non-exhaustive match |
| NYX1008 | Field does not exist on struct (did you mean?) |
| NYX1009 | Call of a non-callable value |
| NYX1010–NYX1019 | Assorted checks (trait binop/unop, dyn compatibility…) |
| NYX1020 | Trait bound violation in a generic |
| NYX1021 | `await` of a `float`-returning function (gated) |

In JSON output the `suggestion` field carries the raw identifier of the «did you mean».

## Step 2 — Isolate a minimal case

If the file is long, reproduce the error in the smallest program that still fails:

```bash
cat > /tmp/min.nx << 'EOF'
fn main() -> int {
    // reproduce the error here, with as little code as possible
    return 0
}
EOF

nyx /tmp/min.nx
```

Cut by halves until the error disappears — the last thing you removed is the cause. A
minimal case is also exactly what a friction report needs (see
`docs/nyx/guides/report-friction.md`).

## Step 3 — Read the generated IR

The compiler driver writes the LLVM IR next to the source it is given:

```bash
NYX_SRC="$PWD/min.nx" "${NYX_HOME:-$HOME/.nyx}/bin/nyx"   # leaves min.ll beside min.nx
grep -n 'define .*@my_function' min.ll
head -60 min.ll
```

The IR answers questions the error message does not:

- which types codegen actually emitted (`i64` where a `%nyx_string*` was expected?),
- whether a function is defined or only declared (a link error starts here),
- what a `match` arm really lowered to.

You rarely need this in application code. When you do need it, you are usually looking at a
compiler bug — go to «When it is not your bug».

## Step 4 — Symptom → cause → fix

### It does not compile

| Symptom | Likely cause | Fix |
|---------|---------------|-----|
| `NYX1005: unknown method 'X' on Array` | Method name typo | Check the method list in `docs/nyx/LLM.md` |
| `NYX1005: unknown method 'X' on String` | Method name typo | `length()` not `len()`, `toUpper()` not `toUpperCase()` |
| `NYX1006: missing return` | A `-> T` function without `return` on every path | Add the missing `return` |
| `NYX1004: type mismatch` | A String assigned to an int, or the reverse | Compare the declared type with the expression type |
| `NYX1008: field 'X' does not exist` | Struct field typo | The error suggests the right name (Levenshtein) |
| `NYX0101` on `Enum::Variant` | `::` instead of `.` | Gotcha `enum-dot-not-colons` |
| `NYX0106` on `{ident: v}` | Map keys must be String literals | Gotcha `map-literal-string-keys` |
| Type error on a channel | The handle is opaque and the capacity is mandatory | Gotcha `channel-is-map` |
| Link error mentioning your `Option`/`Result` | A 2+-field struct as the payload | Gotcha `option-struct-multifield-link` |

### It compiles but misbehaves at run time

| Symptom | Likely cause | Fix |
|---------|---------------|-----|
| A Map read back wrong / a crash reading a nested Map | The inner Map came from a function's return value | Gotcha `nested-map-from-call` |
| `charAt(i)` compares as «wrong» | It returns an int (byte), not a String | Gotcha `charat-returns-int` |
| `length()` is odd on UTF-8 text | It counts bytes | Gotcha `strings-are-bytes` — use `char_length()` |
| The server «starts» but nothing listens | The bind failed and the return value was ignored | Gotcha `check-bind-return` |
| The child of `fork()` hangs | It allocated GC memory before `execvp()` | Gotcha `fork-gc-child-exec` (a limit — in `docs/nyx/LLM.md`, not in AGENTS.md) |
| The process dies at the first failed check | That is what `assert()` does | Gotcha `assert-aborts-process` |
| A negative value from an `extern "C"` function arrives huge and positive | A C `int` does not sign-extend | Gotcha `ffi-c-int-no-sign-extend` |

`nyx vet` finds the grep-able ones for you, with `<file>:<line>`, before you even run.

### Link errors

| Symptom | Cause | Fix |
|---------|-------|-----|
| `undefined symbol: nyx_XXXX` | A runtime function that this toolchain does not have | Check the name in `CAPABILITIES.md`; if it is listed, report it |
| `undefined symbol` naming one of your functions | Declared in a module that is not imported with its quoted path | `import "src/my_module"` |

## Step 5 — Verify the fix

```bash
nyx check          # 0 errors
nyx build          # links
nyx test           # your tests still pass (tests use test "name" { ... } blocks)
```

Re-run the exact case that failed, not a variation of it.

## When it is not your bug

If the minimal case is correct by everything `AGENTS.md`, `CAPABILITIES.md` and
`docs/nyx/LLM.md` say, and it still fails, stop. Do not invent a workaround: run
`nyx report`, which leaves a `FRICTION.md` template in this project, and follow
`docs/nyx/guides/report-friction.md`. A minimal case plus the literal error is worth far
more than a hack that hides the bug.
