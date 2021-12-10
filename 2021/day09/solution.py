#!/usr/bin/env python3
import numpy,collections
from scipy.ndimage import minimum_filter as mf, label as l

def part_one(i): 
    return sum(numpy.where((i == mf(i, footprint=[[0,1,0],[1,1,1],[0,1,0]])) & (i < 9), i+1, 0).flatten())

def part_two(i): 
    return numpy.prod([e for _, e in collections.Counter(l(i < 9)[0].flatten()).most_common(4)[1:]])

def main():
    infile = numpy.genfromtxt("input.txt", delimiter=1, dtype=numpy.intc)
    print("🎄1: %d\n🎄2: %d" % (part_one(infile), part_two(infile),))

if __name__ == "__main__":
    main()
