# module Shout
#
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!!! :D"
#   end
#
# end

# puts Shout.yell_angrily('argh')
# puts Shout.yelling_happily('w00t')

module Shout

  def yell(words)
    words.upcase + "!!!"
  end

end

class FootballCoach
  include Shout
end

class DragonBorn
  include Shout
end

coach = FootballCoach.new
puts coach.yell("c'mon team")
dragonborn = DragonBorn.new
puts dragonborn.yell("fus roh dah")
