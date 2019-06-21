# TODO:
# Build a gift wishlist, where you can:
# List products in your wishlist
# Add a new product to your list (e.g. "Jeans", "Socks", etc..)
# Delete an item you don't want in your list anymore
# Mark any item as "checked" when you've bought it
# It's like a basic todolist with products instead of tasks.

def list_products(wishlist)
  wishlist.each_with_index do |product, index|
    if product[:checked]
      puts "#{index + 1} - #{product[:name]} - £#{product[:price]} - [X]"
    else
      puts "#{index + 1} - #{product[:name]} - £#{product[:price]} - [ ]"
    end
  end
end

wishlist = []
action = ""

puts "WELCOME TO YOUR WISHLIST"

until action == "exit"
  puts "What do you want to do (add/list/remove/update/mark_checked/mark_unchecked). Type exit if you want to leave the wishlist."

  action = gets.chomp

  case action
  when "add"
    puts "What product do you want to add?"
    product_name = gets.chomp
    puts "What is the price of this product?"
    product_price = gets.chomp
    wishlist << { name: product_name,
                  checked: false,
                  price: product_price.to_i }

    list_products(wishlist)
  when "list"
    list_products(wishlist)
  when "remove"
    puts "What is the number of the item you want to remove?"
    number = gets.chomp.to_i
    wishlist.delete_at(number - 1)

    list_products(wishlist)
  when "update"
    puts "What is the number of the item you want to update?"
    number = gets.chomp.to_i
    puts "Please enter the new name!"
    new_name = gets.chomp
    product = wishlist[number - 1]
    product[:name] = new_name

    list_products(wishlist)
   when "mark_checked"
    puts "What is the number of the item you want to check?"
    number = gets.chomp.to_i
    product = wishlist[number - 1]
    product[:checked] = true

    list_products(wishlist)
   when "mark_unchecked"
    puts "What is the number of the item you want to uncheck?"
    number = gets.chomp.to_i
    product = wishlist[number - 1]
    product[:checked] = false

    list_products(wishlist)
  end
end
