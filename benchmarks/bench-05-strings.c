#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

/* Naive concat like Nyx does (realloc each time) */
int main() {
    int N = 100000;
    struct timeval start, end;
    gettimeofday(&start, NULL);

    char* result = malloc(1);
    result[0] = '\0';
    int len = 0;

    for (int i = 0; i < N; i++) {
        len++;
        result = realloc(result, len + 1);
        result[len - 1] = 'a';
        result[len] = '\0';
    }

    gettimeofday(&end, NULL);
    long long elapsed = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
    printf("length: %d\n", len);
    printf("time_us: %lld\n", elapsed);
    free(result);
    return 0;
}
