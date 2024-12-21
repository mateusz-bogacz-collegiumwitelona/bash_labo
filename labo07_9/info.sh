#!/bin/bash

plikow=$(find . -maxdepth 1 -type f | wc -l)

katalogow=$(find . -maxdepth 1 -type d | wc -l)

#-1 dlatego że  bieżący katalog jest również liczony
katalogow=$((katalogow - 1))

echo "Plików: $plikow"
echo "Katalogów: $katalogow"