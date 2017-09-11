### PROVIDED SPEC FOR KEY FOR MIN HASH

 
RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
 
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
 
  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

require_relative "./key_for_min_hash.rb"
 
describe "smallest hash value" do
  it "should return the key of the smallest hash value" do
    key_for_min_value({:blake => 500, :ashley => 2, :adam => 1}).should eq(:adam)
  end
 
  it "should return the key of the smallest hash value example 2" do
    key_for_min_value({:blake => 10, :ashley => 50, :adam => 17}).should eq(:blake)
  end
 
  it "should return nil for an empty hash" do
    key_for_min_value({}).should eq(nil)
  end
 
end