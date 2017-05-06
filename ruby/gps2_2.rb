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
  item_list = items.split(" ")
  
  item_list.each do |item|
    grocery_list[item] = 1
  end
  return grocery_list #may not need?
end 

create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Accept item and quantity, then add them to the list
# output: confirmation step - print the list to show that the item/quantity has been added

def add_item(list,item,quantity=1)
  list[item] = quantity
  return list
end


# Method to remove an item from the list
# input: list, item name
# steps: receive item name, find item name in list, then remove
# output: print the hash again to confirm the removal

def remove_item




test_list = create_list("carrots apples cereal pizza")
add_item(test_list,"bananas")
add_item(test_list,"kale",3)
p test_list


# Method to update the quantity of an item
# input: list, item, add quantity
# steps: find item in list and replace quantity
# output: print the hash to confirm the update

# Method to print a list and make it look pretty
# input: list
# steps: print each item and quantity next to each other on their own line, separated by 3 spaces
# output: print the entire list of items and their quantities

