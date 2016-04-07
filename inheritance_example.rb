require_relative 'vehicle'
require_relative 'car'
require_relative 'bike'

car = Car.new

p '-- car --'

p car.speed
p car.accelerate
p car.honk_horn

bike = Bike.new

p '-- bike --'

p bike.speed
p bike.accelerate
p bike.ring_bell
