#todo
# : implement a shopping cart, where ultimately you can
# Add items with prices and amount in your cart.
# Then checkout and the terminal will print you the detailed receipt.
# Start with a very simple program without handling prices nor available stock, then improve it.
#

# list.each do |product|
#   list_item << list.item
# end

# puts "#{item}"

# list = []
# product = ''

# until product == 'finish'
#   puts "What is the name of the product you want to add?"
#   product = gets.chomp
#   list << product unless product == 'finish'
#   p list
# end



# until action == 'finish'
#   puts "What to do? (list, add, remove)"
#   action = gets.chomp
#   if action == 'add'
#     puts "What product do you want to add"
#     product = gets.chomp
#     products << product
#   elsif action == 'list'
#     products.each_with_index do |product, index|
#     puts "#{index + 1} is #{product}"
#     end
#   elsif action == 'remove'
#     puts "What position of the product you want to remove"
#     position = gets.chomp.to_i
#     products.delete_at(position - 1)
#   end
# end

def product_list(list)
 list.each_with_index do |product, index|
    puts "#{index + 1} - #{product[:name]}  $#{product[:price]}"
  end
end

def product_cart(cart)
  cart.each_with_index do |product, index|
    puts "#{index + 1} - #{product[:name]} $#{product[:price]}"
  end
end
list = []
action = ""
cart = []

until action == "exit"
  puts "What to do? (list, add, remove, price_list, add_to_cart)"

  action = gets.chomp

case action
  when "list"
    product_list(list)
  when "add"
    puts "What do you want to add?"
    product_name = gets.chomp
    puts "what is the price?"
    product_price = gets.chomp.to_i
    list << {name: product_name, price: product_price.to_i}
    product_list(list)
  when "remove"
    puts "what is the position of the product you want to remove?"
    number = gets.chomp.to_i
    list.delete_at(number - 1)
    product_list(list)
  when "price_list"
    total = 0
    list.each do |product|
    total += product[:price]
    end
    puts "Total price is #{price_list}"
  when "add_to_cart"
    puts "What is the position of the item you want to add in the cart"
    number = gets.chomp.to_i
    cart << {name: product_name, price: product_price.to_i}
    product_cart(cart)

  end
end











