# Release 0

test_array = [33, 85, 27, 90, 15, 3] 

number = 0

def search_array (array_name, number)

loopcounter = 0
array_index = 0
easy_out_clause = 0

until easy_out_clause == true
 
 array_name.each do |value| #number == value #array_name.include? (number)

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