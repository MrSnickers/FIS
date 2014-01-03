### NUMBER GUESSER

# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect
# Should give the opportunity to play again

require './number_guesser_class.rb'

game = Number_guesser.new

puts "Please guess a number between 1 and 100."
game.guess
if game.guess_valid?
  if game.check_guess
    puts "That's it!"
  else
    puts "Nope.  I wasn't thinking of #{game.input}."
  end
else
  puts "Please enter a whole number between 1 and 100, or exit by entering 'exit.'"
end

#### allow subsequent guesses
#### Let user exit




# while guess(input, standard) == false
#     if input.downcase == "exit"
#         break
#     else
#     puts "Want to guess again?"
#     #input = gets.chomp
#     end
# end