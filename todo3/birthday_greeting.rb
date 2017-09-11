### HAPPY BIRTHDAY TO YOU

require date

puts "What month of the year is your birthday?"
month = gets.chomp
puts "What day of the month is your birthday?"
day = gets.chomp
if Time.now.month == month && Time.now.day == day
  puts "Well then, happy birthday!"
else
  puts "A verry merry unbirthday to you!"
end