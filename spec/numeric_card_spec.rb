# coding: utf-8
require 'minitest/autorun'
require '../src/card.rb'
require '../src/numeric_card.rb'

describe 'initialize' do
  describe '1' do
    it 'succeed' do
      assert(NumericCard.new(1).number == 1)
    end
  end
  describe '0' do
    it 'raise' do
      assert_raises(ArgumentError) { NumericCard.new(0) }
    end
  end
  describe '14' do
    it 'raise' do
      assert_raises(ArgumentError) { NumericCard.new(14) }
    end
  end
  describe 'joker' do
    it 'raise' do
      assert_raises(ArgumentError) {NumericCard.new(:joker)}
    end
  end

end
