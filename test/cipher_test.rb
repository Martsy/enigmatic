require './test/test_helper'

class CipherTest < MiniTest::Test
  def test_encoded_letter
    @enigma = Enigma.new
    assert_equal 'd', @enigma.encode('a', 3)
    assert_equal 'b', @enigma.encode('b', 0)
    assert_equal 'q', @enigma.encode('f', 11)
    assert_equal '!', @enigma.encode('!', 23)
  end

  def test_it_can_decode_characters
    @enigma = Enigma.new
    assert_equal 'q', @enigma.decode('q', 0)
    assert_equal 'x', @enigma.decode('c', 6)
    assert_equal '', @enigma.decode('d', 4)
    assert_equal '@', @enigma.decode('@', 9)
  end
end
