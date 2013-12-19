class Adult

  def initialize
    @beverage = 0
  end

  def sober?
    @beverage < 3
  end

  def consume_an_alcoholic_beverage
    @beverage += 1 
  end
end
