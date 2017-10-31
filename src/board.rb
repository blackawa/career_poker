class Board
  attr_reader :cards

  def initialize
    @cards = []
  end

  def put_down(card)
    return false unless put_downable?(card)
    cards << card
  end

  private

  def put_downable?(card)
    return true if cards.empty?
    card.stronger_than? self.cards.last
  end
end
