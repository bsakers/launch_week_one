require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  let(:hand2) { Hand.new([Card.new("♦",10), Card.new("♥",8)]) }
  let(:hand3) { Hand.new([Card.new("♦",10), Card.new("♥","A")]) }
  let(:hand4) { Hand.new([Card.new("♦","J"), Card.new("♥","J")]) }

  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "sums the values of numbered cards" do
      expect(hand2.calculate_hand).to eq(18)
    end

    it "sums the value of the cards by converting face cards to 10" do
      expect(hand.calculate_hand).to eq(20)
      expect(hand4.calculate_hand).to eq(20)
    end

    it "sums the value of the cards by converting aces to 11" do
      expect(hand3.calculate_hand).to eq(21)
    end

  end
end
