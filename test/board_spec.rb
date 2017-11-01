# coding: utf-8
require 'minitest/autorun'
require '../src/board.rb'
require '../src/card.rb'

describe 'board' do
  def setup
    @board = Board.new
  end
  describe 'put_down' do
    describe '空のboardに' do
      it 'cardを追加できる' do
        assert(@board.cards.size == 0)
        assert(@board.put_down Card.new(1))
        assert(@board.cards.size == 1)
      end
    end
    describe '3が入ったboardに' do
     it 'cardを追加できる' do
        @board.put_down Card.new(3)
        assert(@board.cards.size == 1)
        assert(@board.put_down Card.new(4))
        assert(@board.cards.size == 2)
      end
    end
    describe '2が入ったboardには' do
      it 'cardを追加できない' do
        @board.put_down Card.new(2)
        assert(@board.cards.size == 1)
        assert(!@board.put_down(Card.new(1)))
        assert(@board.cards.size == 1)
      end
    end
  end
  describe 'clean' do
    describe '空のboardに打つと' do
      it '変わらない' do
       assert(@board.cards.size == 0)
       @board.clean
       assert(@board.cards.size == 0)
      end
    end
    describe 'すでにカードがつまれているboardに打つと' do
      it 'つまれたカードがリセットされる' do
        @board.put_down Card.new(3)
        assert(@board.cards.size == 1)
        @board.clean
        assert(@board.cards.size == 0)
      end
    end
  end
end
