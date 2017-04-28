#Josh Nickell / Andrea Scott Pair Programming

#array farm_animals
farm_animals = ["pig", "horse", "goat", "cow"]
home_animals = []

#hash animals_one
animals_one ={
  name: "Bob", 
  breed: "Arabian", 
 color: "Brown",
 height: "5 Hands"
}

#array.each
farm_animals.each do |key|
 puts key
end

#array.map!
puts farm_animals
farm_animals.map! do |key| 
 key.upcase
end
puts farm_animals

#hash.each
animals_one.each do |key, value| 
 puts "#{key}: #{value}"
end


#release2

test_arr = ["apple","banana","peach","strawberry"]
test_hash = {
  letter_1: "a",
  letter_2: "b",
  letter_3: "c",
  letter_4: "d"
}

#iterate and delete based on criteria - array
test_arr.delete_if { |word| word == "apple" }
p test_arr

#iterate and delete based on criteria - hash
test_hash.delete_if { |k,v| k == :letter_3 || v == "a" }
p test_hash

#A method that filters a data structure for only items that do satisfy a certain condition
p test_arr
test_arr.keep_if { |word| word.length >= 6 
}
p test_arr

#A method that filters a data structure for only items that do satisfy a certain condition
p test_hash
test_hash.keep_if { |k,v| v.next == "c" } 
p test_hash

#A different method that filters a data structure for only items satisfying a certain condition
test_arr.find_all { |word| word.chars.first == "a" || word.chars.last == "y" }
test_hash.select { |k,v| v < "c"}

#A method that will remove items from a data structure until the condition in 
#the block evaluates to false, then stops
test_arr.reject { |k| k < "peach"}
test_hash.reject { |k, v| v < "b"} 







