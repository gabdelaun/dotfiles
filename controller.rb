class Controller

  def initialize(product_repository, view)
    @product_repository = product_repository
    @view = HtmlView.new
  end

  def list
    @view.list_all_products(@product_repository.all)
  end

  def add_new_product
    product_name = @view.ask_user_product_name
    @product_repository.add_product(Product.new(product_name))


    list
  end


end
