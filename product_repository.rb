class ProductRepository

  def initialize
    @products = []
  end

  def all
    @products
  end

  def add_product(product)
    @products << product
  end

  def remove_product(index)
    @products.delete_at(index)
  end

  def get_product(index)
    @products|index|
  end
end
