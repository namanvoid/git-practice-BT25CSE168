#!/bin/bash
# Simple calculator: reads  number operator number
echo -n "Enter expression (e.g. 8 + 2): "
read a op b
if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input."
    exit 1
fi
case "$op" in
    +) echo "Result = $((a + b))" ;;
    -) echo "Result = $((a - b))" ;;
    x|\*) echo "Result = $((a * b))" ;;
    /)
        if [ "$b" -eq 0 ]; then
            echo "Error: division by zero."
            exit 1
        fi
        echo "Result = $((a / b))" ;;
    *) echo "Unknown operator."; exit 1 ;;
esac
