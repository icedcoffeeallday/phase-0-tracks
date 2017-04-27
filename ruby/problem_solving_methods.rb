# Release 0

#test_array = [33, 85, 27, 90, 15, 3]
#p test_array.length
 

#number = 0

#def search_array (array_name, number)

#loopcounter = 0
#array_index = 0

# while loopcounter <= array_name.length
# array_name.each do |value| array_name.include? (number)
#  break if true
# loopcounter += 1
# array_index = loopcounter - 1
# p array_index
# p number
# p loopcounter - 1
#end
#end
 
#p search_array(test_array,33)

# v2 

test_array = [33, 85, 27, 90, 15, 3]
#p test_array.length
 

number = 0

def search_array (array_name, number)

loopcounter = 0
array_index = 0
easy_out_clause = 0

until easy_out_clause == true
 array_name.each do |value| #number == value #array_name.include? (number)

  case
  when value == number
    
    puts "it worked"
    loopcounter += 1
    easy_out_clause = true
 #   puts loopcounter
    break
  end

easy_out_clause = true
 loopcounter += 1
 array_index = loopcounter - 1

end
end

 #p array_index
 #p number
 loopcounter - 1
end
 
p search_array(test_array,85)