# TODO
# Enter an array of horse's names
# Return results of the race

horses_name = []
name = ''
until name == "finish"
  puts "Enter horse's name or type finish to begin the race"
  name = gets.chomp

  horses_name.push(name) unless name == 'finish'
end

puts "Which horse do you want to pick?"
bet = gets.chomp

count = 0
until count == 3
  shuffled_horses = horses_name.shuffle
  print shuffled_horses
  puts ""

  system("say First on is #{shuffled_horses[0]}")

  sleep 3
  count = count + 1
end


if shuffled_horses[0] == bet
  puts "winning horse"
  system("say you win\!")
else
  puts "You lost!"
  system("say you lost\!")
end



