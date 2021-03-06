# Reimplement your own version of Ruby Array's transpose method
require "./array_transpose.rb" 


describe "#my_transpose" do
    it "should return a transposed array" do

      expect([[1, 2, 3], [:a, :b, :c]].my_transpose).to  eq([[1, :a], [2, :b], [3, :c]])
  end
end
 
# [[1, 2, 3], [:a, :b, :c]].my_transpose #=> [[1, :a], [2, :b], [3, :c]]
# [[1,2], [3,4], [5,6]].transpose #=> [[1, 3, 5], [2, 4, 6]]
# [].transpose #=> []