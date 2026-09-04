# Constitution

<!-- sdd-template: 1 -->

**SDD_INCOMPLETE** — this constitution is still empty. An agent that reads this marker
**offers** the user to fill it in (`docs/sdd/onboarding.md`: one question per section, in
order) and removes this paragraph ONLY when the seven sections below have at least one
TRUE line each. Nobody invents content to get rid of the marker — three true lines are
worth more than twelve plausible ones.

This file is the first thing to read before writing code or a spec: it says what this
project is for and how decisions are made here. Everything else (`specs/`, `docs/adr/`)
hangs off it. Keep it short — if a section grows past a handful of lines, the extra
probably belongs in a spec or in an ADR.

## Purpose
<!-- What goes here: one or two lines — what this project is for and which problem it
     solves. -->
<!-- What does NOT go here: the technology stack, the roadmap, marketing copy. -->

## Users
<!-- What goes here: who uses this and what they need from it. Roles are enough
     ("the shop owner", "an internal service"). -->
<!-- What does NOT go here: invented personas, market size, anything the user did not say. -->

## Scope and non-goals
<!-- What goes here: what this project does — and, explicitly, what it will NOT do.
     The non-goals are what stops an agent from "helpfully" adding things. -->
<!-- What does NOT go here: features nobody asked for, "maybe later" wishes. -->

## Invariants
<!-- What goes here: what must NEVER happen — data that cannot be lost, an operation
     that has to stay idempotent, a limit that cannot be crossed. -->
<!-- What does NOT go here: preferences and style rules (those are constraints, below). -->

## Definition of done
<!-- What goes here: what has to be true before a change counts as finished — tests
     passing, docs updated, reviewed by someone. -->
<!-- What does NOT go here: the task list of a feature (that is specs/NNN-feature/tasks.md). -->

## Technical constraints
<!-- What goes here: Nyx version, dependency policy, style rules, target platforms,
     anything the code must respect. -->
<!-- What does NOT go here: how one particular feature is implemented. -->

## How we decide
<!-- What goes here: who decides, what needs an ADR (docs/adr/), and what an agent may
     decide on its own without asking. -->
<!-- What does NOT go here: the decisions themselves — each one is an ADR. -->
