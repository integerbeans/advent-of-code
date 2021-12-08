#! /bin/sh
cut -d "|" -f2 input.txt | grep -o -w -E '\w{2}|\w{3}|\w{4}|\w{7}' | awk 'END{print "🎄1:", NR}'
