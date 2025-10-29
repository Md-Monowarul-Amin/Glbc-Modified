#!/bin/bash
export LD_LIBRARY_PATH=../build32/lib

for bench in bench-malloc-simple bench-malloc-thread bench-malloc-tcache; do
    echo "Running $bench..."
    ./$bench
    echo ""
done

