#challenge asks

#Swapping the first and last name.

#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants 
#(everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 
#'u' would become 'a', 
#and 'd' would become 'f'.


#Psuedocode!

#Ask user for input
#Store user input in an array
#Split input into distinct words in an array
#Retrieve
#Exchange item 0 for item 1 in array
#Change vowels to next vowel in list
# - method
#   - if lowercase:
#     => list lower case vowels in array
#     => for each vowel in name array, replace with letter.next
#     => for u, replace with a (ie. loop through the list when the list end is reached)
#   - if uppercase:
#     => same as above, but with uppercase vowel array
#   => If time, explore how to use the input array case to query against a single list of vowels, 
#       then return a result that matches the user-entered case.
#Change consonants to the next consonant in list
# - method
  # - if lowercase:
  #     => list lower case consonants in an array
  #     => for each consonant in name array, replace with letter.next
  #     => for z, replace with b
  #   => if uppercase:
  #     => same as above, but with uppercase consonant array
  #   => If time, explore same ask as in vowel array.
#Store alias-ed name as next item in initial array
#Return alias-ed name, ask user if they want to alias another name
#Loop through user inputs with methods above
#Store each alias-ed name in the array initialized above
#Print out list of user-entered names followed by alias-ed names.

#method

def create_alias(word)
  vowels_lower = ['a','e','i','o','u']
  vowels_upper = vowels_lower.map(&:upcase)
  consonants_lower = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  consonants_upper = consonants_lower.map(&:upcase)
  
updated_vowels = word.map do |char|
  case
  when vowels_lower.include?(char)
    vowels_lower.rotate(1)[vowels_lower.index(char)]
  when vowels_upper.include?(char)
    vowels_upper.rotate(1)[vowels_upper.index(char)]
  when consonants_lower.include?(char)
    consonants_lower.rotate(1)[consonants_lower.index(char)]
  when consonants_upper.include?(char)
    consonants_upper.rotate(1)[consonants_upper.index(char)]
  else (char)
end
end
end


#Initialize array/variable(s)
name_list =[]
quit_status = 0

#DRIVER CODE


#####this loop needs love#####
puts "You're about to engage in espionage 101: digital spy naming ..."
while quit_status != "quit"
puts "Hit enter to continue, if you dare ... Or type 'quit' to deactivate the program, which may or may not self-destruct ..."
quit_status = gets.chomp
  if quit_status == "quit" && name_list.empty? == false
   puts "debug" #need to update this!
 #break is not working, needs love
 break if quit_status == "quit" && name_list.empty? == true
else
  quit_status = nil
####needs love^^^#########

puts "Who needs their identity changed?"
  name = gets.chomp.to_str
  name_list << name
  name_letters = name.chars
#process letters
name_letters = create_alias (name_letters)
alias_name = name_letters.join().split.reverse.join(" ")
name_list << alias_name
puts "#{name}'s new identity is #{alias_name}."
end
end



    #debugging
    #p name
    #p name.chars
    #p name_list
  #p name_list