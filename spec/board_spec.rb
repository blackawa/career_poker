# coding: utf-8
require 'minitest/autorun'
require '../src/board.rb'
require '../src/effect/eight.rb'
require '../src/card.rb'
require '../src/numeric_card.rb'

describe 'board' do
  before do
    @board = Board.new
  end
  describe 'put_down' do
    describe '空のboardに' do
      it 'cardを追加できる' do
        assert(@board.stack.size == 0)
        assert(@board.put_down NumericCard.new(1))
        assert(@board.stack.size == 1)
      end
    end
    describe '3が入ったboardに' do
     it 'cardを追加できる' do
        @board.put_down NumericCard.new(3)
        assert(@board.stack.size == 1)
        assert(@board.put_down NumericCard.new(4))
        assert(@board.stack.size == 2)
      end
    end
    describe '2が入ったboardには' do
      it 'cardを追加できない' do
        @board.put_down NumericCard.new(2)
        assert(@board.stack.size == 1)
        assert(!@board.put_down(NumericCard.new(1)))
        assert(@board.stack.size == 1)
      end
    end
  end
  describe 'clean' do
    describe '空のboardに打つと' do
      it '変わらない' do
       assert(@board.stack.size == 0)
       @board.clean
       assert(@board.stack.size == 0)
      end
    end
    describe 'すでにカードがつまれているboardに打つと' do
      it 'つまれたカードがリセットされる' do
        @board.put_down NumericCard.new(3)
        assert(@board.stack.size == 1)
        @board.clean
        assert(@board.stack.size == 0)
      end
    end
  end
end
