class LineItem
  attr_reader :item

  def initialize(item:)
    @item = item
  end

  def total_price
    item.price * item.quantity
  end
end
