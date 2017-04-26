#Psuedocode!

#Ask user for input
#Store initial user input
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
#Store each alias-ed name in a hash, with the "real" name as a key
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



#Initialize hash, variable

name_list ={}

quit_status = 0


#DRIVER CODE

puts "You're about to engage in espionage 101: digital spy naming ..."

while quit_status != "quit"

puts "Hit enter to continue, if you dare ... Or type 'quit' to deactivate the program, which may or may not self-destruct ..."

  quit_status = gets.chomp
    if quit_status == "quit" && name_list.empty? == false
      puts name_list.each { |k,v| puts "#{k}'s secret identity is #{v}."}
    elsif quit_status == "quit" && name_list.empty? == true
      break
  else
    quit_status = nil


puts "Who needs their identity changed?"
  name = gets.chomp.to_str
  name_letters = name.chars
  name_letters = create_alias (name_letters)
  alias_name = name_letters.join().split.reverse.join(" ")
  name_list[name.to_sym] = alias_name

puts "#{name}'s new identity is #{alias_name}."
end
end
