class Deck
  attr_accessor :cards
  attr_accessor :drawn
  def initialize
    @cards = []
    Card.ranks.map do |rank|
      Card.suits.map do |suit|
        @cards.push(Card.new(suit, rank))
      end
    end
  end

  def print_deck
    puts @cards
  end

  def choose_card
    @cards.delete(@cards.sample)
  end
end

class Card
  @@ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
  @@suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades']
  
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

  def self.ranks
    @@ranks
  end

  def self.suits
    @@suits
  end
end
