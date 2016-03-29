#Handles the vowel and consonant transformation in a separate method
def transform(str)
  #establish strings to reference for vowels and consonants
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxyz'
  #creates an empty string which will be our return value
  answer = ""
  #Iterate through the string to be transformed
  idx = 0
  while idx < str.length
    current_letter = str[idx]
    #If current letter is a vowel, take the letter indexed one greater than it
    #in 'vowels'
    if vowels.include?(current_letter)
      transformed_index = vowels.index(current_letter) + 1
      #handle edge case for last vowel in 'vowels'
      transformed_index = 0 if transformed_index >= vowels.length
      answer << vowels[transformed_index]
    else
      #same structure as above but with consonants
      transformed_index = consonants.index(current_letter) + 1
      transformed_index = 0 if transformed_index >= consonants.length
      answer << consonants[transformed_index]
    end
    idx += 1
  end
  answer
end

#Initialize our hash of code names
codenames = {}
#Loop repeatedly until user types quit
puts "Type enter to proceed with name creation, or 'quit' to exit program"
input = gets.chomp
until input == "quit"

  #Receives spy's real name
  puts "Enter your real name to alias"
  real_name = gets.chomp
  #Split in to firstname and lastname to handle each separately, so they can
  #be reversed, and downcase them so that they can be transformed
  first_name_and_last_name = real_name.downcase.split(" ")


  #Transform first name and last name using map!, and capitalize them
  first_name_and_last_name.map! { |name| transform(name).capitalize }
  #Reverse the order of the names, and add them togeether with join(" ")
  new_name = first_name_and_last_name.reverse.join(" ")
  #Prints out new name, and stores it in our hash of codenames.
  puts "Introducing... #{new_name}"
  codenames[real_name]=new_name
  #prompts user for input to see if loop shall continue
  puts "continue entering names? type any key to continue or 'quit' to exit"
  input = gets.chomp
end
#Prints all names stored in codenames to the screen
codenames.each {|realname, codename| puts "#{codename} is actually #{realname}"}
