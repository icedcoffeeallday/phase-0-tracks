#PSEUDOCODE
#Create a list
#Add an item with a quantity to the list
#Remove an item from the list
#Update quantities for items in your list
#Print the list in sentences

# Method to create a list - create an empty list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # accept multiple items, separate them with spaces

 # set default quantity of 1

 # print the list to the console [can you use one of your other methods here?] - use the print method to show what has been entered

# output: hash



def create_list (items)
  grocery_list = Hash.new(1)
  
  items.split(" ").each { |item| grocery_list[item] = 1 }

  return grocery_list
end 

# create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Accept item and quantity, then add them to the list
# output: confirmation step - print the list to show that the item/quantity has been added

def add_item(list, item, quantity=1)
  list[item] = quantity
end


# Method to remove an item from the list
# input: list, item name
# steps: receive item name, find item name in list, then remove
# output: print the hash again to confirm the removal

def remove_item(list, item)
  list.delete(item)
end



# Method to update the quantity of an item
# input: list, item, add quantity
# steps: find item in list and replace quantity
# output: print the hash to confirm the update

def update_quantity_of_items(list, item, quantity)
  list[item] = quantity
end




# Method to print a list and make it look pretty
# input: list
# steps: print each item and quantity next to each other on their own line, separated by 3 spaces
# output: print the entire list of items and their quantities

def print_pretty(list)
  list.each { |item, value| puts "#{item}   #{value}" }
end



test_list = create_list("carrots apples cereal pizza")
add_item(test_list,"bananas")
add_item(test_list,"kale",3)
remove_item(test_list,"cereal")
update_quantity_of_items(test_list,"kale",10)
p print_pretty(test_list)

#Reflection
#What did you learn about pseudocode from working on this challenge?
#As in coding, I learned more about balancing speed with detail and clarity. While the pseudocode written here is longer than I would usually write, it was very helpful for collaboration.

#What are the tradeoffs of using arrays and hashes for this challenge?
#Hashes all the way! Well, almost. An array is really helpful in order to translate a list into hash keys, but otherwise hashes allow the right level of granularity and meaning in this data set, since we need to know quantity (or value) as well as item (or key.)

#What does a method return?
#Great learn from today! A method returns what is explicitly called by `return` or the last line of the method. I gained a lot of clarity on this today.

#What kind of things can you pass into methods as arguments?
#Pretty much any data type; in this exercise, we used hashes, strings, and integers; we could also have passed in arrays and floats.

#How can you pass information between methods?
#To pass information between methods, two things need to happen: first, the method needs to return something to pass; second, something in the driver code (a variable, perhaps?) needs to be available to store it and pass it to the subsequent method as an argument.

#What concepts were solidified in this challenge, and what concepts are still confusing?
#Implicit and explicit returns became much clearer today, as did passing data between methods. I still need to do some work with iterating in hashes and arrays.