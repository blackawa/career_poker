class Card
  attr_reader :number

  def initialize(number)
    raise ArgumentError, "invalid number (given: #{number}, expect: 1..13)" unless ORDER.include? number
    @number = number
  end

  def <(another)
    ORDER.index(self.number) < ORDER.index(another.number)
  end

  private

  ORDER = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]
end
