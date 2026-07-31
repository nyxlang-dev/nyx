# Nyx Performance Benchmarks — re-medido en v0.20.1+LICM (medición justa)

> **Nota (2026-07-15, v0.20.1 + internado + LICM + GC warmup)**: Re-run formal del core
> (aarch64, 2 cores, dev box). El **ratio Nyx/C es la métrica portable** entre máquinas;
> los tiempos absolutos dependen del hardware. C con `clang -O2`; Nyx con `nyx_bootstrap` + clang.
>
> **HALLAZGO MAYOR (2026-07-15)**: la PRIMERA allocación GC de un programa Nyx dispara la
> **init lazy de Boehm** (~7.5-9ms en esta caja). Los benches cuya primera alloc caía dentro
> de la región medida (alloc/strings/map) sumaban esa init una-vez al trabajo real —
> **strings reportaba "~11-18x C" cuando el trabajo real es ~1.1x**. Fix: GC warmup (una
> alloc mínima antes de `start`) en los benches contaminados; sondeo empírico confirmó
> fib/primes/loop limpios (el 0.80x de primes es mérito real). Este artefacto también
> invalidaba mediciones previas de esta sesión (el "techo de ~1ms del hoist manual" era
> en realidad el warmup accidental del GC).
>
> Los **Product Benchmarks** (JSON/KV/HTTP, más abajo) NO se re-midieron en este run:
> KV se extrajo a `~/nyx-kv-stack` y HTTP requiere `wrk` + servidor — quedan con sus
> números previos, marcados como pendientes de re-medición en sus contextos.
>
> Run del core: `bash benchmarks/run_benchmarks.sh`. Última corrida: 15 July 2026.

---

## Core Benchmarks — Nyx vs C (-O2)

Re-medido 2026-07-15 (v0.20.1 + internado + LICM, GC warmup, aarch64 2 cores). **El ratio es la métrica comparable.**

| Benchmark | C (-O2) | Nyx | Ratio | Rating |
|-----------|---------|-----|-------|--------|
| fibonacci(40) | 511ms | 524ms | **~1.02x** | ~igual a C |
| primes(100K) | 10.2ms | 8.2ms | **0.80x** | Nyx SUPERA a C |
| loop(100M) | 0μs | 0μs | **=** | Ambos optimizan away |
| alloc(1M structs) | 0μs | ~31ms | ~∞ | C optimiza away, Nyx GC overhead |
| strings(100K concat) | 0.83ms | 0.93ms | **~1.1x** | ~paridad (era "~11-18x" por GC-init en la medición) |
| map(100K insert+get) | 80-85ms | 77-80ms | **~0.95-1.0x** | paridad |

**Conclusión**: con medición justa, **Nyx está a paridad o mejor que C en TODO el cómputo puro**
(primes 0.80x, strings/map/fib ~1x). El único costo estructural del GC es la allocación masiva
(bench-04) y la init una-vez (~7.5ms, excluida por warmup como corresponde a un costo one-time).

> **Historia de strings (investigado + optimizado 2026-07-15)**: (1) el bench re-alocaba el literal
> `"a"` en cada iteración → **internado de literales** (`nyx_intern_cstr` + caché `internal`
> por-literal): construye una vez por programa. (2) El pass de **LICM** (`compiler/licm.nx`,
> `NYX_LICM=off` desactiva) hoistea el literal fuera del loop: elimina el intern-call por
> iteración (mejora real medida ~18% del loop: 1130→930μs). (3) El resto del "~11-18x" histórico
> era el GC-init dentro de la medición — corregido con warmup. Resultado final: **~1.1x C**.

---

## Product Benchmarks

| Benchmark | Resultado | Target mínimo | Competitivo | Excelente |
|-----------|-----------|---------------|-------------|-----------|
| JSON parse 10K | **240K ops/s** | 50K | 200K | 500K+ |
| JSON serialize 10K | **842K ops/s** | 50K | 200K | 500K+ |
| KV SET 500K | **6.76M ops/s** | 500K | 2M | 5M+ |
| KV GET 500K | **21.57M ops/s** | 1M | 3M | 8M+ |
| HTTP hello (wrk) single-thread | **15K req/s** | 5K | 30K | 80K+ |
| HTTP hello (wrk) multi-thread (`http_serve_mt`) | **73K req/s** | — | — | — |

**Contexto HTTP**: 15K req/s es single-threaded, sin keep-alive (medido en v0.12.0). 73K req/s es multi-threaded con `http_serve_mt`, agregado en v0.13.0 — no forma parte del run automatizado original. Go hace ~100K, Rust/Actix ~200K con keep-alive + multi-thread.

**Contexto KV**: 21.57M GET/s supera a Redis (~8-10M) en operaciones in-memory puras (sin overhead de red).

---

## Optimization History

### Round 1 — -O2 flag (Fix 1)
- Added `-O2` to clang compilation of user programs
- fibonacci: 2.1x → 0.93x (supera a C)
- primes: 2.0x → 0.98x
- loop: 97ms → 0μs (LLVM optimizes away)
- alloc: SEGFAULT → 17.5ms (fixed)

### Round 2 — StringBuilder (Fix 3)
- Implemented `nyx_string_builder` in runtime/strings.c
- strings: 2351x → 11.3x (159x improvement)

### Round 3 — GC_malloc_atomic + GC_REALLOC + concat optimization (Fix 4-6)
- GC_MALLOC_ATOMIC for string data buffers
- GC_REALLOC for array/StringBuilder resize
- String concat with memcpy + 1.5x capacity pre-alloc
- fibonacci: 0.93x → 0.87x
- strings: 11.3x → 10.4x
- alloc: 17.5ms → 8.2ms

---

## Known Bottlenecks

1. **String concat** (10x): Each `a + b` creates new string. Use `StringBuilder` for loops.
2. **Alloc** (8.2ms for 1M): Boehm GC overhead. Stack allocation for non-escaping structs would fix this.
3. **HTTP** (15K): Single-threaded accept. Keep-alive + concurrent accept would 3-4x this.
4. **JSON parse** (240K): Pure Nyx parser. C runtime parser could reach 2M+.

---

## Next Optimizations (not yet implemented)

| Optimization | Impact | Difficulty | Target |
|-------------|--------|------------|--------|
| HTTP keep-alive | 3-4x HTTP req/s | Medium | Proxy, API |
| Concurrent accept (epoll) | 2-3x HTTP req/s | Medium | Proxy, API |
| Maps: open addressing | 2-3x Map ops/s | Medium | KV store |
| Stack alloc for non-escaping structs | 10x alloc | Hard | All |
| Arena allocator for request/response | 5-10x server | Hard | Proxy, API |
| JSON parser in C runtime | 5-10x JSON parse | Medium | API |
| String interning | 2-5x repeated strings | Medium | KV, Proxy |

---

## How to Run

```bash
# Core benchmarks (automated)
bash benchmarks/run_benchmarks.sh

# JSON + KV (automated)
make run FILE=benchmarks/bench-09-json.nx
make run FILE=benchmarks/bench-10-kv.nx

# HTTP (manual — needs two terminals)
# Terminal 1: make run FILE=benchmarks/bench-08-http-hello.nx
# Terminal 2: wrk -t4 -c100 -d10s http://localhost:8090/

# TCP echo (manual — needs two terminals)
# Terminal 1: make run FILE=benchmarks/bench-07-tcp-echo.nx
# Terminal 2: bash benchmarks/bench-07-client.sh 9100
```
