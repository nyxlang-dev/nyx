#include <stdio.h>
#include <sys/time.h>

long long fib(long long n) {
    if (n < 2) return n;
    return fib(n - 1) + fib(n - 2);
}

int main() {
    struct timeval start, end;
    gettimeofday(&start, NULL);
    long long result = fib(40);
    gettimeofday(&end, NULL);
    long long elapsed = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
    printf("fibonacci(40) = %lld\n", result);
    printf("time_us: %lld\n", elapsed);
    return 0;
}
