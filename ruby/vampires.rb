puts "What is your name?"
name = gets.chomp

puts "How old are you?"
stated_age = gets.chomp.to_i

puts "Oh, cool. I\"m bad at math. What year were you born?"
year_born = gets.chomp.to_i
calculated_age = 2017 - year_born

puts "We're going to have a special lunch for your interview, and our cafeteria is famous for its garlic bread. Should we order some for you?"
likes_garlic = gets.chomp

puts "Almost done! We have great benefits, too. Would you like to enroll in our health insurance?"
wants_insurance = gets.chomp

#p name
#p stated_age
#p year_born
#p calculated_age
#p likes_garlic
#p wants_insurance

case
when
  (calculated_age == stated_age) && (likes_garlic = 'yes' || wants_insurance = 'yes')
  vampire_status = "Probably NOT a vampire."
  #employee got their age right, and is willing to eat garlic bread or sign up for insurance, 
  #the result is “Probably not a vampire.”
when 
  (calculated_age != stated_age) && (likes_garlic = 'no' || wants_insurance = 'no')
  vampire_status = "Probably a vampire."
  #employee got their age wrong, and hates garlic bread or waives insurance,
  # the result is “Probably a vampire.”
when
  (calculated_age != stated_age) && likes_garlic = 'no' && wants_insurance = 'no'
  vampire_status = "Almost certainly a vampire."
  #employee got their age wrong, hates garlic bread, and doesn’t want insurance,
  #the result is “Almost certainly a vampire.”
when 
  name == "Drake Cula" || name = "Tu Fang"
  vampire_status = "definitely a vampire."
  #anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. 
  #In that case, you should print “Definitely a vampire.”
else
  vampire_status = "Results inconclusive."
end

