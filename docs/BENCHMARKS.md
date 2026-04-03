# Nyx Performance Benchmarks — v0.12.0

> Last run: 26 March 2026. All benchmarks in `benchmarks/` directory.
> Run with: `bash benchmarks/run_benchmarks.sh`

---

## Core Benchmarks — Nyx vs C (-O2)

| Benchmark | C (-O2) | Nyx | Ratio | Rating |
|-----------|---------|-----|-------|--------|
| fibonacci(40) | 192ms | 166ms | **0.87x** | Nyx SUPERA a C |
| primes(100K) | 3.7ms | 3.6ms | **0.99x** | Idéntico a C |
| loop(100M) | 0μs | 0μs | **=** | Ambos optimizan away |
| alloc(1M structs) | 0μs | 8.2ms | ~∞ | C optimiza away, Nyx GC overhead |
| strings(100K concat) | 0.3ms | 3.1ms | **10.4x** | GC overhead en strings inmutables |
| map(100K insert+get) | 23ms | 24.6ms | **1.07x** | Excelente |

**Conclusión**: En computación pura, Nyx iguala o supera a C. El overhead de GC solo es visible en allocación masiva y strings.

---

## Product Benchmarks

| Benchmark | Resultado | Target mínimo | Competitivo | Excelente |
|-----------|-----------|---------------|-------------|-----------|
| JSON parse 10K | **240K ops/s** | 50K | 200K | 500K+ |
| JSON serialize 10K | **842K ops/s** | 50K | 200K | 500K+ |
| KV SET 500K | **6.76M ops/s** | 500K | 2M | 5M+ |
| KV GET 500K | **21.57M ops/s** | 1M | 3M | 8M+ |
| HTTP hello (wrk) | **15K req/s** | 5K | 30K | 80K+ |

**Contexto HTTP**: 15K req/s es single-threaded, sin keep-alive. Comparable a Express.js. Go hace ~100K, Rust/Actix ~200K con keep-alive + multi-thread.

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
