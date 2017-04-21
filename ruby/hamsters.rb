puts "What's the hamster's name?"
hamster_name = gets.chomp

puts "Volume level from 1-10?"
hamster_volume_tolerance = gets.chomp.to_i

puts "What's the fur color?"
hamster_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
hamster_adoptability = gets.chomp

def boo (x)
  if x == 'y'
    true
  else false
end
end

hamster_adoptability = boo (hamster_adoptability)

puts "Estimated age?"
hamster_age = gets.chomp.to_i
if hamster_age == 0
  hamster_age = nil
end

puts "Hamster's name is #{hamster_name}"
puts "Hamster likes a volume of #{hamster_volume_tolerance}."
puts "Hamster is #{hamster_color} color."
puts "Is hamster a good candidate for adoption? #{hamster_adoptability}"
if hamster_age == nil
  puts "Hamster age is unknown."
else
  puts "Hamster is approximately #{hamster_age}."
end