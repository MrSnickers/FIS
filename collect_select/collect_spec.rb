#### COLLECT SPEC

# Implement your own version of collect

# collect → Enumerator
# Invokes the given block once for each element of self.
# See also Enumerable#collect.

# a = [ "a", "b", "c", "d" ]
# a.map { |x| x + "!" }   #=> ["a!", "b!", "c!", "d!"]
# a                       #=> ["a", "b", "c", "d"]
# collect! {|item| block } → ary
# collect! → Enumerator


# If no block is given, an Enumerator is returned instead.

# a = [ "a", "b", "c", "d" ]
# a.map! {|x| x + "!" }
# a #=>  [ "a!", "b!", "c!", "d!" ]

# def my_collect(array)
# #code goes here
# end


require './collect.rb'

describe "#my_collect" do
  it "returns an array" do
    expect(my_collect([1,2,3]) {|item| item + 1}).to be_a(Array)
  end
  # Invokes the given block once for each element of self, replacing the element with the value returned by the block.
  # Creates a new array containing the values returned by the block.
  #  collect { |item| block } → new_ary
   it "Creates a new array containing the values returned by the block." do
    expect(my_collect([1,2,3]) {|item| item + 1}).to eq([2,3,4])
  end
# If no block is given, an Enumerator is returned instead.
  it "returns an Enumerator if no block is given" do
    expect(my_collect([1,2,3])).to be_a_kind_of(Enumerator)
  end

end

 
 
# CHALLENGE:
# Implement these methods as instance methods on the array class.