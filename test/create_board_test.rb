require 'minitest/autorun'
require 'minitest/pride'
require './lib/create_board'

class Create_boardTest < MiniTest::Test

  def test_create_board_creates_row_letters
    board = CreateBoard.new(4)
    letters = Array("A".."Z")

    assert_equal letters, board.row_letters
  end

  def test_create_board_can_create_space_names
    board = CreateBoard.new(4)
    space_names = ["A1", "A2", "A3", "A4",
                    "B1", "B2", "B3", "B4",
                    "C1", "C2", "C3", "C4",
                    "D1", "D2", "D3", "D4"]

    assert_equal space_names, board.space_names
  end

  def test_create_board_can_create_spaces_with_names
    board = CreateBoard.new(4)

    assert_equal Space, board.spaces[0].class
    assert_equal "A1", board.spaces[0].name
  end

  def test_create_board_can_create_hashes_of_columns
    board = CreateBoard.new(4)

    assert_equal ["A", "B", "C", "D"], board.create_grid.keys
    assert_equal "A1", board.create_grid["A"]["1"].name
  end
end
