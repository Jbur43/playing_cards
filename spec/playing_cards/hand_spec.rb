require_relative '../spec_helper'

RSpec.describe PlayingCards::Hand do
  context "#draw" do
    it "two cards are drawn from the deck and a hand contains two cards" do
      deck = PlayingCards::Deck.new
      hand = PlayingCards::Hand.new({deck: deck, draw_count: 2}).draw
      expect(hand.cards.length).to eq(2)
    end

    it "five cards are drawn from the deck and a hand contains five cards" do
      deck = PlayingCards::Deck.new
      hand = PlayingCards::Hand.new({deck: deck, draw_count: 5}).draw

      expect(hand.cards.length).to eq(5)
    end

    it 'expects the deck to have two fewer cards after drawing two' do
      deck = PlayingCards::Deck.new
      expect(deck.cards.length).to eq(52)

      hand = PlayingCards::Hand.new({deck: deck, draw_count: 2}).draw
      expect(deck.cards.length).to eq(50)
    end

    it 'expects the deck to have five fewer cards after drawing five' do
      deck = PlayingCards::Deck.new
      expect(deck.cards.length).to eq(52)

      hand = PlayingCards::Hand.new({deck: deck, draw_count: 5}).draw
      expect(deck.cards.length).to eq(47)
    end
  end

  context "#fold" do
    it "expects discarded to equal to the number of cards drawn and the cards to be 0" do
      deck = PlayingCards::Deck.new
      hand = PlayingCards::Hand.new({deck: deck, draw_count: 2}).draw
      expect(deck.discarded.length).to eq(0)
      expect(hand.cards.length).to eq(2)

      hand.fold
      expect(deck.discarded.length).to eq(2)
      expect(hand.cards.length).to eq(0)
    end
  end
end
