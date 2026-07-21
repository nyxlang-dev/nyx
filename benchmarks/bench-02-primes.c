#include <stdio.h>
#include <sys/time.h>

int main() {
    int N = 100000;
    struct timeval start, end;
    gettimeofday(&start, NULL);

    int count = 0;
    for (int i = 2; i <= N; i++) {
        int is_prime = 1;
        for (int j = 2; j * j <= i; j++) {
            if (i % j == 0) {
                is_prime = 0;
                break;
            }
        }
        if (is_prime) count++;
    }

    gettimeofday(&end, NULL);
    long long elapsed = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
    printf("primes up to %d: %d\n", N, count);
    printf("time_us: %lld\n", elapsed);
    return 0;
}
