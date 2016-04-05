class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(i)
    i.times {puts ("woof")}
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(x)
    return x*7
  end

  def hungry
    return true
  end

end

fido = Puppy.new
fido.fetch("rubber duck")

fido.speak(4)

fido.roll_over

puts fido.dog_years(4)

puts fido.hungry
