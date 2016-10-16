class Alphabet

  attr_reader :input,
              :library

  def initialize
    @input = input
    @library = { "a" => ["0.", "..", ".."], "b" => ["0.", "0.", ".."],
                "c" => ["00", "..", ".."], "d" => ["00", ".0", ".."], "e" => ["0.", ".0",".."],
                "f" => ["00", "0.", ".."], "g" => ["00", "00", ".."], "h" => ["0.", "00", ".."],
                "i" => [".0", "0.", ".."], "j" => [".0", "00", ".."], "k" => ["0.", "..", "0."],
                "l" => ["0.", "0.", "0."], "m" => ["00", "..", "0."], "n" => ["00", ".0", "0."],
                "o" => ["0.", ".0", "0."], "p" => ["00", "0.", "0."], "q" => ["00", "00", "0."],
                "r" => ["0.", "00", "0."], "s" => [".0", "0.", "0."], "t" => [".0", "00", "0."],
                "u" => ["0.", "..", "00"], "v" => ["0.", "0.", "00"], "w" => [".0", "00", ".0"],
                "x" => ["00", "..", "00"], "y" => ["00", ".0", "00"], "z" => ["0.", ".0", "00"],
                "!" => ["..", "00", "0."], "'" => ["..", "..", "0."], "," => ["..", "0.", ".."],
                "-" => ["..", "..", "00"], "." => ["..", "00", ".0"], "?" => ["..", "0.", "00"], " " => ["..", "..", ".."],
                "#" => [".0", ".0", "00"], 0 => [".0", "00", ".."], 1 => ["0.", "..", ".."],
                2 => ["0.", "0.", ".."], 3 => ["00", "..", ".."], 4 => ["00", ".0", ".."],
                5 => ["0.", ".0", ".."], 6 => ["00", "0.", ".."], 7 => ["00", "00", ".."],
                8 => ["0.", "00", ".."], 9 => [".0", "0.", ".."], "A" => ["..0.", "....", ".0.."],
                "B" => ["..0.", "..0.", ".0.."], "C" => ["..00", "....", ".0.."], "D" => ["..00", "...0", ".0.."],
                "E" => ["..0.", "...0",".0.."], "F" => ["..00", "..0.", ".0.."], "G" => ["..00", "..00", ".0.."],
                "H" => ["..0.", "..00", ".0.."], "I" => ["...0", "..0.", ".0.."], "J" => ["...0", "..00", ".0.."],
                "K" => ["..0.", "....", ".00."], "L" => ["..0.", "..0.", ".00."], "M" => ["..00", "....", ".00."],
                "N" => ["..00", "...0", ".00."], "O" => ["..0.", "...0", ".00."], "P" => ["..00", "..0.", ".00."],
                "Q" => ["..00", "..00", ".00."], "R" => ["..0.", "..00", ".00."], "S" => ["...0", "..0.", ".00."],
                "T" => ["...0", "..00", ".00."], "U" => ["..0.", "....", "..00"], "V" => ["..0.", "..0.", ".000"],
                "W" => ["...0", "..00", ".0.0"], "X" => ["..00", "....", ".000"], "Y" => ["..00", "...0", ".000"],
               "Z" => ["..0.", "...0", ".000"] }
  end

  def method_to_translate(input)
    input = "I suck at coding!"
    braille_array = input.chomp.chars.map do |letter|
      @library[letter]
    end
    row_array = braille_array.transpose.map do |letter|
      letter
    end

    row_3 = row_array.pop
    row_2 = row_array.pop
    row_1 = row_array.pop
    #at this point, row_array = []
  end

  def method_to_write_the_braille
    braille_file = File.new("Braille.txt", "w")
    braille_file.puts @row_1
    braille_file.puts @row_2
    braille_file.puts @row_3
    braille_file.close
  end
end