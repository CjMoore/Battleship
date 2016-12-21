require 'pry'
require_relative 'create_board'

class Board

  def initialize
    @grid = CreateBoard.new(4).create_grid
  end


  #
  # def create_board(size)
  #   letters = Array ("A".."Z")
  #   horizontal_coordinates = create_horizontal_coordinates(size)
  #   size.times do |j|
  #     @all_coordinates[letters[j]] = horizontal_coordinates
  #   end
  #   @all_coordinates
  # end
  #
  # def create_horizontal_coordinates(size)
  #   horizontal_coordinates = Hash.new
  #   size.times do |i|
  #     i += 1
  #     horizontal_coordinates[i] = nil
  #   end
  #   horizontal_coordinates
  # end

  # def update_board(hit, shot)
  #   if hit == true
  #     # binding.pry
  #     @all_coordinates[shot[0]][shot[1]] = "H"
  #   else
  #     @all_coordinates[shot[0]][shot[1]] = "M"
  #   end
  #   @all_coordinates
  # end

  # def print_board
  #   @all_coordinates.each_pair do |key, value|
  #     print key
  #     value.values.each {|coordinate| print coordinate}
  #     print "\n"
  #     binding.pry
  #   end
  # end

end
