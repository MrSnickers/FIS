# Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.

class Deli

attr_accessor :line

@line = []

  def initialize
  @line = line

  end


  def take_a_number(name)
  if line.nil?
  line = ["1. #{name}"]
  else
  formatted_item = "#{line.length+1}. #{name}"
  line << formatted_item
  end
  return line

  end


end


