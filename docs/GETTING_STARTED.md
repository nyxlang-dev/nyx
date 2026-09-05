# Getting Started with Nyx

## Installation (recommended)

Install the Nyx toolchain with a single command. It installs to `~/.nyx/` and adds `nyx` to your PATH.

```bash
# Install Nyx toolchain (installs to ~/.nyx/)
curl -sSf https://nyxlang.com/install.sh | sh

# Verify
nyx --version

# Create a project
nyx init my-app
cd my-app
nyx build
./my-app
```

The `nyx` binary gives you the full toolchain: `nyx build`, `nyx run`, `nyx init`, `nyx test`, `nyx fmt`, `nyx vet`.

`nyx init` seeds a provider-neutral scaffold — `AGENTS.md`, `CAPABILITIES.md`, `docs/nyx/`
(reference + guides) — with nothing tied to a specific AI provider. Pick a language with
`--lang en|es` (or `NYX_LANG`); add thin per-provider adapters with
`--agent=claude,cursor,copilot`; and layer on the optional spec-driven-development scaffold
with `--sdd` (or, on an existing project, `nyx sdd init`).

---

## Building from source

> This section is for compiler developers who want to build Nyx from the monorepo.
> Linux only — `install.sh` does not support macOS or Windows.

### Install dependencies

```bash
# Ubuntu / Debian
sudo apt install clang libgc-dev libssl-dev zlib1g-dev
```

> **libgc/bdwgc >= 8.2 is required for healthy concurrency under load.** Below 8.2, `GC_set_sp_corrector` (`runtime/scheduler.c`) is unavailable and the M:N scheduler's collector can crash under concurrent goroutines — the runtime still builds and runs, it just warns loudly on stderr at startup instead of failing silently. `sudo apt install clang libgc-dev ...` on a current distro already satisfies this; only relevant on an older system or a pinned package.

### Build the compiler

```bash
git clone https://github.com/nyxlang-dev/nyx.git
cd nyx
make bootstrap
```

This generates `nyx_bootstrap` from the IR seed files included in the repository.

---

## Your first program

Create a file `hello.nx`:

```nyx
fn main() {
    print("Hello, world!")
}
```

Compile and run:

```bash
make run FILE=hello.nx
```

## Step-by-step guide

The full language tutorial (variables, functions, control flow, structs, enums, traits, and
more) lives on the website, not here:

- English: [https://nyxlang.com/docs/](https://nyxlang.com/docs/)
- Español: [https://nyxlang.com/es/docs/](https://nyxlang.com/es/docs/)

## Next steps

- See [SPEC.md](SPEC.md) for the complete language reference
- See [examples/](../examples/) for more complex programs
- See [docs/COMPARISON.md](COMPARISON.md) for how Nyx compares to other languages
- Run `make test` to run regression tests: 204/204 on ARM64 (205/205 on x86_64 — one x86 asm test is skipped on ARM64)
