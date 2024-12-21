#!/bin/bash

dir=$1
count=0

for file in "$dir"/*; do
    if [[ -x "$file" ]]; then
        ((count++))
    fi
done

echo "Liczba plików z prawem do wykonania: $count"