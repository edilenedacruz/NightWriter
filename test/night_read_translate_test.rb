require 'pry'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_read_translate.rb'

class NightReadTest < Minitest::Test

  def test_the_class_exists_at_all
    nightread = NightRead.new
    assert_equal NightRead, nightread.class
  end

end
