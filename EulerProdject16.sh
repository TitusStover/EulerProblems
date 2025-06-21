#!/bin/bash

result=$(echo "2^1000" | bc | tr -d -c '0-9')
sum=0

length=${#result}

for ((i=0; i < length; i++)); do
    digit=${result:i:1}
    sum=$((sum + digit))
done

echo "sum of the digits of 2^1000: $sum"
