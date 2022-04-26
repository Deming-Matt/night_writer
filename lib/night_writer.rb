require 'pry'
require './lib/translator'
file = File.open(ARGV[0], "r")
file2 = File.open(ARGV[1], "w")
test = []

file.read.chomp.chars.each_slice(8) do |char_arr| #"hey yo"
  translator = Translator.new
  char_arr.each do |char|
    translator.add_char(char)
  end
  file2 << translator.output
end

file2.close
file.rewind

puts "Created '#{ARGV[1]}' containing #{file.read.length} characters"

file.close

# File.open(ARGV[0], 'rb') do |input_stream|
#   File.open(ARGV[1], 'wb') do |output_stream|
#     IO.copy_stream(input_stream, output_stream)
#     # binding.pry
#   end
# end
#file.truncate(80)
