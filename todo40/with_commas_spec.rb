require "./with_commas.rb"

describe "#separate_with_comma" do
  it "should return the same number if it is shorter than 3 characters" do
    expect(separate_with_comma(1)).to eq("1")
  end
    it "should return a number with a comma if it is over 3 characters" do
    expect(separate_with_comma(1000)).to eq("1,000")
  end
end