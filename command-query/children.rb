class Children

  def initialize
    @kids = []
  end

  def eldest
    oldest = @kids.max_by{|kid| kid.age} 
    if oldest
      oldest.name
    end
  end

  def <<(child)
    @kids << child
  end
end
