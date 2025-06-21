#!/bin/bash
num1=999
num2=999
curent=0
found=false
biggest=0

for ((i = $num1; i >= 100; i--)); do
    for ((j = $num2; j >= 100; j--)); do
        curent=$(($i * $j))
        clear
        echo num1 $i
        echo num2 $j
        echo curent $curent
        
        reverse=$(echo "$curent" | rev)
        if [[ "$curent" == "$reverse" ]]; then
            if [[ $curent -gt $biggest ]]; then
                biggest=$curent
            fi
        break
    fi
    done
done
echo "Biggest palindrome: $biggest"