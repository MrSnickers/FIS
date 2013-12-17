### UNIQ SPEC

require './uniq.rb'

describe "unique" do
  it "should return only one copy of a redundant array" do
    array = ["stuff", "stuff"]
    expect(array.uniq).to eq("stuff")

  end
end