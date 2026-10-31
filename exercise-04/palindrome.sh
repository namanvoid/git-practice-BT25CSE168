#!/bin/bash
# Checks whether a string is a palindrome (ignores case, spaces, punctuation).
echo -n "Enter a string: "
read -r s
clean=$(echo "$s" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:]')
rev=$(echo "$clean" | rev)
if [ -n "$clean" ] && [ "$clean" = "$rev" ]; then
    echo "\"$s\" is a palindrome"
else
    echo "\"$s\" is not a palindrome"
fi
