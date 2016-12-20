require_relative 'messages'
require_relative 'board'
require_relative 'ai'


class Battleship

  attr_accessor :input,
                :output,
                :ai_board


  def initialize(input, output)
    @input = input
    @output = output
    @ai_board = Ai.new.ai_board
    @player_board =
    @ai = Ai.new
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
    puts Messages.board_boarder
    print_board(ai_board)
  end

  def print_board(board)
    print_first_row
    board.each_pair do |key, value|
      print key
      value.values.each {|coordinate| print coordinate}
      print "\n"
        # binding.pry
    end
  end

  def print_first_row
    first_row = [".", "1", "2", "3", "4"]
    first_row.each { |item| print item + " "}
    print "\n"
  end

end

battleship = Battleship.new("huh", "wut")
battleship.welcome
