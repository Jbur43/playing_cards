module PlayingCards
  class Card
    attr_reader :rank, :suit

    def initialize(rank, suit)
      @rank = rank_to_i(rank)
      @suit = suit
    end

    def rank_to_i(rank)
      case rank.to_s
        when 'Ace';   14
        when 'King';  13
        when 'Queen'; 12
        when 'Jack';  11
        when '10';    10
        when '2'..'10'; rank.to_i
        else 0
      end
    end
  end
end
