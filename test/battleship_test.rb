require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'
require './lib/messages'
require 'pry'


class BattleshipTest < MiniTest::Test

  def test_starting_sequence_outputs_intro
    input = StringIO.new("sup")
    output = StringIO.new
    battleship = Battleship.new(input, output)

    battleship.starting_sequence
    assert_equal 

  end
end
