require '../lib/night_read_translate.rb'

handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

nightread = NightRead.new(incoming_text)
variable_to_be_named = nightread.method_name

writer = File.open(ARGV[1], "w")
writer.write(variable_to_be_named)
writer.close

puts "Created '#{ARGV[1]}' containing #{variable_to_be_named} characters."
