require_relative 'deck'

class Hand
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    score = 0
    @cards.each do |card|
      if ['J', 'Q', 'K'].include?(card.value)
        score += 10
      elsif card.value == "A"
        score += 11
      else
        score += card.value
      end
    end
    score

  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
#
# @cards = the two objects (cards) in an array
