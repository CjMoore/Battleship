require_relative 'board'

class Player

  attr_accessor :player_board


  def initialize
    @player_board = Board.new
  end

  def get_ship_coordinates
    input = gets.chomp
  end

  


end

player = Player.new

binding.pry
