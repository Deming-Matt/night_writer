require 'simplecov'
SimpleCov.start

require_relative '../lib/translator.rb'
# require_relative '../lib/night_writer.rb'
require_relative '../lib/dictionary.rb'
RSpec.describe Translator do
  before :each do
    @translator = Translator.new
  end

  it 'exists' do
    expect(@translator).to be_a(Translator)
  end

  it "can show a hash for all the letters and their 'base' braille equivelent" do
    expect(@translator.eng_braille_dict).to eq({
      "a" => "0.\n..\n..\n",
      "b" => "0.\n0.\n..\n",
      "c" => "00\n..\n..\n",
      "d" => "00\n.0\n..\n",
      "e" => "0.\n.0\n..\n",
      "f" => "00\n0.\n..\n",
      "g" => "00\n00\n..\n",
      "h" => "0.\n00\n..\n",
      "i" => ".0\n0.\n..\n",
      "j" => ".0\n00\n..\n",
      "k" => "0.\n..\n0.\n",
      "l" => "0.\n0.\n0.\n",
      "m" => "00\n..\n0.\n",
      "n" => "00\n.0\n0.\n",
      "o" => "0.\n.0\n0.\n",
      "p" => "00\n0.\n0.\n",
      "q" => "00\n00\n0.\n",
      "r" => "0.\n00\n0.\n",
      "s" => ".0\n0.\n0.\n",
      "t" => ".0\n00\n0.\n",
      "u" => "0.\n..\n00\n",
      "v" => "0.\n0.\n00\n",
      "w" => ".0\n00\n.0\n",
      "x" => "00\n..\n00\n",
      "y" => "00\n.0\n00\n",
      "z" => "0.\n.0\n00\n",
      " " => "..\n..\n..\n"
    })
  end

  it 'can take the letter "a" and show its braille pattern' do
    expect(@translator.translate("a")).to eq("0.\n..\n..\n")
  end

  it 'can take entered text and make the correct braille syntax of it' do
    input = "hey"
    expect(@translator.braille_lines(input)).to eq("0.0.00\n00.0.0\n....00\n")
  end
end
