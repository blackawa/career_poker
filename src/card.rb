class Card
  attr_reader :number

  # Check if card is stronger than another.
  # @return Boolean true if card is stronger than another.
  def stronger_than?(another)
    another.strength < self.strength
  end

  # @return Integer a strenth of a card.
  def strength
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end

  # Note that this method has default behavior, but you probabry need to overload.
  # @return FixNum number of a card.
  def number
    nil
  end

  # Note that this method has default behavior, but you probabry need to overload.
  # @return Symbol suit of a card.
  def suit
    nil
  end

  # Note that this method has default behavior, but you probabry need to overload.
  # @return Bool true if a card is joker.
  def joker?
    false
  end
end
