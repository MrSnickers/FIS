### NUMBER GUESSER

# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect

def guess(answer, standard)
      if answer == standard
          puts "That's it!"
          return true
    else
          puts "Nope.  I wasn't thinking of #{answer}."
          return false
    end
end



puts "Please guess a number between 1 and 100."
input = gets.chomp
standard = rand(1..100)
while guess(input, standard) == false
    if input.downcase == "exit"
        break
    else
    puts "Want to guess again?"
    input = gets.chomp
    end
end