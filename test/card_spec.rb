# coding: utf-8
require 'minitest/autorun'
require '../src/card.rb'

describe 'card' do
  describe '<' do
    describe '2と3' do
      it '2の方が大きい' do
        assert(Card.new(3) < Card.new(2))
      end
    end
    describe '3と4' do
      it '4の方が大きい' do
        assert(Card.new(3) < Card.new(4))
      end
    end
    describe '13と1' do
      it '1の方が大きい' do
        assert(Card.new(13) < Card.new(1))
      end
    end
  end
end
