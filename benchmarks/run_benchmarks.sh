#!/bin/bash
# run_benchmarks.sh — Compare Nyx vs C performance
# Run from NyxLang root: bash benchmarks/run_benchmarks.sh

cd "$(dirname "$0")/.."

RUNTIME_SRCS="runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c runtime/compress.c runtime/random.c runtime/url.c runtime/msgpack.c runtime/websocket.c"
LIBS="-lgc -lpthread -ldl -lm -lssl -lcrypto -lz"

echo "╔══════════════════════════════════════════════════╗"
echo "║        Nyx vs C — Performance Benchmarks         ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

BENCHMARKS="01-fibonacci 02-primes 03-loop 04-alloc 05-strings 06-map"

for bench in $BENCHMARKS; do
    NX_FILE="benchmarks/bench-${bench}.nx"
    C_FILE="benchmarks/bench-${bench}.c"
    NX_BIN="/tmp/nyx_bench_${bench}"
    C_BIN="/tmp/c_bench_${bench}"

    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  BENCH: ${bench}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    # Compile C (with -O2 to be fair)
    echo -n "  Compiling C (-O2)... "
    if clang -O2 "$C_FILE" -o "$C_BIN" -lm 2>/dev/null; then
        echo "OK"
    else
        echo "FAILED"
        continue
    fi

    # Compile Nyx
    echo -n "  Compiling Nyx... "
    cp "$NX_FILE" script.nx
    if NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap > /dev/null 2>&1; then
        if clang -O2 script.ll $RUNTIME_SRCS $LIBS -o "$NX_BIN" 2>/dev/null; then
            echo "OK"
        else
            echo "LINK FAILED"
            continue
        fi
    else
        echo "COMPILE FAILED"
        continue
    fi

    # Run C (with 60s timeout)
    echo "  --- C ---"
    C_OUTPUT=$(timeout 60 "$C_BIN" 2>&1)
    if [ $? -ne 0 ]; then
        echo "  TIMEOUT or CRASH"
        continue
    fi
    C_RESULT=$(echo "$C_OUTPUT" | grep -v "time_us" | head -1)
    C_TIME=$(echo "$C_OUTPUT" | grep "time_us" | awk '{print $2}')
    echo "  $C_RESULT"
    echo "  Time: ${C_TIME} μs"

    # Run Nyx (with 60s timeout)
    echo "  --- Nyx ---"
    NX_OUTPUT=$(timeout 60 "$NX_BIN" 2>&1)
    NX_EXIT=$?
    if [ $NX_EXIT -eq 124 ]; then
        echo "  TIMEOUT (>60s)"
        echo ""
        continue
    elif [ $NX_EXIT -ne 0 ]; then
        echo "  CRASH (exit $NX_EXIT)"
        echo ""
        continue
    fi
    NX_RESULT=$(echo "$NX_OUTPUT" | grep -v "time_us" | head -1)
    NX_TIME=$(echo "$NX_OUTPUT" | grep "time_us" | awk '{print $2}')
    echo "  $NX_RESULT"
    echo "  Time: ${NX_TIME} μs"

    # Calculate ratio
    if [ -n "$C_TIME" ] && [ -n "$NX_TIME" ] && [ "$C_TIME" -gt 0 ] 2>/dev/null; then
        RATIO=$(awk "BEGIN { printf \"%.2f\", ${NX_TIME} / ${C_TIME} }")
        PERCENT=$(awk "BEGIN { printf \"%.0f\", (${C_TIME} / ${NX_TIME}) * 100 }")
        echo ""
        echo "  ⚡ Nyx/C ratio: ${RATIO}x (Nyx is ${PERCENT}% of C speed)"
    fi

    echo ""
done

# Summary
echo "╔══════════════════════════════════════════════════╗"
echo "║                    SUMMARY                       ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
echo "  C compiled with: clang -O2"
echo "  Nyx compiled with: nyx_bootstrap + clang (default opts)"
echo ""
echo "  Note: Nyx uses Boehm GC for allocations."
echo "  C uses malloc/free (bench-04) or realloc (bench-05)."
echo "  Lower ratio = Nyx closer to C speed."
echo "  1.0x = same speed. 2.0x = Nyx is 2x slower."
echo ""

# Cleanup
rm -f /tmp/nyx_bench_* /tmp/c_bench_*
rm -f script.ll script.nx
