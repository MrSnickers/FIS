### NUMBER GUESSER SPEC

require './number-guesser.rb'

describe "#number" do
  it "will return false if guess does not equal standard " do
    expect(guess(4, 20)).to eq(false)
  end
 it "will return true if guess does not equal standard " do
    expect(guess(20, 20)).to eq(true)
  end

end