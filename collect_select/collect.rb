#### COLLECT METHOD

# Implement your own version of collect

def my_collect(array, &block)
new_array = []
counter =0
if block_given?
while counter < array.length
  new_array[counter] = yield(array[counter])
  counter +=1
end
return new_array
else 
  return self.to_enum
end
end
 
# CHALLENGE:
# Implement these methods as instance methods on the Array class.
