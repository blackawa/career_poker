# coding: utf-8
require 'minitest/autorun'
require '../src/card.rb'

describe 'card' do
  describe 'initialize' do
    describe '1' do
      it 'succeed' do
        assert(Card.new(1).number == 1)
      end
    end
    describe '0' do
      it 'raise' do
        assert_raises(ArgumentError) { Card.new(0) }
      end
    end
    describe '14' do
      it 'raise' do
        assert_raises(ArgumentError) { Card.new(14) }
      end
    end
    describe 'joker' do
      it 'succeed' do
        assert(Card.new(:joker))
      end
    end
  end
  describe 'stronger_than?' do
    describe '2 vs 3' do
      it 'return true' do
        assert(Card.new(2).stronger_than? Card.new(3))
      end
    end
    describe '3 vs 4' do
      it 'return true' do
        assert(Card.new(4).stronger_than? Card.new(3))
      end
    end
    describe '1 vs 13' do
      it 'return true' do
        assert(Card.new(1).stronger_than? Card.new(13))
      end
    end
    describe 'joker vs 2' do
      it 'return true' do
        assert(Card.new(:joker).stronger_than? Card.new(2))
      end
    end
    describe '2 vs 2' do
      it 'return false' do
        assert(Card.new(:joker).stronger_than? Card.new(2))
      end
    end
    describe '2 vs 1' do
      it 'return false' do
        assert(Card.new(:joker).stronger_than? Card.new(1))
      end
    end
  end
end
