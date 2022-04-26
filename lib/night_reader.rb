require 'pry'
require './lib/translator'
file = File.readlines(ARGV[0], "r")
file2 = File.open(ARGV[1], "w")
translator = Translator.new

binding.pry
file2 << file.read.each do |line|

  translator.slice_braille(line)
  # until line.find_index("\n")
  #   translator.slice_braille(line)
   line
 # end
end
puts "Created '#{ARGV[1]}' containing #{file.read.length} characters."


# file.read.chomp.chars.each_slice(8) do |char_arr|
#   binding.pry
#   translator = Translator.new
#   char_arr.each do |char|
#     translator.add_braille_char(char)
#   end
#   file2 << translator.output
# end
