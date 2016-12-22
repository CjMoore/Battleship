module ValidateCoordinates

  def first_coordinate_is_occupied?(board, coordinate)
    if board.grid[coordinate[0]][coordinate[1]].occupied.nil?
      false
    else
      true
    end
  end

  def coordinates_are_horizontal?(first_coordinate, second_coordinate)
    if first_coordinate[0] == second_coordinate[0]
      true
    else
      false
    end
  end

  def horizontal_placement_is_adjacent?(first_coordinate, second_coordinate)
    if first_coordinate[1].to_i - second_coordinate[1].to_i == 1 && coordinates_are_horizontal?(first_coordinate, second_coordinate)
      true
    elsif first_coordinate[1].to_i - second_coordinate[1].to_i == -1 && coordinates_are_horizontal?(first_coordinate, second_coordinate)
      true
    else
      false
    end
  end

  def coordinates_are_vertical?(first_coordinate, second_coordinate)
    if first_coordinate[1] == second_coordinate[1]
      true
    else
      false
    end
  end

  def vertical_placement_is_adjacent?(first_coordinate, second_coordinate)
    if first_coordinate[0].ord - second_coordinate[0].ord == 1 && coordinates_are_vertical?(first_coordinate, second_coordinate)
      true
    elsif first_coordinate[0].ord - second_coordinate[0].ord == -1 && coordinates_are_vertical?(first_coordinate, second_coordinate)
      true
    else
      false
    end
  end

end
