require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'
require './lib/offset'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
  end
