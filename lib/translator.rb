require 'pry'
require_relative '../lib/dictionary'

class Translator
  include Dictionary
  def initialize

  end

  def translate(input)
    eng_braille_dict[input]
    # binding.pry
  end

  # def braille_lines(input)
  #   translate(input).each do |f|
  #     binding.pry
  #   end
  # end

end
