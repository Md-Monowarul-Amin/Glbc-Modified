# Modified (64-bit)
gcc -O2 -pthread malloc_bench.c -o bench_64_modified \
  -Wl,--dynamic-linker=$HOME/glibc-custom-64/lib/ld-linux-x86-64.so.2 \
  -L$HOME/glibc-custom-64/lib \
  -Wl,-rpath=$HOME/glibc-custom-64/lib

# Baseline (system glibc)
gcc -O2 -pthread malloc_bench.c -o bench_64_baseline

# Run both 3 times each
echo "=== BASELINE ===" 
for i in 1 2 3; do ./bench_64_baseline; echo "---"; done

echo "=== MODIFIED ===" 
for i in 1 2 3; do ./bench_64_modified; echo "---"; done
