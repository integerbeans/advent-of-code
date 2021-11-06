import sys
from parse import parse

def firstsolution(filename):
    with open(filename) as f:
            lines = f.read().splitlines()
            count = 0
            for line in lines: 
              r = parse("{min}-{max} {letter}: {password}", line)
              if (int(r['min']) <= r['password'].count(r['letter'])) and (int(r['max']) >= r['password'].count(r['letter'])): 
                count = count + 1  
            print(count)


def secondsolution(filename):
    with open(filename) as f:
            lines = f.read().splitlines()
            count = 0
            for line in lines: 
              r = parse("{min}-{max} {letter}: {password}", line)  
              if (r['password'][(int(r['min']) - 1)] is r['letter']) is not (r['password'][(int(r['max']) - 1)] is r['letter']):
                count = count + 1
            print(count)

def main():
    firstsolution(sys.argv[1])
    secondsolution(sys.argv[1])

if __name__=="__main__":
  main()
