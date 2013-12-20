class Door

  def unlock
    @unlock = true
  end

  def locked?
    !@unlock
  end
end
