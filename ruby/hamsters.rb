puts "What's the hamster's name?"
hamster_name = gets.chomp

puts "Volume level from 1-10?"
hamster_volume_tolerance = gets.chomp.to_i

puts "What's the fur color?"
hamster_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
hamster_adoptability = gets.chomp

puts "Estimated age?"
hamster_age = gets.chomp.to_i
if hamster_age == 0
  hamster_age = nil
end

#testing!
p hamster_name
p hamster_volume_tolerance
p hamster_color
p hamster_adoptability
p hamster_age
