class Number_guesser

attr_reader :standard
  
  def initialize
    @standard = rand(1..100)
  end

  def guess
    @input = gets.chomp
  end

  def check_guess
    @input == @standard
  end

end