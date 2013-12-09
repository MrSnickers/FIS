### ARRAY ORGANIZER

# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
# test = ['cat', 'dog', 'fish', 'fish']
 
# def count(array)
#   ___
# end
 
# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

class Organizer

def initialize(given_array)
  @given_array = given_array
  @unique_array = given_array.uniq
  @return_hash = {}
end

def given_array
  @given_array
end

def unique_array
  @unique_array
end

def get_number
  unique_array.each do |item|
    number = given_array.select{|repeat| repeat == item }
    number.length
  end
end


end