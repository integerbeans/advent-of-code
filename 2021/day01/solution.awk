# usage: paste -s input.txt | awk -v lag=1 -f solution.awk
# set lag to 1 for the first, and to 3 for the second riddle

{ 
    for (i = 1; i <= NF; i++) res += $i < $(i + lag) 
    } END { 
        print "🎄", res 
        }