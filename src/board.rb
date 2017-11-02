class Board
  attr_reader :stack, :effects

  def initialize(effects = [Effect::Eight.new])
    @stack = []
    @effects = effects
  end

  def put_down(card)
    return false unless put_downable?(card)
    stack << card
    present_effects
    true
  end

  def top
    stack.last
  end

  def clean
    @stack = []
  end

  private

  def put_downable?(card)
    return true if stack.empty?
    card.stronger_than? self.top
  end

  def present_effects
    effects.each { |e| e.present self }
  end
end
