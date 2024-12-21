#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Błąd: Należy podać co najmniej dwa argumenty."
    exit 1
fi

PLIK=$1
shift

if [ ! -f "$PLIK" ]; then
    echo "Błąd: Nie można wykonać działania na $PLIK."
    exit 1
fi

for KATALOG in "$@"; do
    if [ ! -d "$KATALOG" ]; then
        echo "Błąd: Problem z $KATALOG."
        exit 1
    fi

    cp "$PLIK" "$KATALOG"
    if [ $? -eq 0 ]; then
        echo "Plik $PLIK został skopiowany do katalogu $KATALOG."
    else
        echo "Błąd: Nie udało się skopiować pliku $PLIK do katalogu $KATALOG."
        exit 1
    fi
done