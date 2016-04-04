class Santa
  attr_reader :reindeer_ranking, :age


  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
       "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

  def inspect
    "gender: #{@gender},
     ethnicity: #{@ethnicity},
     age: #{@age}
     "
  end

  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

end
#Driver code testing first three instance methods
s = Santa.new("female", "orcish")
s.speak
s.eat_milk_and_cookies("wreath cookie")

santas = []
example_genders = ["agender", "female", "bigender", "male",
   "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African",
   "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
#Driver code testing gender and ethnicity initialization
p santas
#Driver code testing #get_mad_at and #celebrate_birthday
p s.reindeer_ranking
s.get_mad_at("Dasher")
p s.reindeer_ranking
s.celebrate_birthday
p s.age
#Driver code testing getter methods
p s.gender
p s.ethnicity
