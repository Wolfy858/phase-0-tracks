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

=begin
What did you learn about pseudocode from working on this challenge?
-This challenge reinforced my previous experiences with pseudocoding, which left me feeling that
the practice makes me feel more confused about the coding process than I was prior to attempting
to pseudocode. I understand that many programmers find it helpful, but all my experiences thus far
indicate that I learn better by jumping straight into the coding.

What are the tradeoffs of using arrays and hashes for this challenge?
In my opinion, hashes are superior to arrays for this challenge. The reason is because
there is no reason within the problem construct for our list to be ordered, which is what arrays are good for.
Hashes, in contrast, are especially useful for this kind of list, because they allow the food items to be stored
as keys, and the quantities for those items to be stored as values.

What does a method return?
A method implicitly returns whatever the last line of code contained in it evaluates to. Alternatively, it returns whatever
is specified by a return statement.

What kind of things can you pass into methods as arguments?
Any datatype or object can be passed into methods as arugments. Even sections of code (blocks) can be passed into methods.

How can you pass information between methods?
You can pass the result evaluated from one method call by passing it in as an argument to another method. To use an example from this assignment,
we could pass create_list(food) to add_item_to_list like so: add_item_to_list(create_list(food), item, quantity).

What concepts were solidified in this challenge, and what concepts are still confusing?
This challenge was solid review of basic method use, and did not leave me feeling confused about much at the end. The only thing I wonder
about is why we would need two separate methods for add_item_to_list and update_item_from_list, as their code is completely identical. Perhaps
there was something wrong with our implementations to get this unusual result.
=end
