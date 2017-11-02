module Strength
  class NumericAscending
    def stronger_than?(board, candidate)
      candidate.bigger_than? board.top
    end
  end
end
