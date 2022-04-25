require 'pry'
require_relative '../lib/dictionary'

class Translator
  include Dictionary
  attr_reader
  def initialize

    @top = []
    @mid = []
    @bot = []
  end

  def translate(input)
    @top << eng_braille_dict[input][0]
    @mid << eng_braille_dict[input][1]
    @bot << eng_braille_dict[input][2]
    # binding.pry
    @top.join
    @mid.join
    @bot.join
  end

  def braille_lines(input)
    translate(input)

    # end
  end

end
