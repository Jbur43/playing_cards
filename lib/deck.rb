require_relative 'card.rb'
require_relative 'hand.rb'

module PlayingCards
  class Deck
    RANKS = [*2..10, 'Jack', 'Queen', 'King', 'Ace']
    SUITS = %w{ Clubs Diamonds Hearts Spades }

    attr_accessor :cards, :discarded
    def initialize(args = {})
      @cards = []
      @discarded = []
      args[:number_decks] ||= 1

      args[:number_decks].times do
        (RANKS).product(SUITS).each do |rank, suit|
          @cards << Card.new({rank: rank, suit: suit})
        end
      end
    end

    def shuffle
      cards.push(*discarded).shuffle!
      discarded = []
      self
    end

    def shuffle_before_replacing
      cards.shuffle!
      cards.push(*discarded)
      cards.shuffle!
      discarded = []
      self
    end
  end
end
