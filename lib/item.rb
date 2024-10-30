class Item
  attr_reader :price, :quantity

  def initialize(price:, quantity: 1)
    @price = price
    @quantity = quantity
  end
end
