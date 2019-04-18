require_relative './shifty.rb'
require_relative './cipher.rb'
require_relative './numbers.rb'
require 'date'

class Enigma
  include Shifty
  include Cipher
  include Numbers

  def encrypt(message, key = nil, date = nil)
    date   = current if date.nil?
    key    = random if key.nil?
    shifts = shifter(date, key)
    text   = create_cipher(message.downcase, shifts)
    { key: key, date: date, encryption: text }
  end

  def decrypt(message, key, date = nil)
    date   = current if date.nil?
    shifts = shifter(date, key)
    text   = decrypt_cipher(message, shifts)
    { key: key, date: date, decryption: text }
  end

  def create_cipher(message, shifts)
    enc_chars = message.chars.map.with_index do |char, ind|
      encode(char, shifts[ind % 4])
    end
    enc_chars.join('')
  end

  def decrypt_cipher(message, shifts)
    dec_chars = message.chars.map.with_index do |char, index|
      decode(char, shifts[index % 4])
    end
    dec_chars.join('')
  end
end
