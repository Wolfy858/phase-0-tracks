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
def add_item_to_list(initial_list, new_food, quantity)
   initial_list[new_food] = quantity
  initial_list
end

add_item_to_list(groceries, "cookies", 3)

p groceries


# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
