#!/bin/bash

C=0

for item in /etc/*; do
    if [[ -f "$item" && ! -L "$item" ]]; then
             C=$((C + 1))
    fi
done

echo "amount of regular files in /etc: $C"
