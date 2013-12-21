class Names

  def initialize
    @names = []
  end

  def longest
    @names.min
  end

  def <<(name)
    @names << name
  end
end

