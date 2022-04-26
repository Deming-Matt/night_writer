require 'pry'
require_relative '../lib/dictionary'

class Translator
  include Dictionary
  attr_reader
  def initialize

    @top = []
    @mid = []
    @bot = []
    @braille_letters_array = []
  end

  def add_eng_char(input)
    if eng_braille_dict[input] != nil
      @top << eng_braille_dict[input][0]
      @mid << eng_braille_dict[input][1]
      @bot << eng_braille_dict[input][2]
    end
  end

  def output
    top = @top.join
    mid = @mid.join
    bot = @bot.join
    [top, mid, bot].join("\n") + "\n"
  end

  def slice_braille(input)
    braille_letters_array = []
    line1 = input[0].chars.each_slice(2).map(&:join)
    line2 = input[1].chars.each_slice(2).map(&:join)
    line3 = input[2].chars.each_slice(2).map(&:join)

    line1.each_with_index do |group, index|
      if group != "\n"
        braille_letters_array << [line1[index], line2[index], line3[index]]
      end
    end
    braille_letters_array
  end
    # def slice_braille(input)
    #
    #   sliced_array = []
    #   until input[0] == nil
    #     sliced_array << input.slice!(0..1)
    #   end
    #   @braille_letters_array + sliced_array
    #   binding.pry
    # end

end
