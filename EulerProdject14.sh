#!/bin/bash

# Initialize an array to store the longest sequence found so far
Highest=()

# Loop through numbers from 2 up to (but not including) 1,000,000
for((i=2; i < 1000000; i++)); do
    curent=$i                                     # Start the Collatz sequence with the current number
    array=("$curent")  # Correctly initialize array with the starting number

    # Generate the Collatz sequence for the current number
    while((curent != 1)); do
        if ((curent % 2 == 0)); then
            curent=$((curent/2))                  # If even, divide by 2
        else
            curent=$((3*curent + 1))              # If odd, multiply by 3 and add 1
        fi
        array+=("$curent")                        # Add the current value to the sequence array
    done

    # If the current sequence is longer than the longest found so far
    if (( ${#array[@]} > ${#Highest[@]} )); then
        Highest=("${array[@]}")                   # Update the longest sequence
        clear                                     # Clear the terminal screen
        echo "Curent highest starting number: $i" # Output the starting number of the new longest sequence
    fi
done