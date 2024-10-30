class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def +(other)
    raise "Different currencies" if currency != other.currency
    Money.new(amount + other.amount, currency)
  end

  def *(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def ==(other)
    amount == other.amount && currency == other.currency
  end
end
