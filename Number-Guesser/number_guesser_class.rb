class Number_guesser

  attr_reader :standard, :guesses
  attr_accessor :latest_guess

  def initialize
    @standard = 4 #rand(1..100)
    @latest_guess = 0
    @guesses = []
  end

  def play
    get_guess
    check_guess
  end

  def get_guess
    input = gets.chomp
    validate_guess(input)
    guesses << latest_guess
    latest_guess = input
  end

  def validate_guess(input)
    if input.downcase == "exit"
      exit
    else
      if input.class != Fixnum
        puts "Please guess a whole number between one and one hundred."
        get_guess
      end
    end
  end

  def check_guess
    standard == latest_guess
  end

  def exit
    puts "Goodbye"
    return
  end

  def report
    guesses.length > 2 ? s = "es": s = ""
    "You guessed it in #{guesses.length} guesses!"
  end


end