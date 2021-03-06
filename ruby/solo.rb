class Robot
#create readers and writers for three attributes: health, damage, inventory,
#and powered_on
attr_accessor :health, :damage
attr_reader :powered_on, :inventory


#Sets initial values for attributes
  def initialize(health, damage, powered_on)
    @health = health
    @damage = damage
    @inventory = ["laser", "bucket of bolts"]
    @powered_on = powered_on
  end

  #Fights another robot, only dealing damage if robots are equipped with lasers
  def battle(other_robot)
    other_robot.health -= @damage if @inventory.include?("laser")
    self.health -= other_robot.damage if other_robot.inventory.include?("laser")
  end

  #Repairs 10 damage if bolts in inventory
  def heal
    self.health += 10 if inventory.include?("bucket of bolts")
  end

  #moves robot in specified direction
  def move(direction)
    puts "The robot moves one space#{direction}."
  end

  #more aptly named setter methods for powered_on
  def power_down
    @powered_on = false
  end

  def power_up
    @powered_on = true
  end

  #Adds the specified item to inventory
  def pick_up_item(item)
    @inventory << item
  end
end

puts "Type any key to spawn a robot, or 'done' to indicate you're finished"
input = gets.chomp
robots = []
while input != 'done'
  puts "Enter robot's initial health"
  health = gets.chomp.to_i

  puts "Enter robot's initial damage"
  damage = gets.chomp.to_i

  puts "Will robot be powered on initially?"
  powered_on = gets.chomp == "yes" ? true : false

  robots << Robot.new(health, damage, powered_on)
  puts "Another robot?"
  input = gets.chomp
end

robots.each do |robot|
  puts "This robot has #{robot.health} HP, deals #{robot.damage} damage, and
  #{robot.powered_on ? 'is' : 'is not'} powered on."
end
