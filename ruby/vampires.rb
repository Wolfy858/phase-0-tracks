puts "What is your name?"
name = gets.chomp
puts "How old are you? What year were you born?"
age = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
likes_garlic = gets.chomp == "yes" ? true : false
puts "Would you like to enroll in the company's health insurance?"
healthcare_enrollment = gets.chomp == "yes" ? true : false

if (name == "Drake Cula" || name == "Tu Fang")
  puts "Definitely a vampire"
elsif age > 100 && (!likes_garlic && !healthcare_enrollment)
  puts "Almost certainly a vampire"
elsif age > 100 && (!likes_garlic || !healthcare_enrollment)
  puts "Probably a vampire"
elsif age < 100 && (likes_garlic || healthcare_enrollment)
  puts "Probably not a vampire."
else
  puts "Results inconclusive."
end
