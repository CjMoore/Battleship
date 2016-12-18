require_relative 'messages'


class Battleship

  attr_accessor :input,
                :output


  def initialize(input, output)
    @input = input
    @output = output
  end

  def welcome
    puts Messages.welcome
    starting_sequence
  end

  def starting_sequence
    puts Messages.starting_sequence

    input = gets.chomp

    if input == "p"
      puts "not yet"
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

end

battleship = Battleship.new("huh", "wut")
battleship.welcome
