# coding: utf-8
require 'minitest/autorun'
require '../src/card.rb'
require '../src/numeric_card.rb'

describe 'initialize' do
  describe 'number' do
    describe '1' do
      it 'succeed' do
        assert(NumericCard.new(1, :spade).number == 1)
      end
    end
    describe '0' do
      it 'raise' do
        assert_raises(ArgumentError) { NumericCard.new(0, :spade) }
      end
    end
    describe '14' do
      it 'raise' do
        assert_raises(ArgumentError) { NumericCard.new(14, :spade) }
      end
    end
    describe 'joker' do
      it 'raise' do
        assert_raises(ArgumentError) { NumericCard.new(:joker, :spade) }
      end
    end
  end
  describe 'suit' do
    describe 'spade' do
      it 'succeed' do
        assert(NumericCard.new(1, :spade).suit == :spade)
      end
    end
    describe 'club' do
      it 'succeed' do
        assert(NumericCard.new(1, :club).suit == :club)
      end
    end
    describe 'diamond' do
      it 'succeed' do
        assert(NumericCard.new(1, :diamond).suit == :diamond)
      end
    end
    describe 'heart' do
      it 'succeed' do
        assert(NumericCard.new(1, :heart).suit == :heart)
      end
    end
    describe 'something else' do
      it 'raise' do
        assert_raises(ArgumentError) { NumericCard.new(1, :something_else) }
      end
    end
  end
end
