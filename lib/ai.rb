require_relative 'board'

class Ai

  attr_accessor :ai_board,
                :placement

  def initialize
    @ai_board = Board.new.create_board(4)
    # @ai_two_unit_place = two_unit_place
    # @ai_three_unit_place = three_unit_place
  end

  def placement
      board_size = @ai_board.size

  end

  # def two_unit_place
  #
  #
  # end


end
