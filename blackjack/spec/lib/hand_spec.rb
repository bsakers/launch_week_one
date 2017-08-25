require "spec_helper"

RSpec.describe Hand do
  let(:deck) { Deck.new }
  let(:hand) { Hand.new("Brian") }

  describe ".new" do
    it "creates a new 'hand' object" do
      expect(hand).to be_a(Hand)
    end
    it "creates a new, blank array" do
      expect(hand.hand_array).to eq([])
    end
  end
  describe "#hit" do
    it "adds a card to the hand array" do
      expect(hand.hit(deck).size).to eq(1)
    end
  end
  describe "#calculate_score" do
    it "calculates the hand score when aces are not present" do
      hand.hand_array << Card.new("♦",10)
      hand.hand_array << Card.new("♥",8)

      hand.calculate_score
      expect(hand.score).to eq(18)
    end
    it "calculates the hand score when one ace is present" do
      hand.hand_array << Card.new("♦","A")
      hand.hand_array << Card.new("♥",8)

      hand.calculate_score
      expect(hand.score).to eq(19)
    end
    it "calculates the hand score when one ace is present" do
      hand.hand_array << Card.new("♦","A")
      hand.hand_array << Card.new("♥",5)
      hand.hand_array << Card.new("♥",9)
      hand.hand_array << Card.new("♥",4)

      hand.calculate_score
      expect(hand.score).to eq(19)
    end
    it "calculates the hand score when two aces are present (prior to a new hit)" do
      hand.hand_array << Card.new("♦","A")
      hand.hand_array << Card.new("♥","A")

      hand.calculate_score
      expect(hand.score).to eq(12)
    end
    it "calculates the hand score when two aces are present with a third card" do
      hand.hand_array << Card.new("♦","A")
      hand.hand_array << Card.new("♥","A")
      hand.hand_array << Card.new("♥",8)

      hand.calculate_score
      expect(hand.score).to eq(20)
    end
  end
end
