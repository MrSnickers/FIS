# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(hash)
  min = nil
  hash.each_pair do |key, value|
    min ||= value
    min = value if value < min
  end
  hash.key(min)
end