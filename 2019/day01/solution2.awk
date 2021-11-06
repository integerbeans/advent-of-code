{
  $1 = int($1/3)-2; 
  while($1 >= 0) {res += $1; $1 = int($1/3)-2 }
} 

END { 
    print "🎄", res
    }
