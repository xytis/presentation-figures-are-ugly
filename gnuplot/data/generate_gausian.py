import math

f = open('gaussian', 'w')
x = -5.0

while x <= 5.0:
  print(x)
  print(math.exp(-x**2/2))
  f.write("{0:f}\t{1:f}\n".format(x, math.exp(-x**2/2)))
  x += 0.5

f.close()

