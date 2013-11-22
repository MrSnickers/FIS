#### ANAGRAMS

class Anagram

attr_reader :word


def initalize(word)
  @word = word
end

def match(test_array)
  index_counter = 0
  test.each do |item|
    item.each do |letter|
      word.each do |test_letter|
        letter_index = 0
        letter_index += 1 if letter != test_letter
        break if letter_index > item.length
          
        end
        index_counter += 1
      end
    end

return test_array[index]

end





end