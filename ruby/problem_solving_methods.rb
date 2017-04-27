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


