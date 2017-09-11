#### SELECT SPEC
# Implement your own versions of  select
 
# select { |item| block } → new_ary
# select → Enumerator
# Returns a new array containing all elements of ary for which the given block returns a true value.

# If no block is given, an Enumerator is returned instead.

# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
 
# def my_select(array)
# #
# end

require './select.rb'

describe "#my_select" do
  it "returns an array" do
    expect(my_select([1,2,3]) {|item| item > 1}).to be_a(Array)
  end

   it "returns a new array containing all elements of original array for which the given block returns a true value" do
    expect(my_select([0,2,3]) {|item| item > 1}).to eq([2,3])
  end

  it "returns an Enumerator if no block is given" do
    expect(my_select([1,2,3])).to be_a_kind_of(Enumerator)
  end

end

 
# CHALLENGE:
# Implement these methods as instance methods on the array class.
