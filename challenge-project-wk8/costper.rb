#-----------------Require Things---------------------#
require 'sqlite3'
require 'date'

#-----------------MVP Methods---------------------#

class Costper
  attr_reader :db

def initialize
  @item_name = nil
  @item_total_cost = nil
  @uses = 0
  @cost_per_use = nil
  @duration_start_date = nil
  @db = SQLite3::Database.new("costpers.db")
end

def today
  Time.now.strftime('%m/%d/%Y') 
end

def show_main_menu
  puts ""
  puts "1. View all your items, uses, and Costpers"
  puts "2. Add an item"
  puts "3. Log use of an item"
  puts ""
  puts "Or, type exit to quit."
end

def add_item(name,price)
  db.execute("INSERT INTO items (name,price,cost_per_use) VALUES (?,?,?)", [name,price,price])
end


def display_items
  items = db.execute("Select id, name, price, cost_per_use from items")
  puts ""
  puts "Your items are:"
  items.each {|item| puts "#{item[0]}  |  #{item[1]}  |  $#{item[2]}  |  Costper is $#{item[3]}"}
end

def log_item_use(id)
  db.execute("INSERT INTO uses (item_id,use_date) VALUES (?,?)", [id,today])
end

def item_use_wrapper(id)
  valid_item = db.execute("SELECT * FROM items where id=?", [id])
  if valid_item.length == 1
    log_item_use(id)
    calc_cost_per_use(id)
    display_single_item_after_log(id)
  else
    puts "Whoops! Looks like that's not on your list yet. Please try again."
  end
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
  p items
end

def booyah
  happy_words = ["Dope!","Well done!","Congrats!","Great work!","Go girl!","Way to go!","Keep going!"]
  happy_words.sample
end

# def validate_integer(input)
#   input.to_i != 0
# end

end #class end


#-----------------Driver Code---------------------#

your_costper = Costper.new
menu_choice = 0

puts "Hello! It's time to calculate some Costpers. What would you like to do?"
puts "Type a number to get started."


while menu_choice != "exit"

your_costper.show_main_menu
menu_choice = gets.chomp
  if menu_choice != "exit"
    menu_choice = menu_choice.to_i
  end

case menu_choice
  when 1
    your_costper.display_items
  when 2
    puts "What's the item's name?"
      item_name = gets.chomp
    puts "How much did it cost? Don't include the dollar sign, please!"
      item_total_cost = gets.chomp.to_i
    your_costper.add_item(item_name,item_total_cost)
  when 3
    puts "Choose an item to log by typing in the number of the item:"
      your_costper.display_items
    item_choice = gets.chomp.to_i
      your_costper.item_use_wrapper(item_choice)
  when "exit"
    puts "See you next time!"
    break
  else
    puts ""
    puts "Invalid input. Enter a number that correlates with the menu, or type exit to quit."
  end

end