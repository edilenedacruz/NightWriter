require 'pry'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write_translate.rb'


class NightWriteTest < Minitest::Test

    def test_the_class_exists_at_all
      nightwrite = NightWrite.new("turtle")
      assert_equal NightWrite, nightwrite.class
    end

    def test_it_initializes_with_arguments
      nightwrite = NightWrite.new("turtle")
      assert_equal "turtle", nightwrite.input
      assert_equal nil, nightwrite.output
    end

    def test_it_will_identify_the_library_from_the_alphabet_class
      nightwrite = NightWrite.new("turtle")
      assert_equal @library = { "a" => ["0.", "..", ".."], "b" => ["0.", "0.", ".."],
                  "c" => ["00", "..", ".."], "d" => ["00", ".0", ".."], "e" => ["0.", ".0",".."],
                  "f" => ["00", "0.", ".."], "g" => ["00", "00", ".."], "h" => ["0.", "00", ".."],
                  "i" => [".0", "0.", ".."], "j" => [".0", "00", ".."], "k" => ["0.", "..", "0."],
                  "l" => ["0.", "0.", "0."], "m" => ["00", "..", "0."], "n" => ["00", ".0", "0."],
                  "o" => ["0.", ".0", "0."], "p" => ["00", "0.", "0."], "q" => ["00", "00", "0."],
                  "r" => ["0.", "00", "0."], "s" => [".0", "0.", "0."], "t" => [".0", "00", "0."],
                  "u" => ["0.", "..", "00"], "v" => ["0.", "0.", "00"], "w" => [".0", "00", ".0"],
                  "x" => ["00", "..", "00"], "y" => ["00", ".0", "00"], "z" => ["0.", ".0", "00"],
                  "!" => ["..", "00", "0."], "'" => ["..", "..", "0."], "," => ["..", "0.", ".."],
                  "-" => ["..", "..", "00"], "." => ["..", "00", ".0"], "?" => ["..", "0.", "00"],
                  " " => ["..", "..", ".."], "A" => ["..0.", "....", ".0.."],
                  "B" => ["..0.", "..0.", ".0.."], "C" => ["..00", "....", ".0.."], "D" => ["..00", "...0", ".0.."],
                  "E" => ["..0.", "...0",".0.."], "F" => ["..00", "..0.", ".0.."], "G" => ["..00", "..00", ".0.."],
                  "H" => ["..0.", "..00", ".0.."], "I" => ["...0", "..0.", ".0.."], "J" => ["...0", "..00", ".0.."],
                  "K" => ["..0.", "....", ".00."], "L" => ["..0.", "..0.", ".00."], "M" => ["..00", "....", ".00."],
                  "N" => ["..00", "...0", ".00."], "O" => ["..0.", "...0", ".00."], "P" => ["..00", "..0.", ".00."],
                  "Q" => ["..00", "..00", ".00."], "R" => ["..0.", "..00", ".00."], "S" => ["...0", "..0.", ".00."],
                  "T" => ["...0", "..00", ".00."], "U" => ["..0.", "....", "..00"], "V" => ["..0.", "..0.", ".000"],
                  "W" => ["...0", "..00", ".0.0"], "X" => ["..00", "....", ".000"], "Y" => ["..00", "...0", ".000"],
                 "Z" => ["..0.", "...0", ".000"] }, nightwrite.library
    end

    def test_it_returns_an_array
      nightwrite = NightWrite.new("car")
      array = [["00", "..", ".."], ["0.", "..", ".."], ["0.", "00", "0."]]
      assert nightwrite.translate_to_braille
    end

    def test_it_will_transpose_into_three_arrays
      nightwrite = NightWrite.new("car")
      new_array = ["000.0.", "....00", "....0."]
      assert nightwrite.translate_to_braille
    end

    def test_it_will_create_rows
      nightwrite = NightWrite.new("car")
      row_1 = "000.0."
      row_2 = "....00"
      row_3 = "....0."
      assert nightwrite.translate_to_braille
    end



end
