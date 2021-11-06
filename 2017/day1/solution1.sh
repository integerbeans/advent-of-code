#!/bin/zsh
printf "🎄 "; grep -oP '(?=(.)\1|^(.).*\2$).' input.txt | paste -sd+ | bc
