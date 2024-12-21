#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Użycie: $0 <katalog> <lista>"
    exit 1
fi

dir=$1
list=$2

if [[ ! -d "$dir" ]]; then
    echo "Błąd: Katalog '$dir' nie istnieje."
    exit 1
fi

touch "$dir" || { echo "Błąd: Nie można utworzyć pliku '$list'."; exit 1; }
> "$list"

for file in "$dir"/*; do
    if [[ -f "$file" && ! -L "$file" && ! -s "$file" ]]; then
       echo "$file" >> "$list"
       rm "$file"
    fi
done

