class Animal

  attr_accessor :kind, :color, :legs, :price

  def initialize(hash)
    @kind = hash[:kind]
    @color = hash[:color]
    @legs = hash[:legs]
    @price = hash[:price]
  end

end

animals =[]

dog = Animal.new({kind:'dog', color:'black', legs:4, price: 300})
cat = Animal.new({kind:'cat', color:'white', legs:4, price:200})
pig = Animal.new({kind:'pig', color:'pink', legs:4, price:100})



animals << dog
animals << cat
animals << pig

animals.each do |pet|
  puts pet.kind, pet.color, pet.legs, pet.price
end
