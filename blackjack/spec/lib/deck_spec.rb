require "spec_helper"

RSpec.describe Deck do
  let(:deck) { Deck.new }

  describe ".new" do
    it "creates a new array of 52 unique cards" do
      expect(deck.deck_array.size).to eq(52)
      expect(deck.deck_array).to be_a(Array)
      expect(deck.deck_array.uniq.size).to eq(52)
    end
  end

  describe "#deal" do
    it "removes a card from the deck" do
      original_size = deck.deck_array.size
      new_size = original_size - 1

      deck.deal

      expect(deck.deck_array.size).to eq(new_size)
    end
    it "deals a card from the top of the deck" do
      top_card = deck.deck_array[-1]
      expect(deck.deal).to eq(top_card)
    end
  end
end
