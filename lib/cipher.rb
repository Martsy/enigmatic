class Cipher
  def alpha
    ('a'..'z').to_a << ''
  end

  def shifter(date, random)
    offset = offsets(date)
    keys = keyed(random)
    keys.zip(offset).map { |key, offset| key + offset }
  end

  def keyed(number)
    (0..3).to_a.map { |idx| number[idx..idx + 1].to_i }
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

  def find_shift(exp, act)
    ind_exp = alpha.find_index(exp)
    ind_act = alpha.find_index(act)
    ind_act - ind_exp if ind_act >= ind_exp
    27 - ind_exp + ind_act
  end

  def create_cipher(message, shifts)
    enc_chars = message.chars.map.with_index do |char, ind|
      encode(char, shifts[ind % 4])
    end
    enc_chars.join('')
  end
end
