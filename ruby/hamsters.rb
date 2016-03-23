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

puts "Your hamster's name is #{name}"
puts "Your hamster's volume is #{volume_level} on a scale of 1-10"
puts "Your hamster's fur color is #{fur_color}"
puts "Your hamster #{adoptable ? 'is' : 'isn\'t' } a good candidate for adoption."
puts "Your hamster's estimated age is #{age.nil? ? 'unknown' : age}"
