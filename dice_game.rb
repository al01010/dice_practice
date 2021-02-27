puts "Type 'roll' to roll the dice"
response = gets.chomp

def dice
    number = rand(6)
    if number == 0
      return 6
    else
      return number
    end
end

if response == "roll"
  playerone = dice
  puts "Player one has rolled #{playerone}"
  computer = dice
  puts "Computer has rolled #{computer}"
  if computer == playerone
    puts "draw"
  elsif computer > playerone
    puts "Computer wins"
  else
    puts "Player wins"
  end
else
  puts "you didn't type 'roll!'"
end
