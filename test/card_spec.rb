# coding: utf-8
require 'minitest/autorun'
require '../src/card.rb'

describe 'card' do
  describe 'initialize' do
    describe '1' do
      it 'initializeできる' do
        assert(Card.new(1).number == 1)
      end
    end
    describe '0' do
      it '例外が発生する' do
        assert_raises(ArgumentError) { Card.new(0) }
      end
    end
    describe '14' do
      it '例外が発生する' do
        assert_raises(ArgumentError) { Card.new(14) }
      end
    end
  end
  describe 'stronger_than?' do
    describe '2と3' do
      it '2の方が大きい' do
        assert(Card.new(2).stronger_than? Card.new(3))
      end
    end
    describe '3と4' do
      it '4の方が大きい' do
        assert(Card.new(4).stronger_than? Card.new(3))
      end
    end
    describe '13と1' do
      it '1の方が大きい' do
        assert(Card.new(1).stronger_than? Card.new(13))
      end
    end
  end
end
