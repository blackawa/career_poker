class NumericCard < Card
  attr_reader :number, :effect

  def initialize(number)
    raise ArgumentError, "invalid number (given: #{number}, expect: 1..13)" unless cardifiable?(number)
    @number = number

    if number == 8
      @effect = Effect::Eight.new
    end
  end

  def strength
    ORDER.index(self.number)
  end

  def present_effect(board)
    return unless @effect
    @effect.present(board)
  end

  private

  ORDER = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]

  def cardifiable?(number)
    ORDER.include? number
  end
end
