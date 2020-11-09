require "minitest/autorun"
require "minitest/pride"
require "./lib/dictionary"

class DictionaryTest < Minitest::Test
  def test_it_exists_and_has_attributes
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
    assert_equal [["0."],[".."],[".."]], dictionary.a

  end

end