#Methods

#reader:
#end_date

#Initialize
  #Instance variables
    #item_name
    #item_id
    #item_total_cost
    #uses
    #cost_per_use
    #duration_start_date
    #initialize db


#----------MVP methods

#Method to show menu of options
  #Accepts: nothing
  #Calls method to show menu of options
  #Shows menu of options:
    #1. View all items, uses and costpers
    #2. Add an item
    #3. Log use of an item

#Method to add item(item_name,item_total_cost)
  #Accepts: item name, item cost
  #Creates rows in item database with name, cost, and use
  #Output: true?

#Method to display all items with IDs
  #Accepts: nothing
  #Calls method to show list of items prefaced by Ids
  #Output: nil, will just be list

#Validation method for integers(entry)
  #Accepts gets.chomp entry
  #Queries whether it's an integer
  #If true, returns true
  #If no, return false and put error message

#Method to log single use of an item(item_id)
  #Accepts: item id
  #Creates record in use table logging use against item id

#Method to Calculate Cost Per Use
  #Accepts: item id
  #Queries item table for cost, queries use table for number of records where item_id = provided item id
  #Divides cost by sum of records returned above
  #Writes cost-per-use to item db cost-per-use field
  #Returns field value of cost-per-use
  #Note: Want single method that can be called in loop

#Method to display all items with cost per use
  #Accepts: nothing
  #Queries items table
  #Prints item ID, total cost, cost per use
  #Returns nil

#-----------Nice-to-have methods

#Method to display a single item's cost per use

#Method to display an item added

#Method to calculate End Date (use_duration,duration_start_date)

#Method to edit an item name (item_id, updated_item_name)
  #Accepts: item id, updated item name (user process: see list of items w/ ID, enter ID, enter new name)
  #Queries table for item with id match, updates name
  #Output: true?

#Method to edit an item's duration(item_id, duration)
  #Accepts: item id, updated duration (user process: see list of items w/ ID, enter ID, enter new duration)
  #Queries table for item with id match, updates duration

#Method to remove item

#Method to remove a use record


#------------Driver code! 


#Add tables if they don't already exist

#------------User interface

#Welcome + premise + CTA to add item

#Ask for item name

#Ask for cost

#Put those in database

#Offer menu of options


#-----------------table create code---------------------#

your_costper = Costper.new

#create table fancy strings
create_table_items = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    price INT,
    cost_per_use INT
  );
  SQL

create_table_uses = <<-ZZZ
  CREATE TABLE IF NOT EXISTS uses(
    id INTEGER PRIMARY KEY,
    use_date DATE,
    item_id INT,
    FOREIGN KEY (item_id) REFERENCES items(id)
  )
  ZZZ

#call table creation
  your_costper.db.execute(create_table_items)
  your_costper.db.execute(create_table_uses)