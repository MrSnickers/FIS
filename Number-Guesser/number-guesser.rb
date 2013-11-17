### NUMBER GUESSER

# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect

puts "Please guess a number between 1 and 100."
input = gets.chomp
standard = rand(1..100)
if input == standard
  puts "That's it!"
else
  puts "Nope.  I was thinking of #{standard}."
end