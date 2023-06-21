#!/bin/bash

echo -n "Enter the file path: "
read filepath

if [ ! -f "$filepath" ]; then
    echo "File not found!"
    exit 1
fi

output=$(tr '[:upper:]' '[:lower:]' < "$filepath")
tempfile=$(mktemp)

echo "$output" > "$tempfile"

line_count=$(wc -l < "$tempfile")
word_count=$(wc -w < "$tempfile")
char_count=$(wc -m < "$tempfile")

sorted_output=$(echo "$output" | sort -r)

echo "result:"
echo "........."
echo "$sorted_output"
echo "line count: $line_count"
echo "word count: $word_count"
echo "character count: $char_count"

rm "$tempfile"

