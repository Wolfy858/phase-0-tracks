class Robot
#create readers and writers for three attributes: health, damage, inventory,
#and powered_on
attr_accessor :health, :damage
attr_reader :powered_on, :inventory


#Sets initial values for attributes
  def initialize
    @health = 100
    @damage = 20
    @inventory = ["laser", "bucket of bolts"]
    @powered_on = true
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
