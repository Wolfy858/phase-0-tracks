#Create empty hash that details will be stored in
design_hash = {}
#Prompt user for data...
puts "Please enter your name"
#...And stores it in the hash.
design_hash[:name] = gets.chomp
puts "Please enter your age."
design_hash[:age] = gets.chomp.to_i
puts "Please select a decor theme"
design_hash[:decor_theme] = gets.chomp
puts "Does your home need to be kid-friendly?"
design_hash[:childproof] = gets.chomp.downcase == "yes" ? true : false
puts "How many years will you want to keep this design theme before
redecorating?"
design_hash[:years_until_redecoration] = gets.chomp.to_i
#Iterate through the data in the hash, printing it back out to the screen
puts "The data you have entered is as follows:"
design_hash.each { |k, v| puts "#{k}: #{v}"}
#Gives the user an opportunity to re-enter the data for any of the entries
puts "Would you like to update any of these choices? Select a key to
update or 'none' if hash is correct as stands"
user_response = gets.chomp.to_sym
#If an option key was selected, prompt user for its new value
unless user_response == :none
  puts "Select a new answer for that option"
  new_value = gets.chomp
  #And updates the hash with new values based on which types
  #of data was selected to be updated
  if user_response == :age || :years_until_redecoration
    design_hash[user_response] = new_value.to_i
  elsif user_response == :childproof
    design_hash[user_response]= new_value == "true" ? true : false
  else
    design_hash[user_response] = new_value
  end
end
#Prints  the latest version of the hash and exits the program
puts "Here is your updated version of your hash"
design_hash.each { |k, v| puts "#{k}: #{v}"}
