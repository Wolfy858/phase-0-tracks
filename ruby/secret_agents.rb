def encrypt(str)
  index = 0
  encrypted_string = ""
  while index < str.length
    if str[index] == " "
      encrypted_string += " "
    elsif str[index] == "z"
      encrypted_string += "a"
    else
      encrypted_string += str[index].next
    end
    index += 1
  end
  encrypted_string
end

def decrypt(str)
  index = 0
  decrypted_string = ""
  while index < str.length
    current_letter = str[index]
    if current_letter == " "
      decrypted_string += " "
    else
      letter_index = "abcdefghijklmnopqrstuvwxyz".index(current_letter)
      decrypted_string += "abcdefghijklmnopqrstuvwxyz"[letter_index - 1]
    end
    index += 1
  end
  decrypted_string
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("the duck flies at midnight"))

puts "Would you like to decrypt or encrypt a password?"
answer = gets.chomp
puts "What's the password?"
password = gets.chomp
if answer == "decrypt"
  puts decrypt(password)
elsif answer == "encrypt"
  puts encrypt(password)
else
  puts "I didn't understand that response"
end
