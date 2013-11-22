#### ANAGRAMS

class Anagram

attr_reader :word

def initialize(word)
  @word = word
end

# def match(test_array)
# test_array = test_array.abbreviate
# return test_array if test_array.nil

#   index_counter = 0
#   test_array.each do |item|
#     item.each do |letter|
#       word.each do |test_letter|
#         letter_index = 0
#         letter_index += 1 if letter != test_letter
#         break if letter_index > item.length
          
#         end
#         index_counter += 1
#       end
#     end

# return test_array[index]

# end

def match
  abbreviated_array =[]
  test_array.each do |item|
    abbreviated_array << item.downcase if item.length == word.length
    abbreviated_array
  end
end



end