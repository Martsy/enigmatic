require 'date'
module Shifty
  def shifter(date, random)
    offset = offsets(date)
    keys = key_set(random)
    keys.zip(offset).map { |key, ofst| key + ofst }
  end

  def find_shift(exp, act)
    ind_exp = alpha.find_index(exp)
    ind_act = alpha.find_index(act)
    ind_act - ind_exp if ind_act >= ind_exp
    27 - (ind_exp + ind_act)
  end
end
