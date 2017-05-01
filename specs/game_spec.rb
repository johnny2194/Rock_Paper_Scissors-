require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new( "rock", "paper" )
    @game2 = Game.new( "scissors", "paper")
    @game3 = Game.new( "scissors", "rock")
    @game4 = Game.new( "rock", "rock")
    @game5 = Game.new( "paper", "scissors")
    @game6 = Game.new( "paper", "rock")
    @game7 = Game.new( "rock", "scissors")

  end

  def test_draw
    assert_equal( "Draw!", @game4.winner?)
  end

  def test_paper_wins
    assert_equal( "paper wins!", @game1.winner?)
    assert_equal( "paper wins!", @game6.winner?)
  end

  def test_rock_wins
    assert_equal( "rock wins!", @game3.winner?)
    assert_equal( "rock wins!", @game7.winner?)
  end

  def test_scissors_wins
    assert_equal( "scissors wins!", @game2.winner?)
    assert_equal( "scissors wins!", @game5.winner?)
  end


end
