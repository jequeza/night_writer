require "minitest/autorun"
require "minitest/pride"
require "./lib/braille_converter"

class BrailleConverterTest < Minitest::Test
  def test_it_exists
    converter = BrailleConverter.new
    assert_instance_of BrailleConverter, converter
  end
end