import sys

def solution2(steps,length,linel,slopes):
  total_trees = 1
  for pos in slopes: 
    x = y = enc_trees = 0
    while y < length:
      x,y = (pos[0] + x, pos[1] + y)
      enc_trees += int(y < length and steps[y][x%31] == "#")
    total_trees *= enc_trees 
  return total_trees

def main():
  with open(sys.argv[1], "r") as infile:
    steps = infile.readlines()
    infile.close()
 
  mapdict = {"steps": steps, "length": sum(1 for l in steps),"linel": len(steps[1])} 

  #task 1
  print(solution2(mapdict["steps"],mapdict["length"],mapdict["linel"],[[3,1]]))

  #task 2
  print(solution2(mapdict["steps"],mapdict["length"],mapdict["linel"],[[1,1],[3,1], [5,1],[7,1],[1,2]]))

if __name__=="__main__":
    main()
