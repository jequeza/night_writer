require "minitest/autorun"
require "minitest/pride"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test
  def test_it_exists_and_has_attributes
    nite_writer = NightWriter.new
    assert_instance_of NightWriter, nite_writer
    assert_equal ARGV[0], nite_writer.file_in
    assert_equal ARGV[1], nite_writer.file_out
  end

  def test_it_can_display_message
    nite_writer = NightWriter.new
    file_out = "output.txt"
    @incoming_text = "hello"
    expected_msg = "Created #{@file_out} containing #{@incoming_text.length} characters."

    assert_equal expected_msg, nite_writer.display_message
  end


end