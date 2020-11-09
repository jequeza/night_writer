require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test
  def test_it_exists_and_has_attributes
    nite_writer = NightWriter.new
    assert_instance_of NightWriter, nite_writer
    assert_equal ARGV[0], night_writer.file_in
    assert_equal ARGV[1], night_writer.file_out
  end
end