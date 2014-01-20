# Separate numbers with a comma each three digits.
 
require "awesome_print"

def separate_with_comma(n)
  n = n.to_s
  if n.size > 3
    n.reverse!
    reversed = []
    counter = 0
    n.each_char do |character|
      if counter>1 && counter%3 == 0
        reversed << character + ","
        counter += 1
      else
        reversed << character
        counter +=1
      end
    end
    reversed.reverse.join("")
  else
    n
  end
end
 
# separate_with_comma(1) #=> "1" 
# separate_with_comma(1000) #=> "1,000" 
# separate_with_comma(10000) #=> "10,000"

ap separate_with_comma(1000000)