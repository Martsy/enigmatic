class Enigma
  def encrypt(message, key = nil, date = nil)
    date   = today if date.nil?
    key    = random if key.nil?
    shifts = shifter(date, key)
    text   = create_cipher(message.downcase, shifts)
    { key: key, date: date, encryption: text }
  end

  def decrypt(message, key, date = nil)
    date   = today if date.nil?
    shifts = shifter(date, key)
    text   = d_cipher(message, shifts)
    { key: key, date: date, decryption: text }
  end

  def shifter(date, random)
    offset = offsets(date)
    keys = keyed(random)
    keys.zip(offset).map { |key, ofset| key + ofset }
  end
end
