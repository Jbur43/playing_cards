require_relative '../spec_helper'

RSpec.describe PlayingCards::Card do
  context "#rank_to_i" do
    it "converts face cards to integer values" do
      card = PlayingCards::Card.new('Ace', 'Spades')
      expect(card.rank).to eq(14)
    end

    it "converts numeric strings to integers" do
      card = PlayingCards::Card.new('2', 'Spades')
      expect(card.rank).to eq(2)
    end
  end
end
