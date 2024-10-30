class Order
  def initialize
    @line_items = []
  end

  def add_entry(line_item)
    @line_items << line_item
  end

  def total
    total_amount = @line_items.map(&:total_price).reduce(Money.new(0, :USD), :+)
    Money.new(total_amount.amount.round(2), :USD)
  end
end
