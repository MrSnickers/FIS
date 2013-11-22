#### ANAGRAMS

class Anagram

attr_reader :word

def initialize(word)
  @word = word
end

def match(test_array)
  anagram_array = []
  test_array.each do |item|
    if item.chars.sort.join == word.chars.sort.join
      anagram_array << item
    end
  end
   anagram_array
end



end