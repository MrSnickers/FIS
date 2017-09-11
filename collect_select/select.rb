#### SELECT METHOD
# Implement your own versions of select
 
def my_select(array, &block)
new_array = []
counter =0
array.compact!
  if block_given?
    while counter < array.length
       if yield(array[counter])
      new_array<<array[counter] 
      counter +=1
       else
       counter +=1
       end
    end
    return new_array
  else 
  return self.to_enum
  end
end
 
# CHALLENGE:
# Implement these methods as instance methods on the Array class.