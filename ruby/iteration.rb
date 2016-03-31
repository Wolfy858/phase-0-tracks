def block_method (bar1, bar2, bar3)
  yield(bar1, bar2, bar3)
  puts "The block is finished running."
end

block_method(1, 2, 5) {|x, y, z| puts "#{x + y + z}"}

letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

letters.each {|letter| letter = letter.next }

puts "After .each call"
p letters

numbers = { 1 => 'one', 2 => 'two', 3 => 'three' }

numbers.each do |digit, word|
  puts "#{digit} is spelled out as #{word}"
end

letters = ["a", "b", "c", "d", "e"]
puts "Original data:"
p letters

modified_letters = letters.map do |letter|
  puts letter
  letter.next
end

puts "After .map call"
p modified_letters


cali_cities = ["San Diego", "Los Angeles", "San Francisco"]

teams= { "Los Angeles" => "Lakers", "Chicago" => "Bulls", "Brooklyn" => "Nets" }

puts cali_cities
capitalized_cities = []
cali_cities.each {|city| capitalized_cities << city.upcase }
puts capitalized_cities

cali_cities.map! {|city| city.upcase }
puts cali_cities

puts teams
downcased_teams = {}
teams.each do |city, team|
    downcased_teams[city.downcase] = team.downcase
end
puts downcased_teams
