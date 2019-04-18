module Numbers
  def key_set(number)
    number.chars.each_cons(2).map(&:join).map(&:to_i)
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
