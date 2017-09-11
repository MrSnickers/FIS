### TESTS FOR COLLECTIONS PRACTICE 2

require './collections_practice2.rb'


describe "r_finder" do
it "returns true if input array all starts with 'r'" do
    expect(r_finder(["ruby", "rspec", "rails"])).to eq(true)
end
  it "returns true if input array all starts with 'r'" do
    expect(r_finder(["ruby", "spec", "rails"])).to eq(false)
end
end
