### ARRAY ORGANIZER SPEC

require "./array_organizer.rb"

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

describe "#organizer" do

test = ['cat', 'dog', 'fish', 'fish']

it "should contain the original array" do
  organizer = Organizer.new(test)
  expect(organizer.given_array).to eq(test)
end

it "should populate the compacted array with a unique array of items" do
  organizer = Organizer.new(test)
   expect(organizer.unique_array).to eq(test.uniq)
end

it "should make a hash of each item of the unique array with the count of how many are in the original array" do
    organizer = Organizer.new(['fish', 'fish', 'cat'])
    expect(organizer.make_hash).to eq({"fish"=>2, "cat"=>1})
end


end