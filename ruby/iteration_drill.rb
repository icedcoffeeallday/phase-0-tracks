# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

=begin
# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----


def zombie_print (arr)
  puts arr.join (" * ")
end

zombie_print (zombie_apocalypse_supplies)


# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----



####REVISIT####
def zombie_alpha_sort (arr)
count = arr.length 
sorted_arr = []

until count == 0

end
p sorted_arr 
#puts item
#puts item[0]
#puts arr[0] puts word at first position in array
#puts item.index[0]

#if arr[item].to_s > arr[item+1].to_s 
#  arr[item], arr[item+1] = arr[item+1], arr[item]
#else puts "whoopsie"
#end
#end
end


#zombie_alpha_sort (zombie_apocalypse_supplies)



# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----


  
rescue Exception => e
  
end
def supply_search (arr)

puts "What would you like to check for?"
search_item = gets.chomp.to_s
count = arr.length
found = ""

  arr.each do |item|
    if item.downcase == search_item.downcase 
      found = true
      break if true
    end
  end

  if found == true
    puts "Yes, you have #{search_item}!"
  else
    puts "You're gonna have to go on a raid for that!"
  end
end

supply_search(zombie_apocalypse_supplies)




# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def jettison_stuff (arr)

lightened_load = []

5.times do |item|
  lightened_load << arr[item]
end
#p arr
p lightened_load

end

jettison_stuff (zombie_apocalypse_supplies)



# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

def combine_forces (arr1, arr2)
  total = arr1.concat arr2
  total.uniq!
  p total
end

combine_forces(other_survivor_supplies, zombie_apocalypse_supplies)

=end

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

def print_animals (hash)
  hash.each do |k,v| print "#{k} - #{v} * "
end
end

#print_animals(extinct_animals)


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def extinction_sort (hash)
  new_hash = {}
  hash.each do |k,v|
    if v < 2000
      new_hash[k] = v
  end
end
  p new_hash
end

extinction_sort(extinct_animals)


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

def extinction_adjustment(hash)
  hash.each do |k,v| 
    hash[k] = v-3
  end
  p hash
end

extinction_adjustment(extinct_animals)

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def animal_checker(hash,animal)
found = false
hash.each do |k,v|
  if k.to_s == animal
    puts "Oh no! #{animal} is on this list. The earth misses you, sweet #{animal}!"
    found = true
    break if true
  end
end
if found == false 
  puts "Whew! #{animal} is not on the list."
end
end

animal_checker(extinct_animals,"Andean Cat")
animal_checker(extinct_animals,"Dodo")
animal_checker(extinct_animals,"Saiga Antelope")


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
