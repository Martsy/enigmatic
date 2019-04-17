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
end
