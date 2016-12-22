require_relative 'board'
require_relative 'make_all_coordinates'
require_relative 'ship'
require_relative 'validate_coordinates'
require 'pry'

class Ai

  include MakeAllCoordinates
  include ValidateCoordinates

  attr_accessor :ai_board,
                :ai_destroyer,
                :ai_submarine

  attr_reader :all_board_coordinates,
              :first_coordinate,
              :second_coordinate,
              :destroyer_coordinates


  def initialize
    @ai_board               = Board.new
    @all_board_coordinates  = all_coordinates
    @first_coordinate       = first_coordinate
    @second_coordinate      = second_coordinate
    @ai_destroyer           = ai_destroyer
    @destroyer_coordinates  = Array.new
    @submarine_coordinates  = Array.new
    # binding.pry

  end


  def add_destroyer(ship)
    @ai_destroyer = ship
  end

  def add_submarine(ship)
    @ai_submarine = ship
  end

  def get_all_coordinates(ship)
    if ship.length == 2
      @destroyer_coordinates << @first_coordinate
      if second_coordinate.valid_coordinate?(@first_coordinate, @second_coordinate)
        @destroyer_coordinates << @second_coordinate
      else
        get_second_coordinate
    end
  end

  def first_coordinate
    @all_board_coordinates.sample
  end

  def get_second_coordinate
    @second_coordinate = @all_board_coordinates.sample
  end

  def valid_coordinate?(first_coordinate, second_coordinate)
    if coordinates_are_vertical?(first_coordinate, second_coordinate) && vertical_placement_is_adjacent?(first_coordinate, second_coordinate)
      true
    elsif coordinates_are_horizontal?(first_coordinate, second_coordinate) && horizontal_placement_is_adjacent(first_coordinate, second_coordinate)
      true
    else
      false
    end
  end


end

ai = Ai.new
# binding.pry
