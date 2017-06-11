#-----------------Require Things---------------------#
require 'sqlite3'
require 'date'

#-----------------MVP Methods---------------------#

class Costper
  attr_reader :db

def initialize
  @item_name = nil
  @item_total_cost = nil
  @item_id = nil #does this end up being a query against table?
  @uses = nil
  @cost_per_use = nil
  @duration_start_date = nil
  @db = SQLite3::Database.new("costpers.db")
end


#Method to show menu of options
  #Accepts: nothing
  #Calls method to show menu of options
  #Shows menu of options:
    #1. View all items, uses and costpers
    #2. Add an item
    #3. Log use of an item


def today
  Time.now.strftime('%m/%d/%Y') 
end

def show_main_menu
  puts "1. View all your items, uses, and Costpers"
  puts "2. Add an item"
  puts "3. Log use of an item"
    #calls item display, then responds to menu call to log item
end

#Method to add item(item_name,item_total_cost)
  #Accepts: item name, item cost
  #Creates rows in item database with name, cost, and use
  #Output: true?

def add_item(name,price)
  db.execute("INSERT INTO items (name,price) VALUES (?,?)", [name,price])
end

#Method to display all items with IDs and prices
  #Accepts: nothing
  #Calls method to show list of items prefaced by Ids
  #Output: nil, will just be list

def display_items
  items = db.execute("Select id, name, price from items")
  items.each {|item| puts "#{item['id']}  |  #{item['name']}  |  $#{item['price']}"}
end

#Method to log single use of an item(item_id)
  #Accepts: item id
  #Creates record in use table logging use against item id

def log_item_use(id)
  db.execute("INSERT INTO uses (item_id,use_date) VALUES (?,?)", [id,today])
end


#Method to Calculate Cost Per Use
  #Accepts: item id
  #Queries item table for cost, queries use table for number of records where item_id = provided item id
  #Divides cost by sum of records returned above
  #Writes cost-per-use to item db cost-per-use field
  #Returns field value of cost-per-use
  #Note: Want single method that can be called in loop
def calc_cost_per_use(id)
  uses = db.execute("SELECT * FROM uses WHERE item_id = #{id}").length
    if uses == 0
      uses = 1
    end
  @item_total_cost = db.execute("SELECT price FROM items WHERE id = #{id}").join().to_i
  @cost_per_use = @item_total_cost / uses
  #need to come back to this. looking for resources on updating a table field as part of the calculation,
  #so that items has easier access to cost-per-use (instead of having to re-run the calc method over and over)
  db.execute("UPDATE items SET cost_per_use=(?) WHERE id = #{id}",[@cost_per_use])
end

#Method to display all items with cost per use
  #Accepts: nothing
  #Queries items table
  #Prints item ID, total cost, cost per use
  #Returns nil
def display_items_with_CPU
  items = db.execute("SELECT name, price, id, cost_per_use FROM items")
  items.each do |item|
    p item[0]
    p item[1]
    p item[2]
    p item[3]
    p item[4]
    p "Congratulations! Your #{item[0]} now costs $#{calc_cost_per_use(item[2])} per use!"
  end 
end


#Validation method for integers(entry)
  #Accepts gets.chomp entry
  #Queries whether it's an integer
  #If true, returns true
  #If no, return false and put error message

end #class end


#-----------------Driver Code---------------------#

your_costper = Costper.new

#create table fancy strings
create_table_items = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    price INT
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

#-----------------Test Code---------------------#

#your_costper.add_item("Louboutins",945)
#your_costper.display_items
# your_costper.log_item_use(2)
# your_costper.log_item_use(3)
your_costper.db.execute("Select * from uses").length
your_costper.calc_cost_per_use(1)
#your_costper.display_items_with_CPU