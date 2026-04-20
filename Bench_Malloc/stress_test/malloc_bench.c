// malloc_bench.c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>

#define ITERATIONS  100000000
#define ALLOC_SIZE  64
#define MAX_THREADS 8

typedef struct {
    int thread_id;
    int iterations;
    double elapsed;
} thread_arg_t;

double get_time() {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec + ts.tv_nsec / 1e9;
}

// Test 1: Sequential alloc/free
double bench_sequential(int iterations) {
    volatile char sink = 0;
    double start = get_time();
    for (int i = 0; i < iterations; i++) {
        void *p = malloc(ALLOC_SIZE);
        sink = ((char*)p)[0];
        free(p);
    }
    (void)sink;
    return get_time() - start;
}

// Test 2: Batch alloc then free
double bench_batch(int iterations) {
    void *ptrs[1000];
    double start = get_time();
    for (int i = 0; i < iterations / 1000; i++) {
        for (int j = 0; j < 1000; j++)
            ptrs[j] = malloc(ALLOC_SIZE);
        for (int j = 0; j < 1000; j++)
            free(ptrs[j]);
    }
    return get_time() - start;
}

// Test 3: Mixed sizes
double bench_mixed_sizes(int iterations) {
    int sizes[] = {16, 32, 64, 128, 256};
    volatile char sink = 0;
    double start = get_time();
    for (int i = 0; i < iterations; i++) {
        int sz = sizes[i % 5];
        void *p = malloc(sz);
        sink = ((char*)p)[0];
        free(p);
    }
    (void)sink;
    return get_time() - start;
}

// Test 4: Multi-threaded
void* thread_worker(void *arg) {
    thread_arg_t *t = (thread_arg_t*)arg;
    double start = get_time();
    for (int i = 0; i < t->iterations; i++) {
        void *p = malloc(ALLOC_SIZE);
        free(p);
    }
    t->elapsed = get_time() - start;
    return NULL;
}

double bench_threaded(int num_threads, int iterations) {
    pthread_t threads[MAX_THREADS];
    thread_arg_t args[MAX_THREADS];

    double start = get_time();

    for (int i = 0; i < num_threads; i++) {
        args[i].thread_id = i;
        args[i].iterations = iterations / num_threads;
        pthread_create(&threads[i], NULL, thread_worker, (void*)&args[i]);
    }
    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
    }

    return get_time() - start;
}

// Test 5: Tcache-sized batch (7 items = tcache fill count)
double bench_batch_7(int iterations) {
    void *p7[7];
    double start = get_time();
    for (int i = 0; i < iterations / 7; i++) {
        for (int j = 0; j < 7; j++)
            p7[j] = malloc(ALLOC_SIZE);
        for (int j = 0; j < 7; j++)
            free(p7[j]);
    }
    return get_time() - start;
}

// Test 6: Large batch (1000 items — forces beyond tcache, stresses trie hard)
double bench_batch_1000(int iterations) {
    void *ptrs[1000];
    double start = get_time();
    for (int i = 0; i < iterations / 1000; i++) {
        for (int j = 0; j < 1000; j++)
            ptrs[j] = malloc(ALLOC_SIZE);
        for (int j = 0; j < 1000; j++)
            free(ptrs[j]);
    }
    return get_time() - start;
}

int main() {
    printf("%-30s %12s %12s\n", "Test", "Time(s)", "Ops/sec");
    printf("%-30s %12s %12s\n", "----", "-------", "-------");

    double t;

    t = bench_sequential(ITERATIONS);
    printf("%-30s %12.4f %12.0f\n", "Sequential", t, ITERATIONS/t);

    t = bench_batch(ITERATIONS);
    printf("%-30s %12.4f %12.0f\n", "Batch-1000", t, ITERATIONS/t);

    t = bench_mixed_sizes(ITERATIONS);
    printf("%-30s %12.4f %12.0f\n", "Mixed sizes", t, ITERATIONS/t);

    int thread_counts[] = {1, 2, 4, 8};
    for (int i = 0; i < 4; i++) {
        char label[32];
        sprintf(label, "Threaded (%d threads)", thread_counts[i]);
        t = bench_threaded(thread_counts[i], ITERATIONS);
        printf("%-30s %12.4f %12.0f\n", label, t, ITERATIONS/t);
    }

    // Trie overhead isolation tests
    printf("\n--- Trie Overhead Isolation ---\n");
    printf("%-30s %12s %12s\n", "Test", "Time(s)", "Ops/sec");
    printf("%-30s %12s %12s\n", "----", "-------", "-------");

    t = bench_batch_7(ITERATIONS);
    printf("%-30s %12.4f %12.0f\n", "Batch-7 (tcache limit)", t, (ITERATIONS/7)*7/t);

    t = bench_batch_1000(ITERATIONS);
    printf("%-30s %12.4f %12.0f\n", "Batch-1000 (large)", t, ITERATIONS/t);

    return 0;
}