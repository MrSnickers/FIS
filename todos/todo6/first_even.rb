def first_even(items)
   items.each do |number|
  if number%2 == 0 
     return number
     break
   end
 end
end
