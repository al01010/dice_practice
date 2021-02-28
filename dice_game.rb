puts "First Player to win 2 rounds wins"
puts "Type 'roll' to roll the die"

# method for rolling the dice
def dice
  number = rand(6)
  if number == 0
    return 6
  else
    return number
  end
end

# method for rolling the dice
def play(player)
  while true do
    puts "#{player} - please roll the dice"
    player_response = gets.chomp
    if player_response == "roll"
      die1 = dice
      die2 = dice
      total = die1 + die2
      puts "#{player} has rolled a #{die1} and a #{die2}"
      return total
      break
    else
      puts "you haven't rolled the dice"
    end
  end
end

p1_score = 0
p2_score = 0

until p1_score == 2 || p2_score == 2 do
  p1_total = play("Player 1")
  p2_total = play("Player 2")

  if p1_total > p2_total
    puts "Player 1 wins that round"
    p1_score += 1
  elsif p1_total < p2_total
    puts "Player 2 wins that round"
    p2_score += 1
  else 
    puts "Draw!"
  end
  puts "Score: P1 #{p1_score} P2 #{p2_score} "
end 

if p1_score == 2 
  puts "Player 1 Wins"
else
  puts "Player 2 Wins"
end
