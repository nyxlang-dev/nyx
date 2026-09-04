# Guided start — completing the constitution

<!-- sdd-template: 1 -->

This guide is for whoever opens this project and finds `docs/constitution.md` still
carrying the `SDD_INCOMPLETE` marker: a person, or an agent of any kind. It is an
**offer**, never an obligation. A project can be built without a constitution — it is
just built with more guessing.

## When this applies

The marker `SDD_INCOMPLETE` is in `docs/constitution.md`. That means nobody has said yet
what this project is for, who uses it, or what must never happen. Everything written
without that is a guess dressed as a decision.

## What to offer

Before writing code, say it once, plainly:

> The constitution of this project is empty. Shall I ask you 7 questions, one per
> section? It takes a couple of minutes and it is what stops me from inventing.

Then wait for the answer. Do not start asking before the user accepts.

## The seven questions

One at a time, in this order, waiting for each answer before asking the next.

1. **Purpose** — What is this project for, and which problem does it solve?
2. **Users** — Who uses it, and what does each of them need from it?
3. **Scope and non-goals** — What does it cover, and what will it explicitly NOT do?
4. **Invariants** — What must never happen, no matter what?
5. **Definition of done** — What has to be true for a change to count as finished?
6. **Technical constraints** — Which Nyx version, which dependency policy, which style
   rules or platforms must the code respect?
7. **How we decide** — Who decides, what needs an ADR, and what may I decide on my own?

## Rules while asking

- **One question at a time.** A list of seven questions gets one vague answer.
- **"Skip" and "not applicable" are valid answers.** Write them down as such and move on:
  a section marked "not applicable yet" is honest; a section filled with a plausible
  default is a lie that everyone will trust later.
- **Write the answers down verbatim**, in the user's own words. Do not polish them, do
  not expand them, do not suggest defaults, do not offer examples to pick from — the
  moment you propose the content, the answer stops being the user's.
- **Ask, do not deduce.** What the code seems to do is not what the project is for.
- Keep each section short. Three true lines beat twelve plausible ones.

## Closing: removing the marker

When all seven sections have at least one TRUE line — an answer, or an explicit "not
applicable" — remove the `SDD_INCOMPLETE` paragraph from the top of
`docs/constitution.md` and tell the user which sections were left empty on purpose. If
even one section is still unanswered, the marker STAYS: an incomplete constitution that
says so is worth more than a complete-looking one that invented the rest.

## If the user declines

Continue with what they actually asked for. Say **once**, without repeating it in every
later message:

> Understood — I will work without a constitution. I will ask when a decision cannot be
> made from what you have told me.

From then on, ask only what is indispensable for the request at hand, and offer the seven
questions again only if the user brings up the constitution. The offer is made once, not
enforced.
