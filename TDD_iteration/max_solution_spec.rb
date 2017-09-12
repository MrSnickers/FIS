### MAX SOLUTION SPEC

require './max_solution.rb'

# describe "#max solution" do
#   it "returns the largest element of the array" do
#     expect(maximum([3, 5, 7])).to eq(7)
#   end
#    it "returns an integer" do
#     expect(maximum([3, 5, 7])).to be_a(Integer)
#   end
# end

 describe Array "#max solution in a class" do

  it "should return an integer" do
    expect(Array.new.maximum([3, 5, 7])).to be_a(Integer)
  end
  
  it "returns the largest element of the array" do
    expect(Array.new.maximum([3, 5, 7])).to eq(7)
  end
end