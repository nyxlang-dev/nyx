#!/bin/bash
# Run all advanced tests for Nyx capability assessment
cd "$(dirname "$0")/../.."

PASS=0
FAIL=0
ERRORS=""

for test_file in tests/advanced/test-A*.nx; do
    name=$(basename "$test_file" .nx)
    printf "  %-40s " "$name"

    # Compile
    if make compile FILE="$test_file" > /dev/null 2>&1; then
        # Link
        if clang script.ll runtime/runtime.c runtime/strings.c runtime/runtime-arrays.c \
            runtime/maps.c runtime/file-io.c runtime/iterators.c runtime/net.c runtime/thread.c \
            runtime/regex.c runtime/time.c runtime/crypto.c runtime/tls.c \
            runtime/scheduler.c runtime/event_loop.c runtime/sqlite_adapter.c \
            runtime/compress.c runtime/random.c runtime/url.c \
            runtime/msgpack.c runtime/websocket.c runtime/persist.c runtime/http2.c \
            -lgc -lpthread -ldl -lm -lssl -lcrypto -lz -o /tmp/nyx_adv_test 2>/dev/null; then
            # Run with timeout
            output=$(timeout 10 /tmp/nyx_adv_test 2>&1)
            exit_code=$?
            if [ $exit_code -eq 0 ]; then
                printf "\033[0;32mPASS\033[0m\n"
                PASS=$((PASS + 1))
            elif [ $exit_code -eq 124 ]; then
                printf "\033[0;31mTIMEOUT\033[0m\n"
                FAIL=$((FAIL + 1))
                ERRORS="$ERRORS\n  $name: TIMEOUT (infinite loop or stack overflow)"
            else
                printf "\033[0;31mRUNTIME ERROR (exit=$exit_code)\033[0m\n"
                FAIL=$((FAIL + 1))
                ERRORS="$ERRORS\n  $name: Runtime error (exit code $exit_code)"
            fi
        else
            printf "\033[0;33mLINK ERROR\033[0m\n"
            FAIL=$((FAIL + 1))
            ERRORS="$ERRORS\n  $name: Linker error"
        fi
    else
        # Capture compile error
        compile_err=$(make compile FILE="$test_file" 2>&1 | tail -5)
        printf "\033[0;31mCOMPILE ERROR\033[0m\n"
        FAIL=$((FAIL + 1))
        ERRORS="$ERRORS\n  $name: Compile error\n    $compile_err"
    fi
done

echo ""
echo "=================================="
echo "Results: $PASS passed, $FAIL failed out of $((PASS + FAIL))"
echo "=================================="
if [ -n "$ERRORS" ]; then
    echo ""
    echo "Failures:"
    echo -e "$ERRORS"
fi
