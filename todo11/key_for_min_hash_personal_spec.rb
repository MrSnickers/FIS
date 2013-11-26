### PERSONAL SPEC FOR KEY FOR MIN HASH

 
RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
 
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
 
  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

require_relative "./key_for_min_hash.rb"
 
describe "#key_for_min_value" do
  it "should return the key of the smallest hash value" do
    expect(key_for_min_value({"eggs" =>12, "cheese" => 1})).to eq("cheese")
  end
  it "should return nil if given an empty hash" do
    expect(key_for_min_value({})).to eq(nil)
  end
 
end