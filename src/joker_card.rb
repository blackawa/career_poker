class JokerCard < Card
  # return number big enough to be stronger than every other cards.
  def strength
    1024
  end

  def joker?
    true
  end
end
