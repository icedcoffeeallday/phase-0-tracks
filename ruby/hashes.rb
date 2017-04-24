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

#Psuedocode!

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

#questions
puts "What is client's name?"
puts "Client's age?"
puts "Client's phone number?"
puts "Client's address?"
puts "Number of children?"
puts "Square footage of space to be designed?"
puts "Client's desired decor theme?"
puts "Desired project completion date?"
puts "Wants sustainable/eco-friendly products? (y/n)"
  #convert to true/false
puts "Client's budget?"