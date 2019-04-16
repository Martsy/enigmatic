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
end
