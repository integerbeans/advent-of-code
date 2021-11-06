#! /usr/bin/awk -f

BEGIN {RS="\n\n"}

{n=0;
for(i=1;i<=NF;i++)
if(match($i,/(iyr|ecl|pid|eyr|hcl|byr|hgt)/)&&n++==6)z++}

END {print "🎄 =>" z}
