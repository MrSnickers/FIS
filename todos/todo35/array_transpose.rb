# Reimplement your own version of Ruby Array's transpose method
 
class Array
  def my_transpose
    array_counter = 0
    index_counter = 0
    new_array = []
    inner_array = []
    while index_counter < self[0].length
      while array_counter < self.length
        inner_array << self[array_counter][index_counter]
        array_counter +=1
      end
    new_array << inner_array
    inner_array = []
    index_counter += 1
  end
end
 
# [[1, 2, 3], [:a, :b, :c]].my_transpose #=> [[1, :a], [2, :b], [3, :c]]
# [[1,2], [3,4], [5,6]].transpose #=> [[1, 3, 5], [2, 4, 6]]
# [].transpose #=> []