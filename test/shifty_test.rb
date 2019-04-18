require './test/test_helper'

class ShiftyTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_can_find_shift_from_char
    assert_equal 3, @enigma.find_shift('a', 'y')
    assert_equal 17, @enigma.find_shift('g', 'e')
    assert_equal 16, @enigma.find_shift('l', 'a')
  end
end
