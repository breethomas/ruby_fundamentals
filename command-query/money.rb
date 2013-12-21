class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(dollars)
    @amount += dollars
  end

  def pay(dollars)
    @amount -= dollars
  end
end
