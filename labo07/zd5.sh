#!/bin/bash

start=$1
end=$2

for ((i=start; i<=end; i++)); do
    for ((j=start; j<=end; j++)); do
        printf "%4d" $((i * j))
    done
    echo
done
