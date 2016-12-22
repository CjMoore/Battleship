require 'minitest/autorun'
require 'minitest/pride'
require './lib/make_all_coordinates'

class MakeAllCoordinatesTest < MiniTest::Test

  include MakeAllCoordinates

  def test_make_all_coordinates_makes_row_letters
    assert_equal Array("A".."Z"), row_letters
  end

  def test_make_all_coordinates_makes_column_numbers
    assert_equal Array("1".."26"), column_numbers
  end

  def test_make_all_coordinates_makes_array_of_all_coordinates_on_4X4_board
    all_coordinates_needed = ["A1", "A2", "A3", "A4",
                    "B1", "B2", "B3", "B4",
                    "C1", "C2", "C3", "C4",
                    "D1", "D2", "D3", "D4"]

    assert_equal all_coordinates_needed, all_coordinates
  end



end
