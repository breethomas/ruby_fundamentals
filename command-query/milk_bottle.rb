class MilkBottle

  def initialize
    @spilled = false
  end

  def full?
    !@spilled
  end

  def spill
    @spilled = true
  end
end
