class Board
  attr_reader :cards

  def initialize
    @cards = []
  end

  def put_down(card)
    cards << card
  end
end
