

class Hand
  attr_reader :hand_array, :name, :score

  def initialize(name)
    @name = name
    @hand_array = []
    @score = score
  end

  def hit (deck)
    card = deck.deal
    puts "#{@name} was dealt #{card.value}#{card.suit}"
    @hand_array << card
  end

  def calculate_score
    @score = 0
    aces = 0
    @hand_array.each do |card|
      @score += card.card_value

      if card.value == 'A'
        aces += 1
      end

    end
    aces.times do
      if @score > 21
        @score -= 10
      end
    end

    puts "#{@name} score: #{@score}\n\n"
  end
end
