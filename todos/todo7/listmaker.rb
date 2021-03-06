# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.
 
# Run this test by typing `rspec list_maker_spec.rb` in your terminal.
 
# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.
 
# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

def make_list(array)
  string_array = []
  counter = 0
array.each do |item|
  counter += 1
  formatted_item = "#{counter}. #{item}"
  string_array << formatted_item

end
  return string_array

  
end
