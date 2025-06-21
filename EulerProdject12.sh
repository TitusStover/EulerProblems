#!/bin/bash
target_divisors=500 # Change this to your desired number of divisors
n=1
triangle=0

# Function to count divisors
count_divisors() {
    local num=$1
    local count=0
    local sqrt=$(echo "sqrt($num)" | bc)
    for ((i=1; i<=sqrt; i++)); do
        if (( num % i == 0 )); then
            if (( i * i == num )); then
                ((count++))
            else
                ((count+=2))
            fi
        fi
    done
    echo $count
}

while true; do
    triangle=$((triangle + n))
    divisors=$(count_divisors $triangle)
    clear
    echo $divisors
    if (( divisors >= target_divisors )); then
        echo "Triangle number: $triangle"
        echo "Divisors: $divisors"
        break
    fi
    ((n++))
done