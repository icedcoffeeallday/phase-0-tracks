#-----------------Require Things---------------------#
require 'sqlite3'
require 'date'

#-----------------MVP Methods---------------------#

class Costper
  attr_reader :db
  # , :cost_per_use, :item_total_cost
  # attr_accessor :uses

def initialize
  @item_name = nil
  @item_total_cost = nil
  @item_id = nil #does this end up being a query against table?
  @uses = 0
  @cost_per_use = nil
  @duration_start_date = nil
  @db = SQLite3::Database.new("costpers.db")
end

def today
  Time.now.strftime('%m/%d/%Y') 
end

def show_main_menu
  puts "1. View all your items, uses, and Costpers"
  puts "2. Add an item"
  puts "3. Log use of an item"
    #calls item display, then responds to menu call to log item
end

def add_item(name,price)
  db.execute("INSERT INTO items (name,price,cost_per_use) VALUES (?,?,?)", [name,price,price])
end


def display_items
  items = db.execute("Select id, name, price, cost_per_use from items")
  items.each {|item| puts "#{item[0]}  |  #{item[1]}  |  $#{item[2]}  |  Costper is $#{item[3]}"}
end

def log_item_use(id)
  db.execute("INSERT INTO uses (item_id,use_date) VALUES (?,?)", [id,today])
end


def uses(id)
  @uses = db.execute("SELECT * FROM uses WHERE item_id = #{id}").length
    if @uses == 0
      @uses = 1
    end
  @uses
end

def item_total_cost(id)
  @item_total_cost = db.execute("SELECT price FROM items WHERE id = #{id}").join().to_i
end

def calc_cost_per_use(id)
  @cost_per_use = item_total_cost(id) / uses(id)
  db.execute("UPDATE items SET cost_per_use=? WHERE id = #{id}",[@cost_per_use])
end

def display_single_item_after_log(id)
  items = db.execute("SELECT name, price, id, cost_per_use FROM items WHERE id = #{id}").flatten
  puts "#{booyah} Your #{items[0]} now cost(s) $#{items[3]} per use."
end

def test_output_items
  p db.execute("SELECT items.name, items.price, items.cost_per_use FROM items")
  #p db.execute("SELECT items.name, uses.use_date from uses JOIN items on uses.item_id = items(id)")
end

def booyah
  happy_words = ["Dope!","Well done!","Congrats!","Great work!","Go girl!","Way to go!","Keep going!"]
  happy_words.sample
end


end #class end


#-----------------Driver Code---------------------#

your_costper = Costper.new

puts "******** Hello! It's time to calculate some Costpers. What would you like to do?"

your_costper.show_main_menu

puts "Type a number to get started."
menu_choice = gets.chomp.to_i

case menu_choice
  when 1
    your_costper.display_items
  when 2
    puts "What's the item's name?"
      item_name = gets.chomp
    puts "How much did it cost?"
      item_total_cost = gets.chomp.to_i
    your_costper.add_item(item_name,item_total_cost)
  when 3
    puts "Choose an item to log by typing in the number of the item"
      your_costper.display_items
    
    item_choice = gets.chomp.to_i
      your_costper.log_item_use(item_choice)
      your_costper.calc_cost_per_use(item_choice)
      your_costper.display_single_item_after_log(item_choice)
  else
end





#-----------------Test Code---------------------#

#your_costper.add_item("Louboutins",945)
#your_costper.display_items
# your_costper.log_item_use(2)
# your_costper.log_item_use(3)
#your_costper.calc_cost_per_use(3)
#your_costper.test_output_items
#your_costper.display_all_items_with_CPU