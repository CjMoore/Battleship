class Player
  attr_accessor :player_board


  def initialize
    @player_board = Board.new.create_board(4)

  end


end
