module Cipher
  def alpha
    ('a'..'z').to_a << ' '
  end

  def encode(char, shift)
    ind = alpha.find_index(char)
    return char if ind.nil?

    alpha.rotate(shift)[ind]
  end

  def decode(char, shift)
    shift_alpha = alpha.rotate(shift)
    ind = shift_alpha.find_index(char)
    return char if ind.nil?

    alpha[ind]
  end
end
