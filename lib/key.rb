# frozen_string_literal: true

# Key generation
class Key
  attr_reader :key

  def initialize(key)
    @key = random(key)
  end

  def random(key)
    key = rand(99_999) if key.nil?
    key.format('%05d').to_s
  end

  
