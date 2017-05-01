require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new( "Rock, Paper" )
    @game2 = Game.new( "Paper, Scissors")
    @game3 = Game.new( "Scissors, Rock")

  end

#   def test_add
#     assert_equal( 6, @calculator.add() )
#   end

#   def test_subtract
#     assert_equal( 2, @calculator.subtract() )
#   end

#   def test_multiply
#     assert_equal( 8, @calculator.multiply() ) 
#   end

#   def test_divide
#     assert_equal( 2, @calculator.divide() )
#   end

# end
