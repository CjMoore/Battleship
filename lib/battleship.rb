require_relative 'messages'
require_relative 'board'
require_relative 'ai'
require_relative 'ship'
require_relative 'player'


class Battleship

  attr_accessor :ai,
                :player

  include Messages

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


  end

end

battleship = Battleship.new
battleship.welcome
