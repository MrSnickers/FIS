### HAPPY BIRTHDAY TO YOU

require 'time'

puts "What is your birthdate?"
input = gets.chomp
now = Time.now
parsed = Time.parse(input, now)
if now != parsed
  puts parsed
  puts now

end



# puts "Well then, happy birthday!" : puts "A verry merry unbirthday to you!"