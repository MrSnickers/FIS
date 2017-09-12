### NUMBER GUESSER SPEC

require './number_guesser_class.rb'
require 'mocha/setup'


describe "#Number_guesser" do
  it "should create a standard number between 1 and 100" do
    game = Number_guesser.new

    expect(game.standard).to be < 100
  end

  it "should return true when input and standard match" do
    game = Number_guesser.new
    game.stub(:input) { 5 }
    game.stub(:standard) { 5 }

    expect(game.match?).to eq(true)
  end

    it "should recognize a number as a valid input" do
    game = Number_guesser.new
    game.stub(:input) { 5 }

    expect(game.input_valid?).to eq(true)
  end

    it "should recognize a string as an invalid input" do
    game = Number_guesser.new
    game.stub(:input) { "bubbles" }

    expect(game.input_valid?).to eq(false)
  end

    it "should recognize exit as a special input" do
    game = Number_guesser.new
    game.stub(:input) { 'exit' }

    expect(game.exit?).to eq(true)
  end

end
