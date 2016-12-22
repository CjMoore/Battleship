require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'
require './lib/messages'
require 'pry'


class BattleshipTest < MiniTest::Test

  def test_game_gives_ai_its_ships
    game = Battleship.new
    game.play
    # binding.pry

    assert_equal Ship, game.ai.ai_destroyer.class
    assert_equal Ship, game.ai.ai_submarine.class
    assert_equal 2, game.ai.ai_destroyer.length
    assert_equal 3, game.ai.ai_submarine.length
  end
end
