#!/bin/bash

found="false"
c=0
for((a=1; a < 1000; a++));do
    for((b=$a+1; b < 1000; b++)); do
        c=$((1000 - a -b))
        if((a*a + b*b == c*c)); then
            echo "found the only Pythagorean triplet a=$a, b=$b, c=$c"
            found="true"
            product=$((a * b * c))
            echo "the product of the triplets is $product"
        fi
    done
done
if((found = "false")); then
    echo "Somthing is wronng and the triplet wasn't found"
fi