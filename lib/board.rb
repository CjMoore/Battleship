require 'pry'
require_relative 'create_board'

class Board

  attr_accessor :grid,
                :display_grid

  def initialize
    @grid         = CreateBoard.new(4).create_grid
    @display_grid = CreateBoard.new(4).create_grid
  end


end
