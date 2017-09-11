### Tests for Oliver's magic 8-ball

require './oliver_8ball.rb'

describe "8-ball" do
  it "puts a greeting message" do
    magic8ball = Magic8.new
    expect(magic8ball.greeting).to be_a(String)
  end
   it "is initialized with an array of answers" do
    magic8ball = Magic8.new
    expect(magic8ball[@messages]).to be_a(Array)
  end
  
end