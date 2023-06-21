#!/bin/bash

read -p "Enter a decimal number: " decimal

if ! [[ "$decimal" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid decimal number."
  exit 1
fi

binary=""
while [ "$decimal" -gt 0 ]; do
  remainder=$(( decimal % 2 ))
  binary="$remainder$binary"
  decimal=$(( decimal / 2 ))
done

echo "Binary representation: $binary"



output:
Enter a decimal number: 10
Binary representation: 1010
