puts "Tell me a secret."
secret = gets.chomp
tumble1 = secret.reverse
tumble2 = tumble1.gsub(" ", "pickles")

puts "The code word is #{tumble2}.  Wink.  Wink."