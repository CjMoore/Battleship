class Messages

  def self.welcome
    "Welcome to Battleship"
  end

  def self.starting_sequence
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.instructions
    # "The game will first prompt you to input the coordinates of your ships.\n
    # The first ship you will place is a has two coordinates, the second has three.\n
    # Please enter adjacent coordinates. Next the computer will place its own ships.\n
    # Next you will be asked to enter a coordinate at which you wish to shoot.\n
    # The computer will then take its shot. If there is a hit the board will print\n
    # and H at that location, if there is a miss an M will be printed. The game ends\n
    # when all of one players ships are sunk."
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
