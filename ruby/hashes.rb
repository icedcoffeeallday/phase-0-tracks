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
#    - Look up key based on user input
#    - Replace value in that key with user input
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

#user_confirmation
puts "Here's what you entered for the client. Would you like to modify anything? Answer yes/no."
    design_form.each {|key, value| puts "#{key}: #{value}" }

modify_form = gets.chomp
  if modify_form == "yes"
    puts "Here are the names of the form values you can edit. Type in the name of a single form field in your response."
    design_form.each {|key, value| puts "#{key}: #{value}" }
    #get user input for key to update
    update_key = gets.chomp.to_sym
    puts "What would you like to change this answer to?"
    #get user input for value to update
    new_value = gets.chomp
    design_form[update_key] = new_value
    puts "Here's your updated form!"
    design_form.each {|key, value| puts "#{key}: #{value}" }
  else 
    puts "Here's the final form!"
    design_form.each {|key, value| puts "#{key}: #{value}" }
  end
