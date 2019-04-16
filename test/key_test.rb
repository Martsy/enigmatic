require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'

class KeyTest < Minitest::Test
  def setup
    @enigma = Enigma.new
    @key = Key.new('02715')
  end

  def test_keyer_class_exists
    assert_instance_of Key, @key
  end

  def test_key_class_has_key_attribute
    assert_equal '02715', @key.key
  end

  def test_key_will_be_five_numbers
    assert_equal 5, @key.key.length
  end

  def test_key_will_add_zeros
    key1 = Key.new('715')
    key2 = Key.new('21')
    key3 = Key.new('1')
    assert_equal '00715', key1.keys(715)
    assert_equal '00021', key2.keys(21)
    assert_equal '00001', key3.keys(1)
  end
end
