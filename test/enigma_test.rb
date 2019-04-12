require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new(@encrypt, @decrypt)
  end

  def test_enigma_class_exists
    assert_instance_of Enigma, @enigma
  end

  def test_enigma_class_has_attributes_encrypt_and_decrypt
    assert_equal @encrypt, @enigma.encrypt
    assert_equal @decrypt, @enigma.decrypt
  end
end
