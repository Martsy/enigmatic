require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_enigma_class_exists
    assert_instance_of Enigma, @enigma
  end

  def test_method_encrypt_and_decrypt_with_empty_hash
    assert_equal ({}), @enigma.encrypt
    assert_equal ({}), @enigma.decrypt
  end
end
