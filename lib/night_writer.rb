require 'pry'
require './lib/translator'
file = File.open(ARGV[0], "r")
file2 = File.open(ARGV[1], "w")

file.read.chomp.chars.each_slice(3) do |char_arr|
  translator = Translator.new
  char_arr.each do |char|
    translator.add_eng_char(char)
  end
  file2 << translator.output
end
file2.close
file.rewind
puts "Created '#{ARGV[1]}' containing #{file.read.length} characters"
file.close
