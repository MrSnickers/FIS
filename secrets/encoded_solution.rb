### Solution to forked secret

puts "Tell me a secret."
secret = gets.chomp
unsubbed_secret = secret.gsub(secret[-1], " ")
right_way_round = unsubbed_secret.reverse

puts right_way_round