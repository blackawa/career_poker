class Board
  attr_reader :cards

  def initialize
    @cards = []
  end

  def put_down(card)
    return false if put_downable?(card)
    cards << card
  end

  private

  def put_downable?(card)
    cards.last < card
  end
end
