#!/bin/bash

PLIK1=$1
PLIK2=$2
PLIK3=$3

if [ ! -f "$PLIK1" ] || [ ! -s "$PLIK1" ] || [ ! -r "$PLIK1" ]; then
    echo "Plik $PLIK1 musi istnieć, być zwykłym plikiem, nie może być pusty i musimy mieć do niego prawo odczytu."
    exit 1
fi

if [ ! -f "$PLIK2" ] || [ ! -s "$PLIK2" ] || [ ! -r "$PLIK2" ]; then
    echo "Plik $PLIK2 musi istnieć, być zwykłym plikiem, nie może być pusty i musimy mieć do niego prawo odczytu."
    exit 1
fi
if [ ! -w "." ]; then
    echo "Plik $PLIK3 nie istnieje, a nie mamy prawa zapisu w bieżącym katalogu."
    exit 1
fi

cat "$PLIK1" "$PLIK2" > "$PLIK3"
echo "Zawartość plików $PLIK1 i $PLIK2 została zapisana do pliku $PLIK3."
