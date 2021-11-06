import sys

def readinput(inputfile):
  with open(inputfile) as ipf:
    return [int(i) for i in ipf.read().split()]

def dothemath(l):
  [print(x * y) for x in l for y in l if x + y == 2020]
  [print(x * y * z) for x in l for y in l for z in l if x + y + z == 2020]
 
def main():
  print(dothemath(readinput(sys.argv[1]))) 

if __name__=="__main__":
  main()
