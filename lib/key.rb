# frozen_string_literal: true

# Key generation
class Key
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def random(key)
    @key = rand(99_999)
    @key.format('%05d').to_s
  end

  # def keys_from_number(number)
  #   (0..3).to_a.map { |idx| number[idx..idx + 1].to_i }
  # end
  #
  # def random_key
  #   return pad(generate_random_number)
  # end
  #
  # def pad(int)
  #   return int.to_s.rjust(5, "0")
  # end
end
