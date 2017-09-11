### Dog tests
require './dog_years.rb'

describe "#dog_years" do
  # it "a newly created dog should posses an age" do
  #   expect(Dog.new.age).to eq(anything)
  # end
  # it "a newly created dog should posses an age less than 14 years" do
  #   expect(Dog.new.age).to ##eq(14)
  #end
  it "a dog's age in years should be divisible by 365" do
    expect(age_in_days(1)).to eq(365)
  end
   it "a dog's age in years should return age" do
    expect(age_in_years(1)).to eq(1)
  end
  it "a dog's years should be seven times that of a human" do
    expect(age_in_dog_years(1)).to eq(7)
  end

end