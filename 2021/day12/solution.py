#!/usr/bin/env python3

from collections import defaultdict

a = 'start' 
z = 'end'
res = defaultdict(list)

with open("input.txt") as infile:
    for l in infile:
        x, y = l.strip().split('-')
        res[x] += [y]
        res[y] += [x]

def iter(t, s=set(), c=a):
    if c == z: return 1
    if c in s:
        if c == a: return 0
        if c.islower():
            if t == 1: return 0
            else: t = 1

    return sum(iter(t, s|{c}, n)
                 for n in res[c])

print("🎄1: %d\n🎄2: %d" % (iter(t=1), iter(t=2),))
