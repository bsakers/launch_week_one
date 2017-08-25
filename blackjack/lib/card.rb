class Card
  attr_reader :suit, :value

  def initialize (suit, value)
    @suit = suit
    @value = value
  end

  def card_value
    if ['J', 'Q', 'K'].include?(@value)
      10
    elsif @value == 'A'
      11
    else
      @value
    end
  end

end
