require_relative '../spec_helper'

RSpec.describe PlayingCards::Card do
  context "#rank_to_i" do
    it "converts face cards to integer values" do
      card = PlayingCards::Card.new(rank: 'Ace', suit: 'Spades')
      expect(card.rank).to eq(14)
    end

    it "converts numeric strings to integers" do
      card = PlayingCards::Card.new({ rank: '2', suit: 'Spades'})
      expect(card.rank).to eq(2)
    end
  end
end
