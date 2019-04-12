class Enigma
  attr_reader :encrypt,
              :decrypt

  def initialize(encrypt, decrypt)
  
  end

  # The keys are created by generating a random five digit
  # number, like 02715, and splitting it up like so:
  # A key: first two digits (02)
  # B key: second and third digits (27)
  # C key: third and fourth digits (71)
  # D key: fourth and fifth digits (15)
  # =
end
