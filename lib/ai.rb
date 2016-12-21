require_relative 'board'
require 'pry'

class Ai

  attr_accessor :ai_board


  def initialize
    @ai_board = Board.new
    # @ai_two_unit_place = two_unit_place
    # @ai_three_unit_place = three_unit_place
    # binding.pry
  end

  # def placement
  #     board_size = @ai_board.size
  #
  # end

  # def two_unit_place
  #
  #
  # end


end

ai = Ai.new
binding.pry
