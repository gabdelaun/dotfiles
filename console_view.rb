class ConsoleView

  def list_all_products(products)
    products.each_with_index do |product, index|
      puts "#{index + 1} #{product.name}"
    end
  end
  def ask_user_product_name
    puts "What is your product name?"
    gets.chomp
end
