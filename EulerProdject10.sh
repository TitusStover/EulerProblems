#!/bin/bash

numcount=0
curent=2
total=0

while ((curent <= 2000000)); do
    is_prime=true
    for ((j=2; j*j<=curent; j++)); do
        if (( curent % j != 0 )); then
            is_prime=false
            break
        fi
    done
    if $is_prime; then
        total=$((total + curent))
        numcount=$((numcount + 1))
        echo "$numcount: $curent"
    fi
    curent=$((curent + 1))
done
echo "Total: $total"