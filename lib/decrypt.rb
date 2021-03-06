require './lib/enigma'

input, output, key, date = ARGV

enigma = Enigma.new
ciphertext = IO.read(input)
decrypted = enigma.decrypt(ciphertext, key, date)

IO.write(output, decrypted[:decryption])

puts "Created '#{output}' with the key #{decrypted[:key]} and date #{decrypted[:date]}"
