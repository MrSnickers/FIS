##### FAKEARRAY SPEC

require './FakeArray.rb'


describe "FakeArray" do
  it "should create a new object" do
    test = FakeArray.new

    expect(test).to be_a(FakeArray)

  end


end