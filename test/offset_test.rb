require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/offset'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new('040895')
  end

  def test_offset_class_exists
    assert_instance_of Offset, @offset
  end

  def test_it_has_date
    assert_equal '040895', @offset.date
  end

  def test_it_has_todays_date_when_date_not_provided
    offset = Offset.new(nil)
    expected = Date.today.strftime('%m%d%y')
    assert_equal expected, offset.date_set
  end

  def test_date_has_six_numbers
    assert_equal 6, @offset.date_set.length
  end

  def test_todays_date_is_a_string
    offset = Offset.new(nil)
    assert_instance_of String, offset.date_set
  end

  def test_offsets_are_calculated_properly
    @offset = Offset.new('040895')
    assert_equal [1, 0, 2, 5], @offset.offsets('040895')
  end
end
