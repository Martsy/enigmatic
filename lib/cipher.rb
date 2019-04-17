class Cipher

  def alpha
    ('a'..'z').to_a << ''
  end

  def encode(char, shift)
    ind = alpha.find_index(char)
    # char if ind == nil?
    alpha.rotate(shift)[ind]
  end

  def decode(char, shift)
    shift_alpha = alpha.rotate(shift)
    ind = shift_alpha.find_index(char)
    # char if ind == nil?
    alpha[ind]
  end

  def find_shift(exp, act)
    ind_exp = alpha.find_index(exp)
    ind_act = alpha.find_index(act)
    # ind_act - ind_exp if ind_act >= ind_exp
    27 - ind_exp + ind_act
  end
end
