### NUMBER GUESSER SPEC

require './number_guesser_class.rb'
require 'mocha/setup'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

describe "#standard" do
  it "should create a standard number between 1 and 100" do
    game = Number_guesser.new

    expect(game.standard).to be < 100
  end
end
