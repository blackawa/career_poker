module Effect
  class Eight
    def present(board)
      if board.top.number == 8
        board.clean
      end
    end
  end
end
