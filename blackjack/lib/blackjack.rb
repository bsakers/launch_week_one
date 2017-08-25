require_relative "card"
require_relative "deck"
require_relative "hand"

player = Hand.new("Player")
dealer = Hand.new("Dealer")
deck = Deck.new

puts "Welcome to BlackJack!\n\n"


deck.shuffle!

player.hit(deck)
player.hit(deck)

player.calculate_score

puts "Hit or Stand (H/S):"
input = gets.chomp
puts

if input == "S"
  player.calculate_score
else
  while input != "S"
    if input == "H" && player.score < 21
      player.hit(deck)
      player.calculate_score
      if player.score > 21
        puts "Player busts, Dealer wins!"
        input = "S"
      else
        puts "Hit or Stand (H/S):"
        input = gets.chomp
        puts
      end
    else
      puts "Incorrect Entry: Hit or Stand (H/S):"
      input = gets.chomp
      puts
    end
  end
end

if player.score <= 21
  dealer.hit(deck)
  dealer.hit(deck)

  dealer.calculate_score
  if dealer.score >= 17
    puts "Dealer Stands"
  end

  while dealer.score < 17
    puts "Dealer hits"
    dealer.hit(deck)
    dealer.calculate_score
    if dealer.score >= 17 && dealer.score <= 21
      puts "Dealer stands"
    elsif dealer.score > 21
      puts "Dealer busts, Player wins"
    end
  end

  if player.score <= 21 && dealer.score <= 21
    if player.score > dealer.score
      puts "Player Wins!"
    elsif player.score < dealer.score
      puts "Dealer Wins!"
    else
      puts "Push"
    end
  end
end
