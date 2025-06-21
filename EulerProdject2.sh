#!/bin/bash

num1=1
num2=2
total=0

# Loop until the Fibonacci numbers exceed 4,000,000
while [[ $num2 -lt 4000000 ]]; do
    if (( num2 % 2 == 0 )); then
        total=$((total + num2))
    fi
    # Calculate the next Fibonacci number
    temp=$((num1 + num2))
    num1=$num2
    num2=$temp
done

echo "Total: $total"

