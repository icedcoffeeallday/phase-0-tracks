class TodoList

def initialize (array)
  @item_array = array
end

def get_items
  @item_array
end

def add_item (item)
  @item_array << item
end

def delete_item (item)
  @item_array.delete (item)
end

def get_item (num)
  @item_array[num]
end

end

#test_list = TodoList.new
#p test_list.get_items (["do the dishes", "mow the lawn"])
