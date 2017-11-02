class Card
  def bigger_than?(another)
    another.order < self.order
  end

  # @return Integer a strenth of a card.
  def order
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end

  # Note that this method has default behavior, but you probabry need to overload.
  # @return Bool true if a card is joker.
  def joker?
    false
  end
end
