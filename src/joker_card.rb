class JokerCard < Card
  def initialize
    super(:joker)
  end

  # return number big enough to be stronger than every other cards.
  def strength
    1024
  end

  private

  def cardifiable?(number)
    true
  end
end
