require 'pry'
file = File.open(ARGV[0], "r")
puts "Created '#{ARGV[1]}' containing #{file.read.length} characters"

p File.read(file

File.write('./braille.txt', File.read(file))

p File.read(ARGV[1])

File.open(ARGV[0], 'rb') do |input_stream|
  File.open(ARGV[1], 'wb') do |output_stream|
    IO.copy_stream(input_stream, output_stream)
    # binding.pry
  end
end
#file.truncate(80)
