### PERSONAL SPEC FOR KEY FOR MIN HASH

 
require "./key_for_min_hash_refactor.rb"
 
describe "#key_for_min_value" do
  it "should return the key of the smallest hash value" do
    expect(key_for_min_value({"eggs" =>12, "cheese" => 1})).to eq("cheese")
  end
  it "should return nil if given an empty hash" do
    expect(key_for_min_value({})).to eq(nil)
  end
 
end