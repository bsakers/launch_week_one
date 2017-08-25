require_relative "../lib/player"

describe Player do

  describe ".new" do
    it "creates a new player" do
      expect(Player.new).to be_a(Player)
    end
  end
