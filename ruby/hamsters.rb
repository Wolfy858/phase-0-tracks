puts "What is your hamster's name?"
name = gets.chomp
puts "How loud is your hamster on a scale of 1-10?"
volume_level = gets.chomp.to_i
puts "What is your hamster's fur color?"
fur_color = gets.chomp
puts "Is your hamster a good candidate for adoption?(Y/N)"
adoptable = gets.chomp == "Y" ? true : false
puts "What is your hamster's estimated age in years?"
age = gets.chomp
if age == ""
  age = nil
else
  age = age.to_i
end
