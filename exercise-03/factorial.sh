#!/bin/bash
# Prints the factorial of a number between 0 and 20.
echo -n "Enter a number (0-20): "
read n
if ! [[ "$n" =~ ^[0-9]+$ ]] || (( n > 20 )); then
    echo "Invalid input."
    exit 1
fi
f=1
for (( i = 2; i <= n; i++ )); do
    f=$(( f * i ))
done
echo "$n! = $f"
