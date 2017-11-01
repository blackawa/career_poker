class Board
  attr_reader :stack

  def initialize
    @stack = []
  end

  def put_down(card)
    return false unless put_downable?(card)
    stack << card
    card.present_effect(self)
    true
  end

  def clean
    @stack = []
  end

  private

  def put_downable?(card)
    return true if stack.empty?
    card.stronger_than? self.stack.last
  end
end
