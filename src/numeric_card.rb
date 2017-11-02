class NumericCard < Card
  attr_reader :number, :suit

  def initialize(number, suit)
    raise ArgumentError, "invalid number (given: #{number}, expect: 1..13)" unless cardifiable?(number, suit)
    @number = number
    @suit = suit
  end

  def order
    ORDERS.index(self.number)
  end

  private

  ORDERS = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]
  SUITS = [:spade, :club, :diamond, :heart]

  def cardifiable?(number, suit)
    ORDERS.include?(number) && SUITS.include?(suit)
  end
end
