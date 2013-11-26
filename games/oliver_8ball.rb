#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

class Magic8
  def initialize
    @messages = ["Try again later", 
                  "My sources tell me good things are coming your way", 
                  "Who waketh the Kraken?", 
                  "Bleep Bloop I'm just a computer. Why are you asking me?",
                  "Things point towards yes",
                  "Nope. Sorry, not happenin'",
                  "STOP SHAKING ME, CALM DOWN!",
                  "Poop",
                  "Mayyyyyybeeee?"
                  ]
  end

  def greeting
    puts "Want to know your fortune? Shake the magic eight ball! Shake you computer to play\n...I was kidding. Type 'yes' to play and 'no' to quit"
    return gets.chomp.downcase
  end

  def shake(input)
    if input == 'yes'
      @messages.sample
    elsif input=='no'
      "Whatever. I didn't want to tell your fortune anyway."
    else
      "I didn't understand that. Type 'yes' to play or 'no' to quit"
    end
  end
end

new_game = Magic8.new


user_input = new_game.greeting
fortune = new_game.shake(user_input)

puts (" " + "*" * fortune.length)
puts "* " + fortune.center(fortune.length) + " *"
puts (" " + "*" * fortune.length)