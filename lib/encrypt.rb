require './lib/enigma'

input, output = ARGV

message = IO.read(input).delete("\n")
enigma = Enigma.new
encrypted = enigma.encrypt(message)

IO.write(output, encrypted[:encryption])
puts "Created '#{output}' with the key #{encrypted[:key]} and date #{encrypted[:date]}"
