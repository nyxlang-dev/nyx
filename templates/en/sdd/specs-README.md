# specs/ — one folder per feature

<!-- sdd-template: 1 -->

A feature is not born as code: it is born as a spec that says WHAT and WHY, then a plan
that says HOW, then a list of tasks. This folder holds one numbered directory per
feature, `specs/NNN-feature/`, with the file names of Spec Kit — they are fixed in
English so that any agent recognises them, whatever language the content is written in.

## The cycle

1. **`docs/constitution.md`** — read it first. It rules over every spec: a spec that
   contradicts the constitution is wrong, not the other way around.
2. **`specs/NNN-feature/spec.md`** — the WHAT and the WHY. No implementation, no file
   names, no library choices. If a question cannot be answered from what the user said,
   it goes to *Open questions* — it is never guessed.
3. **`specs/NNN-feature/plan.md`** — the HOW: the shape of the solution, the files it
   touches, the order of the steps, what gets verified after each one.
4. **`specs/NNN-feature/tasks.md`** — the plan cut into tasks small enough to finish and
   verify one at a time. Each task says how it is proven done.
5. **`specs/NNN-feature/research.md`** — optional: measurements, prior art, small
   experiments. It exists when a decision needs evidence rather than an opinion.

Numbering is monotonic (`001-`, `002-`, …) and a folder is never renumbered. A decision
taken while writing the spec that will outlive the feature goes to `docs/adr/`; a word
that needed defining goes to `docs/glossary.md`.

## The spec template

Copy this into `specs/NNN-feature/spec.md`. Sections stay even when short; a section that
is genuinely empty says so ("none") instead of disappearing.

```markdown
# <feature name>

## Problem
What hurts today, for whom, and how it is noticed. Measured if it can be measured.

## Users
Who is affected and what each one needs from the feature.

## Scope
What this feature covers, in the smallest useful form.

## Non-goals
What it explicitly does NOT cover, so nobody adds it "for free" later.

## Acceptance
How we will know it works: observable behaviour, in the form of checks that can be run.

## Risks
What could go wrong, and what would be lost if it does.

## Open questions
Everything that has to be asked to the user. Never answered by guessing.
```
