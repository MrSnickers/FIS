class Number_guesser

attr_reader :standard, :input
  
  def initialize
    @standard = rand(1..100)
    @inputs = []
  end

  def guess
    @input = gets.chomp
  end

  def compare
    input.to_i <=> standard
  end

  def exit?
    input.class == String && input.downcase == 'exit'
  end

  def input_valid_number?
    input.to_i > 0
  end

end

### can tally the results
###tells you if you are getting colder or hotter 