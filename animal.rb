class Animal

  def initialize(kind, color, legs, price)
    @kind = kind
    @color = color
    @legs = legs
    @price = price
  end

  def kind
    @kind
  end

  def color
    @color
  end

  def legs
    @legs
  end

  def price
    @price
  end
end

animals = []

dog = Animal.new("dog", "white", 4, 200)
cat = Animal.new("cat", "black", 4, 100)
pig = Animal.new("pig", "pink", 4, 300)

animals << dog
animals << cat
animals << pig

animals.each do |pet|
  puts pet.kind
  puts pet.color
  puts pet.legs
  puts pet.price
end
