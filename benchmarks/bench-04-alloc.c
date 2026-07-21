#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

typedef struct { long long x, y, z; } Point;

/* Heap allocated to match Nyx GC behavior */
Point* make_point(long long i) {
    Point* p = malloc(sizeof(Point));
    p->x = i;
    p->y = i * 2;
    p->z = i * 3;
    return p;
}

int main() {
    long long N = 1000000;
    struct timeval start, end;
    gettimeofday(&start, NULL);

    long long sum = 0;
    for (long long i = 0; i < N; i++) {
        Point* p = make_point(i);
        sum += p->x + p->y + p->z;
        free(p);
    }

    gettimeofday(&end, NULL);
    long long elapsed = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
    printf("sum: %lld\n", sum);
    printf("time_us: %lld\n", elapsed);
    return 0;
}
