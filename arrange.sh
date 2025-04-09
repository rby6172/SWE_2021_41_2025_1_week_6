#!/bin/bash

for file in files/*; do
    filename=$(basename "$file")
    first_char=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')

    if [[ "$first_char" =~ [a-z] ]]; then
        mkdir -p "$first_char"
        mv "$file" "$first_char/"
    fi
done
