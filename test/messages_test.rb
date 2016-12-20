require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'


class MessagesTest < MiniTest::Test

  def test_welcome_output
    assert Messages.welcome.include?("Welcome")
    refute Messages.welcome.include?("Hello")
  end

  def test_starting_sequence_output
    assert Messages.starting_sequence.include?("Would")
  end

  def test_instructions_output
    assert Messages.instructions.include?("play")
  end

  def test_ai_placement_output
    assert Messages.ai_placement.include?("grid")
  end

  def test_player_placement_two_unit_ship
    assert Messages.player_placement_two_unit_ship.include?("two")
  end

  def test_player_placement_three_unit_ship
    assert Messages.player_placement_three_unit_ship.include?("Enter")
  end

  def test_board_boarder
    assert Messages.board_boarder.include?("=")
  end


end
