### NUMBER GUESSER

# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect
# Should give the opportunity to play again

require './number_guesser_class.rb'
require 'debugger'

game = Number_guesser.new

puts "Please guess a number between 1 and 100."
until game.match? || game.exit?
  game.guess
  if game.exit?
    puts "Goodbye"
  else
    if game.input_valid_number?
      if game.match?
        puts "That's it!"
      else
        puts "Nope.  I wasn't thinking of #{game.input}. Guess again!"
      end
    else
      puts "Please enter a whole number between 1 and 100, or exit by entering 'exit.'"
    end
  end
end

#### Let user exit