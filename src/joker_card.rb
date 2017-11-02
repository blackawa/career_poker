class JokerCard < Card
  def order
    1024
  end

  def number
    nil
  end

  def joker?
    true
  end
end
