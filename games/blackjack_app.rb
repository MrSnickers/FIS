#### BLACKJACK GAME

require './blackjack.rb'


puts "Want to play blackjack? y/n"
response = gets.chomp
if response.downcase == "y"
    game = Game.new
    game.deal(2)
    puts "Your hand is #{game.hand.join(', ')}."
end