class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

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

spot = Puppy.new

class Beer

  def initialize
    @beer_count = 0
  end

  def taster_flight
    @beer_count += 6
  end

  def beer_me
    @beer_count += 1
  end

  def last_call
    if @beer_count >= 7
      puts "Go home!"
    end
  end

end

beer = Beer.new
beer.taster_flight
beer.last_call

beers = []
idx = 0
while idx < 50 do
  beers << Beer.new
  idx += 1
end
p beers

beers.each do |beer|
  beer.taster_flight
  beer.beer_me
  beer.last_call
end
