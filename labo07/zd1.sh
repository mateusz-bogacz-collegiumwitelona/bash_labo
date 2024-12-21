#!/bin/bash

dir=$1

find "$dir" -type f -name "*.old" -delete

for file in "$dir"/*; do
    if [ -w "$file" ] && [ ! -d "$file" ]; then
        mv "$file" "$file.old"
    fi
done