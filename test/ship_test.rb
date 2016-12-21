require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require 'pry'

class ShipTest < MiniTest::Test

  def test_hits_zero_by_default
    ship = Ship.new(2)

    assert_equal ship.hits, 0
  end

  def test_ship_can_be_hit
    ship = Ship.new(2)
    ship.hit

    assert_equal ship.hits, 1
  end

  def test_ship_health_goes_down
    ship = Ship.new(2)
    ship.hit

    assert_equal ship.health, 1
  end

  def test_ship_can_be_sunk
    ship = Ship.new(2)
    ship.hit
    ship.hit
    # binding.pry

    assert ship.sunk?
  end


end
