#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.


hand = []
total =  hand.reduce(0) do |sum, number|
  sum+number
end

def deal(number, hand)
  number.times do hand<< rand(1..10)
  end
  end

  def hit
    puts "Hit?"
    response = gets.chomp
    deal(1, hand) if response == "y"
    puts "Your hand is #{hand*" "}"
  end

  puts "Want to play blackjack? y/n"
  response = gets.chomp
    deal(2, hand) if response == "y"
  puts "Your hand is #{hand*" "} that's #{total}"
   if total == 21
    puts "You win!"
  end
  if total<21
    hit
  end
  puts "Sorry, you busted." if total > 21







