#!/bin/bash
#


# divisable by 3 and divisible by 5 bu not 15




for i in {1..100}; do
    if [ $((i % 3)) -eq 0 ] || [ $((i % 5)) -eq 0 ] && [ $((i % 15)) -ne 0 ]; then
        echo $i
    fi
done







