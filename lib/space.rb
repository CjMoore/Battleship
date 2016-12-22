require_relative 'ship'

class Space

  attr_accessor :occupied,
                :name,

  def initialize
    @occupied = nil
    @name = name
    @status = status
  end

  def add_name(name)
    @name = name
  end

  def add_ship(ship)
    @occupied = ship
  end

  def attacked
    if occupied != nil
      @status = "H"
      @occupied.hit
    else
      @status = "M"
    end
  end


end
