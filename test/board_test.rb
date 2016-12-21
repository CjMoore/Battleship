require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < MiniTest::Test

  # def test_board_can_create_new_board
  #   board = Board.new
  #   coordinates = Hash.new
  #   coordinates = {"A" => { 1 => nil, 2 => nil},
  #                 "B" => {1=> nil, 2 => nil}}
  #
  #   assert_equal coordinates, board.create_board(2)
  # end
  #
  # def test_can_create_horizontal_coordinates
  #   board = Board.new
  #   coordinates = Hash.new
  #   coordinates = {1 => nil, 2 => nil}
  #
  #   assert_equal coordinates, board.create_horizontal_coordinates(2)
  # end
  #
  # def test_board_can_update_with_hit
  #   board = Board.new
  #   board.create_board(2)
  #   shot = ["A", 1]
  #   hit = true
  #   updated = Hash.new
  #   updated = {"A" => { 1 => "H", 2 => nil}, "B" => {1 => nil, 2 => nil}}
  #
  #   assert_equal updated, board.update_board(hit, shot)
  # end


end
