#Your program should ...

#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.
#Print the hash back out to the screen when the designer has answered all of the questions.
#Give the user the opportunity to update a key (no need to loop, once is fine). 
# After all, sometimes users make mistakes! If the designer says "none", skip it. 
#But if the designer enters "decor_theme" (for example), your program 
#should ask for a new value and update the :decor_theme key. 
#(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
#Print the latest version of the hash, and exit the program.

#the client's name, age, number of children, decor theme, 
#and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

#Pseudocode!

#Initialize hash
#Ask user questions
#Assign hash keys to questions
#Convert user response data to correct data type
#Store data in hash key correlating with question
#Once user is done entering information, print out results with hash keys and user-entered answers
#Ask user if they would like to update any given answer:
# - If user responds "none" or "no", thank them and skip to final step
# - If user responds with a hash key they want to update, have them enter the new value for that key
# - Note: no loop built for multiple key updates, per instructions
#Print out final form

#methods
def to_boolean (x)
  if x == "y"
    true
  elsif x == "n"
    false
  else nil
  end
end
    
#DRIVER CODE

#initialize hash
design_form = {}

#questions
puts "What is client's name?"
  design_form[:name] = gets.chomp
puts "Client's age?"
  design_form[:age] = gets.chomp.to_i
puts "Client's phone number?"
  design_form[:phone] = gets.chomp
puts "Client's address?"
  design_form[:address] = gets.chomp
puts "Number of children?"
  design_form[:number_children] = gets.chomp.to_i
puts "Square footage of space to be designed?"
  design_form[:square_footage] = gets.chomp.to_i
puts "Client's desired decor theme?"
  design_form[:design_theme] = gets.chomp
puts "Desired project completion date?"
  design_form[:completion_date] = gets.chomp
puts "Wants sustainable/eco-friendly products? (y/n)"
  design_form[:sustainable] = gets.chomp
  design_form[:sustainable] = to_boolean(design_form [:sustainable])
puts "Client's budget?"
  design_form[:budget] = gets.chomp.to_i
puts "Anything else?"
  design_form[:notes] = gets.chomp

#user_confirmation
puts "Here's what you entered for the client. Would you like to modify anything? Answer yes/no."
puts design_form
modify_form = gets.chomp
  if modify_form == "no"
    puts "Thank you! Here's your final dossier on the #{design_form[:name]}\'s project!"
    puts "#{:name.to_s}: #{design_form[:name]}"
    puts "#{:age.to_s}: #{design_form[:age]}"
    puts "#{:phone.to_s}: #{design_form[:phone]}"
    puts "#{:address.to_s}: #{design_form[:address]}"
    puts "#{:number_children.to_s}: #{design_form[:number_children]}"
    puts "#{:square_footage.to_s}: #{design_form[:square_footage]}"
    puts "#{:design_theme.to_s}: #{design_form[:design_theme]}"
    puts "#{:completion_date.to_s}: #{design_form[:completion_date]}"
  #  puts "#{design_form[0]}"
  elsif modify_form == "yes"
    puts "OK"
  else puts "whatever"
  end
