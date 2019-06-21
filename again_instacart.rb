# Build a gift wishlist, where you can:
# List products in your wishlist
# Add a new product to your list (e.g. "Jeans", "Socks", etc..)
# Delete an item you don't want in your list anymore
# Mark any item as "checked" when you've bought it
# It's like a basic todolist with products instead of tasks.

def list_product(wishlist)
  wishlist.each_with_index do |product, index|
  puts "#{index + 1} - #{product[:name]} $#{product[:price]} [#{product[:checked] ? 'X' : ' '}]"
  end
end


puts "WELCOME TO DO THE WISHLIST"

wishlist = []
action = ""

until action == "exit"
  puts " What action do you want to do? choose between (add|delete|update|mark_checked|mark_unchecked)"
  action = gets.chomp

  case action
  when "list"
    list_product(wishlist)
  when "add"
    puts "What item do you want to add?"
    product_name = gets.chomp
    puts "What is the price?"
    product_price = gets.chomp.to_i

    wishlist << {name: product_name,
                 price: product_price.to_i}
    list_product(wishlist)
  when "delete"
    puts "What is the number of the item do you want to delete"
    number = gets.chomp.to_i
    wishlist.delete_at(number - 1)
    list_product(wishlist)
  when "update"
    puts "What is the number of the item you want to update"
    number = gets.chomp.to_i
    puts "please enter the new name of the item"
    new_name = gets.chomp
    product = wishlist[number - 1]
    product[:name] = new_name
    list_product(wishlist)
  when "mark_checked"
    puts "What is the number of the item you want to heck?"
    number = gets.chomp.to_i
    product = wishlist[number - 1]
    product[:checked] = true
    list_product(wishlist)
  when "mark_unchecked"
    puts "What is the number of the item you want to uncheck?"
    number = gets.chomp.to_i
    product = wishlist[number - 1]
    product[:checked] = false
    list_product(wishlist)
  end
end
