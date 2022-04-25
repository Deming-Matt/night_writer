require 'pry'
require './lib/translator'

include Translator

file = File.open(ARGV[0], "r")

file2 = File.open(ARGV[1], "w")
File.open(file, "r") do |file_object|
  file_object.each_char do |char|
    file2 << translate(char)
  end
end
binding.pry

file2.close

# File.write(ARGV[1], File.read(file))

puts "Created '#{ARGV[1]}' containing #{file.read.length} characters"
# p File.read(ARGV[1])
file.close

# File.open(ARGV[0], 'rb') do |input_stream|
#   File.open(ARGV[1], 'wb') do |output_stream|
#     IO.copy_stream(input_stream, output_stream)
#     # binding.pry
#   end
# end
#file.truncate(80)
