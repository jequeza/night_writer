require "minitest/autorun"
require "minitest/pride"
require "./lib/dictionary"

class DictionaryTest < Minitest::Test
  def test_it_exists_and_has_attributes
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
    assert_equal [["0."],[".."],[".."]], dictionary.braille_dictionary["a"]
    assert_equal [["0."],["0."],[".."]], dictionary.braille_dictionary["b"]
    assert_equal [["00"],[".."],[".."]], dictionary.braille_dictionary["c"]
    assert_equal [["00"],[".0"],[".."]], dictionary.braille_dictionary["d"]
    assert_equal [["0."],[".0"],[".."]], dictionary.braille_dictionary["e"]
    assert_equal [["00"],["0."],[".."]], dictionary.braille_dictionary["f"]
    assert_equal [["00"],["00"],[".."]], dictionary.braille_dictionary["g"]
    assert_equal [["0."],["00"],[".."]], dictionary.braille_dictionary["h"]
    assert_equal [[".0"],["0."],[".."]], dictionary.braille_dictionary["i"]
    assert_equal [[".0"],["00"],[".."]], dictionary.braille_dictionary["j"]
    assert_equal [["0."],[".."],["0."]], dictionary.braille_dictionary["k"]
    assert_equal [["0."],["0."],["0."]], dictionary.braille_dictionary["l"]
    assert_equal [["00"],[".."],["0."]], dictionary.braille_dictionary["m"]
    assert_equal [["00"],[".0"],["0."]], dictionary.braille_dictionary["n"]
    assert_equal [["0."],[".0"],["0."]], dictionary.braille_dictionary["o"]
    assert_equal [["00"],["0."],["0."]], dictionary.braille_dictionary["p"]
    assert_equal [["00"],["00"],["0."]], dictionary.braille_dictionary["q"]
    assert_equal [["0."],["00"],["0."]], dictionary.braille_dictionary["r"]
    assert_equal [[".0"],["0."],["0."]], dictionary.braille_dictionary["s"]
    assert_equal [[".0"],["00"],["0."]], dictionary.braille_dictionary["t"]
    assert_equal [["0."],[".."],["00"]], dictionary.braille_dictionary["u"]
    assert_equal [["0."],["0."],["00"]], dictionary.braille_dictionary["v"]
    assert_equal [[".0"],["00"],[".0"]], dictionary.braille_dictionary["w"]
    assert_equal [["00"],[".."],["00"]], dictionary.braille_dictionary["x"]
    assert_equal [["00"],[".0"],["00"]], dictionary.braille_dictionary["y"]
    assert_equal [["0."],[".0"],["00"]], dictionary.braille_dictionary["z"]
    assert_equal [[".."],[".."],[".."]], dictionary.braille_dictionary[" "]
  end
end