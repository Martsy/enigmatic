require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/cipher'

class CipherTest < MiniTest::Test
  def setup
    @cipher = Cipher.new
  end

  def test_cipher_class_exists
    assert_instance_of Cipher, @cipher
  end

  def test_encoded_letter
    assert_equal 'd', @cipher.encode('a', 3)
    assert_equal 'b', @cipher.encode('b', 0)
  end

  def test_it_can_decode_characters
    assert_equal 'x', @cipher.decode('c', 6)
    assert_equal '', @cipher.decode('d', 4)
  end

end
