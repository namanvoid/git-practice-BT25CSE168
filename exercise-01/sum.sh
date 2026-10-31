#!/bin/bash
# Reads two integers and prints their sum.
echo -n "Enter two integers: "
read a b
if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input."
    exit 1
fi
echo "Sum = $((a + b))"
