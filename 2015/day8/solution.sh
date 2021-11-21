#! /bin/sh
printf "🎄: "; cat input.txt | perl -nE '$_ = $xmas += length($_) - length(eval "\$n = $_") - 1; say' | tail -n1
printf "🎄: ";cat input.txt | perl -nE '$_ = $xmas += length(quotemeta($_)) + 1 - length($_); say' | tail -n1
