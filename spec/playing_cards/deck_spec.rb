require_relative '../spec_helper'

RSpec.describe PlayingCards::Deck do
  context "#initialize" do
    it "a deck is instaniated with cards" do
      deck = PlayingCards::Deck.new

      expect(deck.cards[0].class).to eq(PlayingCards::Card)
    end
  end

  context "#shuffle" do
    it "puts the deck in a random order" do
      deck = PlayingCards::Deck.new
      deck_before_shuffle = deck.cards[0]
      shuffled_deck = deck.shuffle

      expect(deck_before_shuffle).not_to eq(shuffled_deck.cards[0])
    end
  end

  context "#shuffle_before_replacing" do
    it "puts the deck in a random order" do
      deck = PlayingCards::Deck.new
      deck_before_shuffle = deck.cards[0]
      shuffled_deck = deck.shuffle_before_replacing

      expect(deck_before_shuffle).not_to eq(shuffled_deck.cards[0])
    end
  end
end
