class Cipher

  def alpha
    ('a'..'z').to_a << ''
  end

  def encode(char, shift)
    ind = alpha.find_index(char)
    char if ind == nil?
    alpha.rotate(shift)[ind]
  end
end
