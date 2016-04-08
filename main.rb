require_relative 'animal_module'
require_relative 'cat'
require_relative 'dog'
require_relative 'pig'


cat = Cat.new('black', 4, 300)
p cat.color
dog = Dog.new('white', 4, 200)
p dog.price
pig = Pig.new('pink', 4, 100)
p pig.color
