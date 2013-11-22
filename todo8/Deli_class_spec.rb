###DELI CLASS SPEC

#Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.

require './Deli_class.rb'

katz = Deli.new

describe "#add_to_line" do
  it "takes a name and adds a customer to the line" do
    expect(katz.add_to_line("Blake")).to eq(["Blake"])
  end
end

corner_store = Deli.new
corner_store.add_to_line("Blake")

describe "#now_serving" do
  it "removes the customer who is first in line and returns their name" do
    expect(corner_store.now_serving).to eq("Blake")
  end
end