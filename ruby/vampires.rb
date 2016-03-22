puts "How many employees would you like to process?"
num_employees = gets.chomp.to_i

num_employees.times do
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you? What year were you born?"
  age = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  likes_garlic = gets.chomp == "yes" ? true : false
  puts "Would you like to enroll in the company's health insurance?"
  healthcare_enrollment = gets.chomp == "yes" ? true : false
  puts "Please list your allergies. Type 'done' when finished."
  allergy = gets.chomp
  until allergy == 'sunshine' || allergy == 'done'
    allergy = gets.chomp
  end

  if allergy == 'sunshine'
    puts "Probably a vampire."
  else
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
  end
end

puts "Actually, never mind! What do these questions have to do
with anything? Let's all be friends."
