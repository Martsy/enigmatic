require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/cipher'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_enigma_class_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encryption
    expected = {
      encryption: 'keder ohulw',
      key: '02715',
      date: '040895'
    }

    actual = @enigma.encrypt('hello world', '02715', '040895')
    assert_equal expected, actual
  end

end
