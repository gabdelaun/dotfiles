require_relative 'product'
require_relative 'product_repository'

require_relative 'controller'
require_relative 'html_view'
require_relative 'console_view'
#Models
my_product_repository = ProductRepository.new
my_product = Product.new("Cheese")

my_product_repository.add_product(my_product)


#Views

controller = Controller.new(my_product_repository, HtmlView.new)
puts controller.list

controller = Controller.new(my_product_repository, ConsoleView.new)
controller.list




