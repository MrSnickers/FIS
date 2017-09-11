#### ANAGRAMS

class Anagram

attr_reader :word

def initialize(word)
  @word = word
end

def match(test_array)
  test_array.select {|item| item.downcase.chars.sort.join == word.downcase.chars.sort.join}
end



end