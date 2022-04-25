require 'simplecov'
SimpleCov.start

require_relative '../lib/translator.rb'

RSpec.describe Translator do
  before :each do
    translator = Translator.new
  end

  it 'exists' do
    expect(translator).to be_a(Translator)
  end

end