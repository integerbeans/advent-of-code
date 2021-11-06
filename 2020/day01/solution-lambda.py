def reduce(function, iterable, initializer=None):
  it = iter(iterable)
  if initializer is None:
    value = next(it)
  else:
    value = initializer
  for element in it:
    value = function(value, element)
  return value

with open('input.txt') as infile: l = [int(i) for i in infile.read().split()];
print(reduce(lambda x,y: x*y, [x for x in l if (2020-x) in set(l)]))

