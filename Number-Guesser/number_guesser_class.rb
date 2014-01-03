class Number_guesser

attr_reader :standard
  
  def initialize
    @standard = rand(1..100)
  end

  def guess
    @input = gets.chomp
  end

  def match?
    @input == @standard
  end

  def guess_valid?
    @input.class == Fixnum
  end

end


#### validate that input is a number

