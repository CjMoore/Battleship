module MakeAllCoordinates

  def row_letters
    Array("A".."Z")
  end

  def column_numbers
    Array("1".."26")
  end

  def all_coordinates
    all_coordinates = Array.new
    4.times do |i|
      4.times do |j|
        all_coordinates << row_letters[i] + column_numbers[j]
      end
    end
    all_coordinates
  end

end
