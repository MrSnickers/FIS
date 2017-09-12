### SQUARE ARRAY SPEC

require './square_arrays_solution.rb'

describe "#square array solution" do
  it "returns a square of the original array" do
    expect(square_array([2,3,4])).to eq([4, 9, 16])
  end
   it "returns an array" do
    expect(square_array([2,3,4])).to be_a(Array)
  end
end