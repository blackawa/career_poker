class Card
  attr_reader :number

  def initialize(number)
    raise ArgumentError, "invalid number (given: #{number}, expect: 1..13)" unless cardifiable?(number)
    @number = number
  end

  # @return Integer a strenth of a card.
  def strength
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end

  # Check if card is stronger than another.
  # @return Boolean true if card is stronger than another.
  def stronger_than?(another)
    another.strength < self.strength
  end

  private

  def cardifiable?(number)
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end
end
