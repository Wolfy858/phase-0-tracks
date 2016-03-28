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
#Print the data in the hash back out to the screen
puts "The data you have entered is as follows:"
design_hash.each { |k, v| puts "#{k}: #{v}"}
