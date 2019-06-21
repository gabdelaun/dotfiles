class View

  def list_all_products(products)
    products.each_with_index do |product, index|
      puts "#{index + 1} #{product.name}"
    end
  end

end
