#!/bin/bash
# Sends 10000 requests to a TCP echo server and measures time
PORT=$1
START=$(date +%s%N)
for i in $(seq 1 10000); do
    echo "hello" | nc -q 0 localhost $PORT 2>/dev/null
done
END=$(date +%s%N)
ELAPSED=$(( (END - START) / 1000000 ))
echo "10000 requests in ${ELAPSED}ms"
echo "$(( 10000000 / ELAPSED )) req/s"
