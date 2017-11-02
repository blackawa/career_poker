class Card
  # @return Integer a strenth of a card.
  def strength
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end

  # Check if card is stronger than another.
  # @return Boolean true if card is stronger than another.
  def stronger_than?(another)
    another.strength < self.strength
  end

  # Do something you want after a card is put down on board.
  def present_effect(board)
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end
end
