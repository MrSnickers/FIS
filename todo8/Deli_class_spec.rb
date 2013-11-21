###DELI CLASS SPEC

#Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.

require './Deli_class.rb'

describe "#take_a_number" do
  it "that takes a customer's name, appends their number to their name, and adds them to the line" do
    expect(Deli.new.take_a_number("Blake")).to eq(["1. Blake"])
  end
end

# describe "#now_serving" do
#   it "removes the customer who is first in line and returns their name" do
#     expect(take_a_number(  )).to eq()
#   end
#end