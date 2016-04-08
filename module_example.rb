module Motion
  attr_reader :speed, :direction
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car
  include Motion

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike
  include Motion

  def ring_bell
    puts "Ring ring!"
  end

end

toyota = Car.new
p toyota.speed
toyota.accelerate
toyota.accelerate
p toyota.accelerate
p toyota.honk_horn

bike = Bike.new
p bike.speed
p bike.accelerate
