require "./lib/dictionary"

class NightReader
  attr_reader :file_in,
              :file_out,
              :incoming_text

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
    @dictionary = Dictionary.new
  end

  def orchestrate_english_conversion
    read_file
    write_file
    puts display_message
  end

  def read_file
    handle = File.open(@file_in, "r")
    @incoming_text = handle.readlines(chomp: true)
    handle.close
    @incoming_text
  end

  def prepare_conversion
    text_from_arr = []
    text_for_conversoin = []
    @incoming_text.map do |line|
      element = line.slice!(0..1)
      text_from_arr << element
    end
    text_for_conversoin << text_from_arr
    text_for_conversoin
  end

  def convert
    converted_text = []
    prepare_conversion.each do |line|
      converted_text << @dictionary.english_dictionary[line]
    end
    converted_text.join
  end

  def write_file
    writer = File.open(@file_out, "w")
    writer.write(convert)
    writer.write("\n")
    writer.close
  end

  def display_message
    "Created #{@file_out} containing #{read_file.join.length} characters."
  end
end