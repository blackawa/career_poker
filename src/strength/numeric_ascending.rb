module Strength
  class NumericAscending
    include Base

    def stronger_than?(board, candidate)
      candidate.bigger_than? board.top
    end
  end
end
