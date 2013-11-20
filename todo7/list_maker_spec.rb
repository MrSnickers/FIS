# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.
 
# Run this test by typing `rspec list_maker_spec.rb` in your terminal.
 
# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.
 
# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

require './listmaker.rb'

describe "#make_list" do 
  it "takes an array and returns an array" do
    expect(make_list([1, 2, 3])).to be_a(Array)
  end
   it "takes an array and returns an array of strings" do
    expect(make_list([1, 2, 3])[0]).to be_a(String)
  end
   it "takes an array and returns an array of strings that have a stop and a space" do
    expect(make_list([1, 2, 3])[0]).to match(/\d./)
  end
     it "the first item returned is indexed at one" do
    expect(make_list([1, 2, 3])[0]).to match(/1./)
  end

end