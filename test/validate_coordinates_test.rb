require 'minitest/autorun'
require 'minitest/pride'
require './lib/validate_coordinates'
require './lib/board'
require './lib/ship'

class ValidateCoordinatesTest < MiniTest::Test

  include ValidateCoordinates

  def test_validate_coordinates_can_tell_if_space_is_not_occupied
    board = Board.new
    coordinate = "A1"

    refute first_coordinate_is_occupied?(board, coordinate)
  end

  def test_validate_coordinates_can_tell_if_space_is_occupied
    board = Board.new
    coordinate = "A1"
    ship = Ship.new(2)

    board.grid[coordinate[0]][coordinate[1]].add_ship(ship)

    assert first_coordinate_is_occupied?(board, coordinate)
  end

  def test_horizontal_or_vertical_coordinates
    first_coordinate = "A1"
    second_coordinate = "A4"
    third_coordinate = "B2"

    assert coordinates_are_horizontal?(first_coordinate, second_coordinate)
    refute coordinates_are_horizontal?(first_coordinate, third_coordinate)
  end

  def test_if_horizontal_placement_is_adjacent
    first_coordinate = "A1"
    second_coordinate = "A2"
    third_coordinate = "B2"

    assert horizontal_placement_is_adjacent?(first_coordinate, second_coordinate)
    refute horizontal_placement_is_adjacent?(first_coordinate, third_coordinate)
  end

  def test_if_coordinates_are_vertical
    first_coordinate = "A1"
    second_coordinate = "B1"
    third_coordinate = "A3"

    assert coordinates_are_vertical?(first_coordinate, second_coordinate)
    refute coordinates_are_vertical?(first_coordinate, third_coordinate)
  end

  def test_vertical_coordinates_are_adjacent
    first_coordinate = "A1"
    second_coordinate = "B1"
    third_coordinate = "B3"

    assert vertical_placement_is_adjacent?(first_coordinate, second_coordinate)
    refute vertical_placement_is_adjacent?(first_coordinate, third_coordinate)
  end

end
