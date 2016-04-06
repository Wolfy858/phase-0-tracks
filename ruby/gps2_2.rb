# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Determine what items to add to list
  # Split the input string into an array of individual strings
  # Set up an empty hash to be the list
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def create_list(food)
  food_array = food.split(' ')

  groceries1 = {}
  food_array.each{|food| groceries1[food] = 1}
  p groceries1
  groceries1
end

test_list = "carrots apples grapefruit"

groceries = create_list(test_list)

# Method to add an item to a list
# input: item name and optional quantity
# steps: make a new method that accepts three arguments, the original list, new item, and its quantity
# output: updated list
def add_item_to_list(list, new_food, quantity)
   list[new_food] = quantity
  list
end

add_item_to_list(groceries, "cookies", 3)

p groceries


# Method to remove an item from the list
# input: item to remove
# steps: make a method that will remove items from current list
# output: updated list

def delete_item_from_list(list, food)
  list.delete(food)
  list
end

delete_item_from_list(groceries, "apples")

p groceries


# Method to update the quantity of an item
# input: item to update quantity
# steps: write a method to update quanity
# output: updated list

def update_item_from_list(list, food, update_quantity)
  list[food] = update_quantity
  list
end

update_item_from_list(groceries, "carrots", 7)

p groceries


# Method to print a list and make it look pretty
# input: current list (groceries)
# steps: iterate through the hash and list each key with its value
# output: a nice list

def pretty_list(list)
  list.each{|food, quantity| puts "Please get #{quantity} #{food}."}
end


pretty_list(groceries)





release_list = create_list("")

add_item_to_list(release_list, "Lemonade", 2)
add_item_to_list(release_list, "Tomatoes", 3)
add_item_to_list(release_list, "Onions", 1)
add_item_to_list(release_list, "Ice Cream", 4)
delete_item_from_list(release_list, "Lemonade")
update_item_from_list(release_list, "Ice Cream", 1)
pretty_list(release_list)
