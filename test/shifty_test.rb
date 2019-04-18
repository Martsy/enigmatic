require './test/test_helper'

class ShiftyTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_has_todays_date_when_date_not_provided
    enigma = Enigma.new
    expected = Date.today.strftime('%m%d%y')
    assert_equal expected, enigma.current
  end

  def test_date_has_six_numbers
    assert_equal 6, @enigma.current.length
  end

  def test_todays_date_is_a_string
    enigma = Enigma.new
    assert_instance_of String, enigma.current
  end

  def test_offsets_are_calculated_properly
    assert_equal [1, 0, 2, 5], @enigma.offsets('040895')
  end

  def test_key_will_be_five_numbers
    assert_equal 5, @enigma.random.length
  end

  def test_key_will_add_zeros
    assert_equal '00715', @enigma.keyed('715')
    assert_equal '00021', @enigma.keyed('21')
    assert_equal '00001', @enigma.keyed('1')
  end

  def test_keys_can_be_made
    assert_equal [2, 27, 71, 15], @enigma.key_set('02715')
  end

  def test_it_can_find_shift_from_char
    assert_equal 51, @enigma.find_shift('a', 'y')
    assert_equal 25, @enigma.find_shift('g', 'e')
    assert_equal 16, @enigma.find_shift('l', 'a')
  end
end
