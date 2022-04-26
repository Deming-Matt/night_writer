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

  def add_char(input)
    if eng_braille_dict[input] != nil
      @top << eng_braille_dict[input][0]
      @mid << eng_braille_dict[input][1]
      @bot << eng_braille_dict[input][2]
    end
  end

  def output
    top = @top.join #"0.0.00"
    mid = @mid.join #"00.0.0"
    bot = @bot.join #"....00"
    [top, mid, bot].join("\n") + "\n" + "\n"
  end
end
