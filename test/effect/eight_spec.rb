# coding: utf-8
require 'minitest/autorun'
require '../../src/board.rb'
require '../../src/effect/eight.rb'
require '../../src/card.rb'

describe 'eight' do
  describe '#present' do
    def setup
      @board = Board.new
      @board.put_down Card.new(3)
      @board.put_down Card.new(2)
    end
    describe '効果を発動すると' do
      it '場のカードがリセットされる' do
        Effect::Eight.new.present @board
        assert(@board.cards.size == 0)
      end
    end
  end
end
