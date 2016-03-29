my_array = []
p my_array

my_array << "first item"
my_array << "second item"
my_array << "third item"
my_array << "fourth item"
my_array << "fifth item"

p my_array

my_array.delete_at(2)
p my_array

my_array.insert(2, "new item")
p my_array

my_array.shift
p my_array

puts "It is #{my_array.include?("second item")} that my array includes the item."


second_array = ["rabbit", "monkey", "elephant"]

third_array = my_array + second_array
p third_array
