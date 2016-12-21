require 'minitest/autorun'
require 'minitest/pride'
require './lib/space'


class SpaceTest < MiniTest::Test

  def test_space_is_unocupied_by_default
    space = Space.new

    assert_nil space.occupied
  end

  def test_space_can_be_given_name
    space = Space.new
    space.name = "A1"

    assert_equal "A1", space.name
  end

  def test_space_can_be_occupied_by_ship
    space = Space.new
    ship = Ship.new(2)
    space.occupied = ship

    assert_equal ship, space.occupied
  end

  def test_space_can_tell_ship_it_has_been_hit
    space = Space.new
    ship = Ship.new(2)
    space.occupied = ship
    space.attacked

    assert_equal 1, ship.hits
  end

  def

end
