#!/bin/bash

is_divisible_by_all() {
    local num=$1
    for ((i = 1; i <= 20; i++)); do
        if (( num % i != 0 )); then
            return 1
        fi
    done
    return 0
}

num=230092560
while true; do
    echo "Checking: $num"
    if is_divisible_by_all "$num"; then
        echo "The smallest number that is evenly divisible by all numbers from 1 to 20 is: $num"
        break
    fi
    num=$((num + 1))
done