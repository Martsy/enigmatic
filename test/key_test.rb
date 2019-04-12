# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'

class KeyTest < Minitest::Test
  def test_key_class_exists
    key = Key.new
    assert_instance_of Key, key
  end
end
