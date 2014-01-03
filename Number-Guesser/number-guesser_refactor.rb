### NUMBER GUESSER

# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect

require './number_guesser_class.rb'

game = Number_guesser.new
puts "Please guess a number between 1 and 100."
game.play
game.report