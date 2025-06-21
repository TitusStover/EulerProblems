#!/bin/bash

numcount=0      # Number of primes found
curent=2        # Current number to check

while ((numcount < 10001)); do
    is_prime=1
    for ((j=2; j*j<=curent; j++)); do
        if (( curent % j == 0 )); then
            is_prime=0
            break
        fi
    done
    if (( is_prime )); then
        numcount=$((numcount + 1))
        echo "$numcount: $curent"
        potential=$curent
    fi
    curent=$((curent + 1))
done

echo "the 10001st prime number is: $potential"
