class Key
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def random
    keys.rand(99_999)
  end

  def keys(key)
    format('%05d', key.to_s)
  end

  def key_set(key)
    key.chars.each_cons(2).map(&:join).map(&:to_i)
  end
end
