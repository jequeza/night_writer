require "./lib/dictionary"
require "./lib/braille_converter"
class NightWriter
  attr_reader :file_in,
              :file_out,
              :incoming_text

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
    @dictionary = Dictionary.new
    # @converter = BrailleConverter.new
  end

  def orchestrate_conversion
    read_file
    write_file
    puts display_message
  end

  def read_file
    handle = File.open(ARGV[0], "r")
    @incoming_text = handle.read
    handle.close
  end

  # def convert
  #   @converter.convert
  # end
  #
  # def simplify_conversion
  #   @converter.simplify_conversion
  # end

  # def convert
  #   converted_text = []
  #   @incoming_text.chars.each do |char|
  #     converted_text << @dictionary.braille_dictionary[char]
  #   end
  #   converted_text
  # end

  def convert
    converted_text = []
    @incoming_text.chars.each do |char|
      converted_text << @dictionary.braille_dictionary[char]
    end
    converted_text
  end

  def simplify_conversion
    convert.transpose.flatten.join("\n")
  end


  def write_file
    writer = File.open(ARGV[1], "w")
    writer.write(simplify_conversion)
    writer.close
  end

  def display_message
    "Created #{@file_out} containing #{@incoming_text.length} characters."
  end
end









