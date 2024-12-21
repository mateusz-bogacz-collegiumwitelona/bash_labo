#!/bin/bash

USERNAME=$1

if ! id "$USERNAME" &>/dev/null; then
    echo "Użytkownik $USERNAME nie istnieje."
    exit 1
fi

last "$USERNAME" | awk '{print $4, $5, $6}' | grep -v "^$" | sort | uniq -c | sort -nr |
while read -r COUNT DATE; do
    echo "Data: $DATE - Liczba logowań: $COUNT"
done

