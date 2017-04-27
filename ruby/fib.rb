=begin
loopcount = 0
fib_array = [0, 1, 1, 2, 3, 5]
p fib_array[-1]

test = fib_array[-1] + fib_array[-2]
p test 
=end

def fib(x)
  loopcount = 0
  fib_array = []

while loopcount = x - 2
fib_array.push [0,1]
next_num  = fib_array[-1] + fib_array[-2]
fib_array << next_num
loopcount += 1
end

p fib_array
end

p fib(6)
