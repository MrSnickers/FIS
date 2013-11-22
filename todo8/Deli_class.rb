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

   def add_to_line(name)
      line << name
 end

  # def take_a_number(name)
  # if line.nil?
  #   line[0][:place] = "1. "
  #   line[0][:name] = name
  # else
  #   line[-1][:place] = "#{line.length}. "
  #   line[-1[:name] = name
  # end
  #   return line
  # end

  def post_line
    position = 1
    line.each do |person|
      puts "#{position}. #{person}"
    end
    end

  def now_serving
   puts "Now serving #{line[0]}!"
   line.shift
  end

end


