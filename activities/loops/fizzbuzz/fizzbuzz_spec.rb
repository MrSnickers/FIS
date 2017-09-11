###fizzbuzz test
require './fizzbuzz_method'

describe "#fizzbuzz" do
  it "should return 'fizzbuzz' when number is divisble by 15" do
    expect(fizzbuzz(75)).to eq("fizzbuzz")
end
  it "should return 'buzz' when number is divisble by 5, but not 15" do
    expect(fizzbuzz(10)).to eq("buzz")
end
  it "should return 'fizz' when number is divisble by 3, but not 15" do
    expect(fizzbuzz(9)).to eq("fizz")
end
 it "should return the original number when number is not divisble by 3 or 5" do
    expect(fizzbuzz(13)).to eq(13)
end
end