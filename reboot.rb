#TODO build a a simple calculator with a command line UI
# 1st Addition
#2nd all operations

require_relative 'calculation'


answer = 'yes'
while answer != 'no'

  puts "Give us a number"
  first_number = gets.chomp.to_i
  puts "Give us a second number"
  second_number = gets.chomp.to_i
  puts "What operation would you like to do (+, -, /, *)?"
  operation = gets.chomp

  result = calculation(operation, first_number, second_number)

  puts "#{first_number} #{operation} #{second_number}"
  puts "Your result is : #{result}"
  puts 'Do you want to continue? (yes or no)'
  answer = gets.chomp
end
