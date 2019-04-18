require 'date'
module Shifty

  def shifter(date, random)
    offset = offsets(date)
    keys = key_set(random)
    keys.zip(offset).map { |key, ofst| key + ofst }
  end

  def key_set(number)
    number.chars.each_cons(2).map(&:join).map(&:to_i)
  end

  def find_shift(exp, act)
    ind_exp = alpha.find_index(exp)
    ind_act = alpha.find_index(act)
    ind_act - ind_exp if ind_act >= ind_exp
    27 - ind_exp + ind_act
  end

  def random
    keyed(rand(99_999))
  end

  def keyed(key)
    format('%05d', key.to_s)
  end

  def current
    Date.today.strftime('%m%d%y')
  end

  def offsets(date)
    (date.to_i**2).to_s.chars.last(4).map(&:to_i)
  end
end
