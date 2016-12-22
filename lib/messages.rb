module Messages

  def self.welcome
    "Welcome to Battleship"
  end

  def self.starting_sequence
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.instructions
    "You know how to play Battleship"
  end


  def self.ai_placement
    "\tI have laid out my ships on the grid.
        You now need to layout your two ships.
        The first is two units long and the
        second is three units long.
        The grid has A1 at the top left and D4 at the bottom right."
  end

  def self.player_placement_two_unit_ship
    "Enter the squares for the two unit ship"
  end

  def self.player_placement_three_unit_ship
    "Enter the squares for the three unit ship"
  end

  def self.board_boarder
    "==========="
  end
end
