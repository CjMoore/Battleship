require_relative 'space'
require 'pry'

class CreateBoard

  attr_reader :row_letters,
              :space_names,
              :spaces

  attr_accessor :board_grid

  def initialize(size)
    @row_letters = row_letters
    @space_names = space_names
    @spaces = spaces
    @size = 4
    @board_grid = Hash.new
  end

  def row_letters
    Array("A".."Z")
  end

  def space_names
    @space_names = Array.new
    4.times do |i|
      letter = row_letters[i]
      4.times do |j|
        j += 1
        @space_names << letter + j.to_s
      end
    end
    @space_names
  end

  def spaces
    @spaces = Array.new
    space_names.count.times do |i|
      space = Space.new
      space.add_name(@space_names[i])
       @spaces << space
    end
    @spaces
  end

  def create_grid
    @spaces.each do |space|
      if @board_grid[space.name[0]]
        @board_grid[space.name[0]][space.name[1]] = space
      else
        @board_grid[space.name[0]] = {space.name[1] => space}
      end
    end
    @board_grid
  end
end
