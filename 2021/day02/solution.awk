#!/usr/bin/env -S awk -f

/forward/ { 
            x += $2
            z += y * $2 
            }
/up/      { 
            y -= $2 
            }
/down/    { 
            y += $2 
            }
END       { 
            print "🎄1:", x * y
            print "🎄2:", x * z
            }
