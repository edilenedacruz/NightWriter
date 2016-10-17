require '../lib/night_write_translate.rb'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

thing = incoming_text.upcase

writer = File.open(ARGV[1], "w")

writer.write (@row_1)
writer.write (@row_2)
writer.write (@row_3)

writer.close

puts "Created '#{ARGV[1]}' containing #{thing} characters."
