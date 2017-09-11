### ARRAY ORGANIZER

# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
# test = ['cat', 'dog', 'fish', 'fish']
 
# def count(array)
#   ___
# end
 
# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

def count(array)
  unique_array = array.uniq
  return_hash = {}
  unique_array.each do |item|
    return_hash[item] = array.select{|repeat| repeat == item }.length
  end
  return_hash
end