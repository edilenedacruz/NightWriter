class NightWrite
  attr_reader :input,
              :output
  def initialize(input, output)
    @file_io = File.new("message.txt", "r")
    @input = input
    @output = output
  end
  #need to differentiate between input and out put, and
  #then count the number of charcters in the output file
  def output_to_terminal
    
  end

end
