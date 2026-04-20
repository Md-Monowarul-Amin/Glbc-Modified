cd ~/Desktop/glibc_build
make -j$(nproc)
make install

cd ~/Desktop/Bench_Malloc/stress_test
gcc malloc_bench.c -o bench_64_modified \
    -Wl,--rpath=$HOME/glibc-custom-64/lib \
    -Wl,--dynamic-linker=$HOME/glibc-custom-64/lib/ld-linux-x86-64.so.2 \
    -lpthread -O2

./bench_64_modified
