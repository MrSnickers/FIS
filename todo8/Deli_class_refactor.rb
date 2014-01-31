# Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.

class Deli

attr_accessor :line

  def initialize
    @line = []
  end

  def take_a_number(name)
    line << name
  end

  def post_line
    posting = ""
    line.each_with_index do |person, index|
      index < array.length-1? c = ", ": c = ""
      posting = posting +"#{index + 1}. #{person}#{c}"
    end
  end

  def now_serving
    puts "Now serving #{line[0]}!"
    line.shift
  end

end


