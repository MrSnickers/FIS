### NUMBER GUESSER SPEC

require './number_guesser_class.rb'
require 'mocha/setup'


describe "#standard" do
  it "should create a standard number between 1 and 100" do
    game = Number_guesser.new

    expect(game.standard).to be < 100
  end
end
