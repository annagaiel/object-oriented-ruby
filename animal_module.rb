module AnimalModule

  attr_reader :color, :legs, :price

  def initialize(info)
    @color = info[:color]
    @legs = info[:legs]
    @price = info[:price]
  end

end
