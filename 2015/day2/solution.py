s = n = 0 #w

for santa in open('input.txt','r'):
  x, w, h = [int(num) for num in santa.split('x')]
  m = 2*x*w + 2*w*h + 2*h*x
  a = min(x*w, w*h, h*x)
  s += a + m # x

  f = 2 * min(x+w,w+h,h+x)
  u = x*w*h
  n += u + f

print("🎄 solution 1: %s \n🎄 solution 2: %s" % (s,n,))
