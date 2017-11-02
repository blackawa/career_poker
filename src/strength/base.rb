module Strength
  def stronger_than?(board, candidate)
    raise NotImplementedError, "define #{self.class}##{__method__}"
  end
end
