require 'minitest/autorun'
require_relative 'checkerboard'
 
class CheckerboardTest < Minitest::Test
  def test_small_board
    expected = <<-BOARD
B W
W B
    BOARD
    assert_equal expected, Checkerboard.new(2).to_s
  end
end
