require_relative 'messages'
require_relative 'board'
require_relative 'ai'
require_relative 'ship'
require_relative 'player'


class Battleship

  attr_accessor :ai,
                :player

  def initialize
    @ai = Ai.new
    @player = Player.new
  end

  def welcome
    puts Messages.welcome
    starting_sequence
  end

  def starting_sequence
    puts Messages.starting_sequence

    input = gets.chomp

    if input == "p"
      play
    elsif input == "i"
      puts Messages.instructions
      starting_sequence
    elsif input == "q"
      exit!
    else
      puts "Please input 'p' to play 'i' for instructions or 'q' to quit"
      starting_sequence
    end
  end

  def play

    puts Messages.ai_placement
    @ai.add_destroyer(Ship.new(2))
    @ai.add_submarine(Ship.new(3))
    # binding.pry
    # puts Messages.board_boarder
    # print_board(ai_board)
    #
    # print_board(update_board(false, "A2", ai_board))

  end
  #
  # def update_board(hit, shot, board)
  #   if hit == true
  #     # binding.pry
  #     board[shot[0]][shot[1].to_i] = " H"
  #   else
  #     board[shot[0]][shot[1]] = " M"
  #   end
  #   board
  # end
  #
  # def print_board(board)
  #   print_first_row
  #   board.each_pair do |key, value|
  #     print key
  #     value.values.each {|coordinate| print coordinate}
  #     print "\n"
  #       # binding.pry
  #   end
  # end
  #
  # def print_first_row
  #   first_row = [".", "1", "2", "3", "4"]
  #   first_row.each { |item| print item + " "}
  #   print "\n"
  # end

end

# battleship = Battleship.new
# battleship.welcome
