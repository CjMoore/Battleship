require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'


class MessagesTest < MiniTest::Test

  def test_welcome_output
    assert Messages.welcome.include?("Welcome")
    refute Messages.welcome.include?("Hello")
  end

  def test_starting_sequence_output
    assert Messages.starting_sequence.include?("Would")
  end

  def test_instructions_output
    assert Messages.instructions.include?("The game")
  end

end
