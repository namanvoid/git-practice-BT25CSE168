#!/bin/bash
# Simple calculator: reads  number operator number
echo -n "Enter expression (e.g. 8 + 2): "
read a op b
case "$op" in
    +) echo "Result = $((a + b))" ;;
    -) echo "Result = $((a - b))" ;;
    x|\*) echo "Result = $((a * b))" ;;
    /) echo "Result = $((a / b))" ;;
    *) echo "Unknown operator."; exit 1 ;;
esac
