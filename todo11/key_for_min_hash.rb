# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
  value_only_array = []
  hash.each_pair do |key, value|
    value_only_array << value
  end
value_only_array.sort!
hash.key(value_only_array[0])

end