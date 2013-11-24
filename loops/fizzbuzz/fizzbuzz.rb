### FIZZBUZZ

i=0
while i <= 100
  if i%3 == 0 && i%5 == 0
    puts "fizzbuzz"
    i +=1
elsif i%3 == 0
    puts "fizz"
    i +=1
elsif i%5 == 0
    puts "buzz"
    i +=1
  else
    puts "#{i}"
    i +=1
  end
end