# frozen_string_literal: true

# The shell for the enigma machine
class Enigma
  def encrypt(message, key = nil, date = nil)
    date = today if date.nil?
    key = random if key.nil?
    shifts = shifter(date, key)
    text = e_cipher(message.downcase, shifts)
    { key: key, date: date, encryption: text }
  end
end
