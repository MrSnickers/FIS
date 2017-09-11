#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

def magic_eight_ball
response_array = ["That seems improbable.", "Oh dear, really?", "That doesn't seem good for your skin.", "Wow.  That's all I can say.  Just... Wow..."]
puts "Want to shake the magic eight? y/n"
response = gets.chomp.downcase
puts response_array.sample if response == "y"
end

magic_eight_ball