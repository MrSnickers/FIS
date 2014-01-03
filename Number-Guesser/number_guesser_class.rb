class Number_guesser

attr_reader :standard, :input
  
  def initialize
    @standard = 4#rand(1..100)
    @input = 0
  end

  def guess
    @input = gets.chomp
  end

  def match?
    input.to_i == standard
  end

  def exit?
    input.class == String && input.downcase == 'exit'
  end

  def input_valid_number?
    @input.to_i > 0
  end

end


### does not convert the string "exit" to an integer
### recognizes the string "exit" as a valid input
### can end the game
### can tally the results