puts "Hello, HR team! How many employees are you processing today?"
employees = gets.chomp.to_i

while employees > 0

puts "What is your name?"
name = gets.chomp
  if 
    (name == 'Drake Cula' || name == 'Tu Fang')
    obvious_vampire_name = true
  else
    obvious_vampire_name = false
  end

puts "How old are you?"
stated_age = gets.chomp.to_i

puts "Oh, cool. I\'m bad at math. What year were you born?"
year_born = gets.chomp.to_i
calculated_age = 2017 - year_born

puts "We're going to have a special lunch for your interview, and our cafeteria is famous for its garlic bread. Should we order some for you?"
likes_garlic = gets.chomp

puts "Almost done! We have great benefits, too. Would you like to enroll in our health insurance?"
wants_insurance = gets.chomp

# 4/19: Left off here, stuck with getting sunshine allergies to evaluate correctly. True only shows up if most recent allergy is true.
# need to store responses in array?
puts "One final thing! Do you have any allergies? Please list them one-by-one, and type 'done' when your list is finished."
allergies = 0
until allergies == "done"
  allergies = gets.chomp
  if (allergies == 'sunshine' || allergies == 'Sunshine')
    sunshine_allergy = true
  else
    sunshine_allergy = false
  end
end
if sunshine_allergy == true
  puts vampire_status = "Probably a vampire."
else
  puts case 
    
  when
    (calculated_age == stated_age) && (likes_garlic == 'yes' || wants_insurance == 'yes') && obvious_vampire_name == false
    vampire_status = "Probably NOT a vampire."
    #employee got their age right, and is willing to eat garlic bread or sign up for insurance, 
    #the result is “Probably not a vampire.”
  when 
    (calculated_age != stated_age) && (likes_garlic == 'no' || wants_insurance == 'no') && obvious_vampire_name == false
    vampire_status = "Probably a vampire."
    #employee got their age wrong, and hates garlic bread or waives insurance,
    # the result is “Probably a vampire.”
  when
    (calculated_age != stated_age) && likes_garlic == 'no' && wants_insurance == 'no' && obvious_vampire_name == false
    vampire_status = "Almost certainly a vampire."
    #employee got their age wrong, hates garlic bread, and doesn’t want insurance,
    #the result is “Almost certainly a vampire.”
  when 
    obvious_vampire_name == true
    vampire_status = "Definitely a vampire."
    #anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. 
    #In that case, you should print “Definitely a vampire.”
  else
    vampire_status = "Results inconclusive."
  end
end

employees -= 1

end
