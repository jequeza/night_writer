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
    incoming_tex = handle.read
    handle.close
    incoming_tex
  end

  def convert
    read_file.upcase
    # converted_text = []
    # read_file.chars.each do |char|
    #   converted_text << @dictionary.english_dictionary[char]
    # end
    # converted_text.compact
  end
  #
  # def simplify_conversion
  #   transpose_matrix.flat_map do |row|
  #     row.join
  #   end.join("\n")
  # end

  # def transpose_matrix
  #   transpose_output = convert.transpose
  #   transpose_output
  # end

  def write_file
    writer = File.open(@file_out, "w")
    writer.write(convert)
    writer.write("\n")
    writer.close
  end

  def display_message
    "Created #{@file_out} containing #{read_file.length} characters."
  end
end