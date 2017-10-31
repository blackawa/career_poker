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
  end
end
