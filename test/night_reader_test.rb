require "minitest/autorun"
require "minitest/pride"
require "./lib/night_reader"

class NightReaderTest < Minitest::Test
  def test_it_exists_and_has_attributes
    nite_reader = NightReader.new
    assert_instance_of NightReader, nite_reader
    assert_equal ARGV[0], nite_reader.file_in
    assert_equal ARGV[1], nite_reader.file_out
  end
end


