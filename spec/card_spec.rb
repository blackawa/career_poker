# coding: utf-8
require 'minitest/autorun'
require '../src/card.rb'
require '../src/numeric_card.rb'
require '../src/joker_card.rb'

describe 'card' do
  describe 'stronger_than?' do
    describe '2 vs 3' do
      it 'return true' do
        assert(NumericCard.new(2).stronger_than? NumericCard.new(3))
      end
    end
    describe '3 vs 4' do
      it 'return true' do
        assert(NumericCard.new(4).stronger_than? NumericCard.new(3))
      end
    end
    describe '1 vs 13' do
      it 'return true' do
        assert(NumericCard.new(1).stronger_than? NumericCard.new(13))
      end
    end
    describe 'joker vs 2' do
      it 'return true' do
        assert(JokerCard.new.stronger_than? NumericCard.new(2))
      end
    end
    describe '2 vs 2' do
      it 'return false' do
        assert(!(NumericCard.new(2).stronger_than? NumericCard.new(2)))
      end
    end
    describe '2 vs 1' do
      it 'return false' do
        assert(JokerCard.new.stronger_than? NumericCard.new(1))
      end
    end
  end
end
