# Report friction

<!-- template: 1 -->

Nyx is optimized for AI agents and has a feedback loop: what slows you down slows every
agent. Reporting REAL friction is part of the workflow, not a nuisance. Use this guide when
the compiler behaves differently from what the documentation says, when a reproducible
minimal case keeps failing after checking the gotchas in `AGENTS.md`, or when the
documentation is wrong or missing.

## When to report

1. **LANGUAGE**: a reproducible minimal case compiles wrong, crashes, or fails to link —
   and it is NOT one of the gotchas listed in `AGENTS.md` / `docs/nyx/LLM.md`.
2. **DOCS**: the documentation (`AGENTS.md`, `docs/nyx/LLM.md`, the specification) says
   something the compiler contradicts, or your case is not documented at all.
3. **IDEA**: an ergonomic friction that a feature would solve.

Do NOT report: your own type or syntax mistakes that the compiler explains well (read
`NYX_DIAG=json` first), or gotchas that are already documented.

## How to report

```bash
nyx report          # 1) creates FRICTION.md (a template) in the project — sends NOTHING
# 2) fill the template in: goal, MINIMAL reproducing code, the literal error,
#    what the docs said, and the DOCS/LANGUAGE/IDEA classification
# 3) TELL THE USER: "I left a FRICTION.md, please review it". The user owns it.
nyx report --send   # OPTIONAL: send it to the Nyx team channel (public queue)
```

What matters is the **local `FRICTION.md`** that the user sees. Sending it (`--send`) is
optional. Instead of inventing a workaround to «get past it», leave a clear report: it is
worth far more.

## Quality rules

- The minimal code must be THE SMALLEST that reproduces the problem (bisect by halves).
- Paste the LITERAL error (or the JSON from `NYX_DIAG=json nyx build`).
- State the version (`nyx --version`).

## Privacy

With no token (`~/.nyx-kv-token`), sending is ANONYMOUS through a publicly readable
channel: **never include proprietary code or secrets** — that is another reason the report
asks for a MINIMAL case. Alternative: <https://github.com/nyxlang-dev/nyx/issues>.

## What happens next

The team drains the queue every development session and classifies each report (DOCS → the
documentation is corrected; LANGUAGE → a bug with a regression test; IDEA → backlog). The
fixes reach you through `nyx update`, whose «What's new» lists what was corrected.
