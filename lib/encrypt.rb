# require 'date'
# require './lib/enigma'
#
# # read input
# input_filename      = ARGV[0]
# message             = File.read input_filename
#
# # encryption
# enigma = Enigma.new(message, key, date)
# key    = Enigma.random
# date   = Date.today.strftime('%m%d%y')
#
# # write
# output_filename = ARGV[1]
# encrypted_message = enigma.encrypt
# File.write output_filename, encrypted_message
#
# # print
# puts "Created #{output_filename} with the key #{key} and date #{date}"




require './lib/enigma'

input, output = ARGV
message = IO.read(input).gsub("\n","")

enigma = Enigma.new
encrypted = enigma.encrypt(message)
IO.write(output, encrypted[:encryption])

puts "Created '#{output}' with the key #{encrypted[:key]} and date #{encrypted[:date]}"
