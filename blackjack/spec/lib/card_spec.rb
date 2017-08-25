require "spec_helper"

RSpec.describe Card do
  let(:spade_ten) { Card.new('♠', 10) }
  let(:heart_ace) { Card.new('♥', "A") }
  let(:diamond_jack) { Card.new('♦', "J") }

  describe ".new" do
    it "takes a suit and value and creates a new card" do
      expect(spade_ten).to be_a(Card)
    end
  end

  describe "#card_rank" do
    it "returns the value of a card" do
      expect(spade_ten.card_value).to eq(10)
      expect(heart_ace.card_value).to eq(11)
      expect(diamond_jack.card_value).to eq(10)
    end
  end
end
