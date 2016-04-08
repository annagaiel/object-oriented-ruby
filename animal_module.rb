module AnimalModule

  attr_reader :color, :legs, :price

  def initialize(color, legs, price)
    @color = color
    @legs = legs
    @price = price
  end

end
