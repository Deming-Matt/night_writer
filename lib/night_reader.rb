require 'pry'
require './lib/translator'
file = File.open(ARGV[0], "r")
file2 = File.open(ARGV[1], "w")

file2 << file.readlines.each do |line|
  translator = Translator.new
  # binding.pry
  translator.slice_braille(line)
end
puts "Created '#{ARGV[1]}' containing #{file.read.length} characters."
