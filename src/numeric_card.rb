class NumericCard < Card

  def strength
    ORDER.index(self.number)
  end

  private

  ORDER = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]

  def cardifiable?(number)
    ORDER.include? number
  end
end
