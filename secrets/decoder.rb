puts "Tell me the secret you heard."
encoded_secret = gets.chomp
first_pass = encoded_secret.gsub("pickles", " ")
second_pass = first_pass.reverse

puts "Did you hear that #{second_pass}? "
