class Ship

  attr_reader :hits
  attr_accessor :health

  def initialize(length)
    @hits = 0
    @length = length
    @health = length
  end

  def hit
    @hits += 1
  end

  def health
    @length - @hits
  end

  def sunk?
    if (@length - @hits) == 0
      true
    else
      false
    end
  end

end
