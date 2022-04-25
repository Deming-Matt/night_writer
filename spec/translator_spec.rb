require 'simplecov'
SimpleCov.start

require_relative '../lib/translator.rb'
require_relative '../lib/night_writer.rb'
RSpec.describe Translator do
  before :each do
    @translator = Translator.new(input)
  end

  # it 'exists' do
  #   expect(@translator).to be_a(Translator)
  # end

  it "can show a hash for all the letters and their 'base' braille equivelent" do
    expect(@translator.eng_braille_dict).to eq({
      "a" => "0.\n..\n..",
      "b" => "0.\n0.\n..",
      "c" => "00\n..\n.",
      "d" => "00\n.0\n..",
      "e" => "0.\n.0\n..",
      "f" => "00\n0.\n..",
      "g" => "00\n00\n..",
      "h" => "0.\n00\n..",
      "i" => ".0\n0.\n..",
      "j" => ".0\n00\n..",
      "k" => "0.\n..\n0.",
      "l" => "0.\n0.\n0.",
      "m" => "00\n..\n0.",
      "n" => "00\n.0\n0.",
      "o" => "0.\n.0\n0.",
      "p" => "00\n0.\n0.",
      "q" => "00\n00\n0.",
      "r" => "0.\n00\n0.",
      "s" => ".0\n0.\n0.",
      "t" => ".0\n00\n0.",
      "u" => "0.\n..\n00",
      "v" => "0.\n0.\n00",
      "w" => ".0\n00\n.0",
      "x" => "00\n..\n00",
      "y" => "00\n.0\n00",
      "z" => "0.\n.0\n00",
      " " => "..\n..\n.."
    })
  end

  it 'can take the letter "a" and show its braille pattern' do
    expect(@translator.translate("a")).to eq("0.\n..\n..")
  end

  it 'can take entered text and make the correct braille syntax of it' do
    expect(translator.braille_lines("hey")).to eq("
      0.0.00
      00.0.0
      ....00
      ")
  end
end
