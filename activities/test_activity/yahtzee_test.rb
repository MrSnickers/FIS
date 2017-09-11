 ### Yahtzee test
require './yahtzee'

describe "#yahtzee" do
  it "a roll of the dice should return an array of 5 numbers" do
    expect(roll_dice).to be_a(Array)
  end
  it "a roll of the dice should return a number between one and six" do
    expect(roll_dice.sample<=6).to be_true
  end
  it "a roll of the dice should return an array of 5 numbers" do
    expect(roll_dice).to have(5).items
  end
  it "possesses a winning condition when all die have the same value" do
    expect(win?([1,1,1,1,1])).to be_true
end
  it "winning condition is not met if all die do not have the same numbers" do
    expect(win?([1,2,1,1,1])).to be_false
end


end