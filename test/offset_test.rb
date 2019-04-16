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
end
