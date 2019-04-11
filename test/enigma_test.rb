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
end
