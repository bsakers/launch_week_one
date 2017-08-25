require 'pry'
require_relative "board"
require_relative "player"

board = Board.new
puts "Welcome to connect 4!"

puts "What is the name of player 1?"
name1 = gets.chomp

puts "What is the name of player 2?"
name2 = gets.chomp

puts "Great! Player 1's token will be an X and player 2's token will be an O"

player1 = Player.new(name1, "X")
player2 = Player.new(name2, "O")

puts "In order to play, select the column you would like to drop your token into."


board.display_board
## STILL TO DO: FIX
##   1.) When the user enters something other than a column 1- 7
##   2.) When the column fills up, and user tries to drop token, need an error message
21.times do
  puts "#{player1.name}, please select a column:"
  choice = gets.chomp.to_i
  board.place_token(player1, choice)
  board.display_board
  if board.check_score(player1, choice) == true
    break
  end

  puts "#{player2.name}, please select a column:"
  choice = gets.chomp.to_i
  board.place_token(player2, choice)
  board.display_board
  if board.check_score(player2, choice) == true
    break
  end
end
