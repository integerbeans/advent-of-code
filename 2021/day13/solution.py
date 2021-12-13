#!/usr/bin/env python3

infile = open(0).read().splitlines()
e = [tuple(map(int,l.split(','))) for l in infile if ',' in l]
i = [('y' in l,int(l[13:])) for l in infile[len(e)+1:]]
res = lambda n,Y: min([v+1 for y,v in n if Y^y] or [10000])

def solve(e,i):
    b = lambda n,i: abs((n//i)%2*(i-2)-n%i)
    return set((b(x,res(i,1)),b(y,res(i,0))) for x,y in e)

def plot_and_print():
    print("🎄1: %s \n🎄2:\n%s" % 
            (len(solve(e,i[:1])),
            '\n'.join(''.join(".❄️"[(x,y) in solve(e,i)] for x in range(res(i,1))) for y in range(res(i,0)))),)

if __name__ == "__main__":
    plot_and_print()