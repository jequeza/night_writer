class NightWriter
  attr_reader :file_in,
              :file_out

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
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

  def convert
    capitalized_text = @incoming_text.upcase
  end


  def write_file
    writer = File.open(ARGV[1], "w")
    writer.write(convert)
    writer.close
  end

  def display_message
    "Created #{@file_out} containing #{@incoming_text.length} characters."
  end
end









