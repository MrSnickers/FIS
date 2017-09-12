### NILS SOLUTION SPEC

require './remove_nils_solution.rb'

describe "#remove nils solution" do
  it "does not return an exception" do
    expect(sum).to_not raise_error
  end
   it "returns an integer" do
    expect(sum).to be_a(Integer)
  end
end