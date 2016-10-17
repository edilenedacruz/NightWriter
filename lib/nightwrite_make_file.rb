require '../lib/night_write_translate.rb'

handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

nightwrite = NightWrite.new(incoming_text)
translated_text = nightwrite.translate_to_braille

writer = File.open(ARGV[1], "w")
writer.write(translated_text)
writer.close

puts "Created '#{ARGV[1]}' containing #{translated_text.length - 2} characters."


# 
# 0 => [".0", "00", ".."], 1 => ["0.", "..", ".."],
# 2 => ["0.", "0.", ".."], 3 => ["00", "..", ".."], 4 => ["00", ".0", ".."],
# 5 => ["0.", ".0", ".."], 6 => ["00", "0.", ".."], 7 => ["00", "00", ".."],
# "#" => [".0", ".0", "00"],
# 8 => ["0.", "00", ".."], 9 => [".0", "0.", ".."]
