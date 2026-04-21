#include <stdio.h>
#include <sys/time.h>

int main() {
    long long N = 100000000;
    struct timeval start, end;
    gettimeofday(&start, NULL);

    long long sum = 0;
    for (long long i = 0; i < N; i++) {
        sum += i * i;
    }

    gettimeofday(&end, NULL);
    long long elapsed = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
    printf("sum: %lld\n", sum);
    printf("time_us: %lld\n", elapsed);
    return 0;
}
