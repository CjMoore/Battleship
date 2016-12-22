require 'minitest/autorun'
require 'minitest/pride'
require './lib/ai'

class AiTest < MiniTest::Test

  include MakeAllCoordinates

  def test_ai_knows_all_coordinates_on_4X4_board
    ai = Ai.new
    all_coordinates_needed = ["A1", "A2", "A3", "A4",
                              "B1", "B2", "B3", "B4",
                              "C1", "C2", "C3", "C4",
                              "D1", "D2", "D3", "D4"]

    assert_equal all_coordinates_needed, ai.all_board_coordinates
  end

  def test_ai_has_one_board_with_two_grids
    ai = Ai.new
    board_keys = ["A", "B", "C", "D"]

    assert_equal Board, ai.ai_board.class
    assert_equal board_keys, ai.ai_board.grid.keys
    assert_equal board_keys, ai.ai_board.display_grid.keys
  end

  def test_ai_can_get_first_coordinate_for_ship
    ai = Ai.new

    assert all_coordinates.include?(ai.first_coordinate)
  end

  def test_ai_can_get_ships
    ai = Ai.new
    ai.add_destroyer(Ship.new(2))
    ai.add_submarine(Ship.new(3))

    assert_equal Ship, ai.ai_destroyer.class
    assert_equal Ship, ai.ai_submarine.class
    assert_equal 2, ai.ai_destroyer.length
    assert_equal 3, ai.ai_submarine.length
  end

  def test_ai_can_validate_second_coordinate





end
