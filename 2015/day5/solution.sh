#!/bin/zsh
printf "🎄 "; egrep "(.*[aeiou]){3}" input.txt | grep "\(.\)\1" | egrep -v "(ab|cd|pq|xy)" | wc -l
printf "🎄 "; grep "\(..\).*\1" input.txt | grep "\(.\).\1" | wc -l
