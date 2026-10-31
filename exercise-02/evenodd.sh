#!/bin/bash
# Checks whether a number is even or odd.
echo -n "Enter an integer: "
read n
if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input."
    exit 1
fi
if (( n % 2 == 0 )); then
    echo "$n is even"
else
    echo "$n is odd"
fi
