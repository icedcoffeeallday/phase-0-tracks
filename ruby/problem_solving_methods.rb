#Pair programming: Andrea Scott and Josh Rudio

# Release 0

test_array = [33, 85, 27, 90, 15, 3] 

number = 0

def search_array (array_name, number)

loopcounter = 0
array_index = 0
easy_out_clause = 0

until easy_out_clause == true
 
 array_name.each do |value|

  case
      when value == number
        
        loopcounter += 1
        easy_out_clause = true
        array_index = loopcounter - 1
        break
      else
        loopcounter += 1
  end #case end

  easy_out_clause = true
  array_index = nil
  
  end #each end

end #until end

array_index

end #method end
 
p search_array(test_array,3)

#Release 1

def fib(x)
  loopcount = 0
  fib_array = []
  next_num = 0
  while loopcount < x
    if loopcount == 0
      fib_array << 0
    elsif loopcount == 1
      fib_array << 1
    else loopcount >= 1
      next_num = fib_array[-1] + fib_array[-2]
      fib_array << next_num
    end
  loopcount += 1
end
return fib_array
end
p fib(6)
p fib(100)

=begin
  1. For each number in an array, compare one number with the next number in the array. This will print the entire array from the smallest value to the highest from left to right.
  2. If the number being compared to the next index, is less than the next index, do nothing.
  3. If the number being compared to the next index is greater than the next index, move the larger number to the right.
  4. If the numbers are equal, do nothing.
  5. Do this for the entire array and then print the results of sorting.
=end

def bubble_sort(arr)
# arr.each do |number|
swapped = true
while swapped == true
  swapped = false
  n = arr.length - 1
  n.times do |number|
    if arr[number] > arr[number + 1]
      arr[number], arr[number +1] = arr[number +1], arr[number]
      swapped = true
    end
  end
  break if not swapped
end
  puts arr
end

sample = [2, 5, 1, 6 , 8 ,30, 27]
sample_v2 = [123, 24,  46, 98, 1, 509, 234, 279]

p bubble_sort(sample)
p bubble_sort(sample_v2)
