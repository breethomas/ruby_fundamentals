class Catalogue

  def initialize
    @products = []
  end

  def cheapest
    cheap = @products.min_by{|product| product.cost}
    if cheap
      cheap.name
    end
  end

  def <<(product)
    @products << product
  end
end
