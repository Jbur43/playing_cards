require_relative 'deck.rb'

module PlayingCards
  class Hand
    attr_accessor :deck, :draw_count, :cards

    def initialize(args = {})
      @deck = args[:deck]
      @draw_count = args[:draw_count]
      @cards = []
    end

    def draw
      draw_count.times do
        cards.push(deck.cards[0])
        deck.cards.shift
      end
      self
    end

    def fold
      deck.discarded.push(cards).flatten!
      self.cards = []
      self
    end
  end
end
