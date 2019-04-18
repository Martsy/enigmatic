require './lib/enigma'
input, output, key, date = ARGV

enigma = Enigma.new
cypher = IO.read(input)
message = enigma.decrypt(message, key, date)
IO.write(output, decrypted[:decryption])

puts "Created '#{output}' with the key #{decrypted[:key]} and date #{decrypted[:date]}"
