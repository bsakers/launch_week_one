SUITS = ['♦', '♣', '♠', '♥']
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

class Deck
  attr_reader :deck_array

  def initialize
    @deck_array = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck_array << Card.new(suit, value)
      end
    end
  end

  def shuffle!
    @deck_array.shuffle!
  end

  def deal
    @deck_array.pop
  end
end
