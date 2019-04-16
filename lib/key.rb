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
    key = key.split(//).each_cons(2).to_a
    split = key.map(&:join)
    split.map(&:to_i)
  end
end
