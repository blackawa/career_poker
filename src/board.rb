class Board
  attr_reader :stack, :effects, :strengths

  def initialize(effects = [Effect::Eight.new], strengths = [Strength::NumericAscending.new])
    @stack = []
    @effects = effects
    @strengths = strengths
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
    strengths.any? { |s| s.stronger_than?(self, card) }
  end

  def present_effects
    effects.each { |e| e.present self }
  end
end
