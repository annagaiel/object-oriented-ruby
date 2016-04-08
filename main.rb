require_relative 'animal_module'
require_relative 'cat'
require_relative 'dog'
require_relative 'pig'


cat = Cat.new(color:'black', legs:4, price:300)
p cat.color
dog = Dog.new(color:'white', legs:4, price:200)
p dog.price
pig = Pig.new(color:'pink', legs:4, price:100)
p pig.color
