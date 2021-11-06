import sys

def reduce(function, iterable, initializer=None):
  it = iter(iterable)
  if initializer is None:
    value = next(it)
  else:
    value = initializer
  for element in it:
    value = function(value, element)
  return value

with open(sys.argv[1]) as f:
    r = f.read().split("\n\n")
    print("🎄 => " + str(sum(map(lambda z: len(set(z.replace("\n",""))), r))))
    print("🎄 => " + str(sum(map(lambda z: len(reduce(lambda x, y: x & y, map(set, z.splitlines()))), r))))
