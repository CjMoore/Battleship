require 'minitest/autorun'
require 'minitest/pride'
require './lib/ai'

class Ai_behaviorTest < MiniTest::Test

  def test_ai_can_make_its_board
    ai = Ai.new
    board = {"A" => {1 => nil, 2=> nil, 3=> nil, 4 => nil},
              "B" => {1 => nil, 2 => nil, 3 => nil, 4 => nil},
              "C" => {1 => nil, 2 => nil, 3 => nil, 4 => nil},
              "D" => {1 => nil, 2 => nil, 3 => nil, 4 => nil}}

    assert_equal board, ai.ai_board

  end



end
