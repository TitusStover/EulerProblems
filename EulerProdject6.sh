#!/bin/bash

square () {
    local num=$1
    echo $((num * num))
}

numsquares=0
squarenum=0
total=0

for (( i=0; i <= 100; i++ )); do
    numsquares=$((numsquares + $(square $i)))
    squarenum=$((squarenum + i))
done
squarenum=$(square $squarenum)
echo squarenum: $squarenum
echo numsquares: $numsquares
total=$((squarenum - numsquares))

echo "the diference is $total"