# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new('02715')
  end

  def test_keyer_class_exists
    key = Key.new('02715')
    assert_instance_of Key, key
  end

  def test_key_is_created; end

  def test_key_will_format
    key1 = Key.new('2715')
    key2 = Key.new('321')
    key3 = Key.new('21')
    key4 = Key.new('1')
    assert_equal '02715', @key.key_table(2715)
    assert_equal '00321', @key.keytable
    assert_equal '00021', key3.number
    assert_equal '00001', key4.number
  end
end
