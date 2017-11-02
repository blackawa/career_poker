# coding: utf-8
require 'minitest/autorun'
require '../../src/board.rb'
require '../../src/effect/eight.rb'
require '../../src/card.rb'
require '../../src/numeric_card.rb'
require '../../src/joker_card.rb'

describe 'eight' do
  describe '#present' do
    before do
      @board = Board.new
      @board.instance_variable_set(:@stack, [NumericCard.new(3, :spade), NumericCard.new(4, :spade)])
    end
    describe '8が出された場の場合' do
      it '場のカードがリセットされる' do
        @board.instance_variable_set(:@stack, @board.stack << NumericCard.new(8, :spade))
        assert(@board.stack.size == 3)
        Effect::Eight.new.present @board
        assert(@board.stack.size == 0)
      end
    end
    describe '8が出されていない場の場合' do
      it '場のカードには何も起こらない' do
        assert(@board.stack.size == 2)
        Effect::Eight.new.present @board
        assert(@board.stack.size == 2)
      end
    end
  end
end
