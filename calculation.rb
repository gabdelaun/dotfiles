def calculation (operation, first_number, second_number)

  result = case operation
          when "+"
            first_number + second_number
          when "*"
            first_number * second_number
          when "-"
            first_number - second_number
          when "/"
            first_number.to_f / second_number.to_f
          else
            puts "Error, give us a number"
            exit
          end
  return result
end
