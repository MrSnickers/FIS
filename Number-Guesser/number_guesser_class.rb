class Number_guesser

attr_reader :standard, :input
  
  def initialize
    @standard = rand(1..100)
  end

  def guess
    @input = gets.chomp.to_i
  end

  def match?
    input == standard
  end

  def input_valid?
    input.class == Fixnum && input > 0
  end

end


#### validate that input is a number

