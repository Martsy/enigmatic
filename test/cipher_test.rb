require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/cipher'

class CipherTest < MiniTest::Test
  def setup
    @cipher = Cipher.new
    @enigma = Enigma.new
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

  def test_it_can_find_shift_from_char
    assert_equal 51, @cipher.find_shift('a', 'y')
    assert_equal 25, @cipher.find_shift('g', 'e')
    assert_equal 16, @cipher.find_shift('l', 'a')
  end

  def test_it_creates_ciphert
    shifts = [3, 27, 73, 20]
    message = "hello world!"

    expected = 'keder ohulw!'
    assert_equal expected, @cipher.create_cipher(message, shifts)
  end
end
