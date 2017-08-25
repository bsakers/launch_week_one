require 'pry'
class Board
  attr_reader :board

  def initialize
    @board = []
    create_board
  end

  def create_board
    6.times do |row_index|
      @board[row_index] = []
      7.times do |col_index|
        @board[row_index][col_index] = " "
      end
    end
    return board
  end

  def display_board
    display = ""
    @board.each do |row_array|
      n = ""
      display += "| "
      row_array.each do |row_value|
        n += "#{row_value} "
      end
      display += "#{n}|\n"
    end
    display += "  1 2 3 4 5 6 7  "
    puts display
  end

  def place_token(player, choice)
    count = 0
    while count < @board.size do
      if @board[-(count +1)][choice-1] == "X" || @board[-(count +1)][choice-1] == "O"
        count +=1
      else
        @board[-(count +1)][choice-1] = "#{player.token}"
        count = @board.size
      end
    end
    @board
  end




  def check_score(player, choice)
    @board.each do |array|
      i = 0
      while i < array.size do
        count = 0
        j = i + 1
        while j < array.size do
          if array[i] == array[j] && array[i] != " "
            j += 1
            count += 1
            if count == 3
              puts "That's 4 in a row!"
              puts "#{player.name} wins!"
              return true
              j = array.size
            end
          else
            j = array.size
          end
        end
        i += 1
      end
    end


    i = 0
    while i < @board.size do
      count = 0
      j = i + 1
      while j < @board.size do
        if @board[i][choice-1] == @board[j][choice-1] && @board[i][choice-1] != " "
          j += 1
          count += 1
          if count == 3
            puts "That's 4 in a row!"
            puts "#{player.name} wins!"
            return true
            j = @board.size
          end
        else
          j = @board.size
        end
      end
      i += 1
    end
  end


end
