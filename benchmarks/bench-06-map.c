#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

/* Simple chained hash map for fair comparison with Nyx's Map */
#define BUCKETS 4096

typedef struct entry {
    char* key;
    long long value;
    struct entry* next;
} entry_t;

static entry_t* table[BUCKETS];

static unsigned hash(const char* s) {
    unsigned h = 5381;
    while (*s) h = h * 33 + (unsigned char)*s++;
    return h % BUCKETS;
}

static void insert(const char* key, long long value) {
    unsigned idx = hash(key);
    entry_t* e = table[idx];
    while (e) {
        if (strcmp(e->key, key) == 0) { e->value = value; return; }
        e = e->next;
    }
    e = malloc(sizeof(entry_t));
    e->key = strdup(key);
    e->value = value;
    e->next = table[idx];
    table[idx] = e;
}

static long long get(const char* key) {
    unsigned idx = hash(key);
    entry_t* e = table[idx];
    while (e) {
        if (strcmp(e->key, key) == 0) return e->value;
        e = e->next;
    }
    return 0;
}

int main() {
    int N = 100000;
    struct timeval start, end;
    char buf[32];

    memset(table, 0, sizeof(table));

    gettimeofday(&start, NULL);

    for (int i = 0; i < N; i++) {
        snprintf(buf, sizeof(buf), "%d", i);
        insert(buf, i);
    }

    long long sum = 0;
    for (int i = 0; i < N; i++) {
        snprintf(buf, sizeof(buf), "%d", i);
        sum += get(buf);
    }

    gettimeofday(&end, NULL);
    long long elapsed = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
    printf("map ops (100K insert + 100K get): sum=%lld\n", sum);
    printf("time_us: %lld\n", elapsed);
    return 0;
}
