### ANAGRAM SPEC

# Anagram Detector
 
# Write a program that, given a word and a list of possible anagrams, 
# selects the correct one(s).
 
# In other words, given: "listen" and %w(enlists google inlets banana) 
# the program should return "inlets".
 
# PS what is %w? 
# http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean
 
# Save this file as anagram_spec.rb
# run it with rspec anagram_spec.rb
 
RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true
 
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
 
  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end
 
require './anagrams.rb'
 
describe 'Anagram' do 

  it 'should return an empty array when there are no matches' do
    another = Anagram.new('phibble')
    expect(another.match(["biscuit", "soda", "navel", "linolium"])).to eq([])
  end

   it 'should return an anagram despite capitilzation' do
    another = Anagram.new('lives')
    expect(another.match(["biscuit", "Elvis", "navel", "linolium"])).to eq(["Elvis"])
  end

     it 'should return an anagram despite a space' do
      another = Anagram.new('battle tablet')
      expect(another.match(["biscuit", "Elvis", "tablet battle", "linolium"])).to eq(["tablet battle"])
  end

     it 'should return all solutions' do
      another = Anagram.new('allergy')
      expect(another.match(["biscuit", "Elvis", "largely", "gallery"])).to eq(["largely","gallery"])
  end

  # it 'should detect no matches' do
  #   detector = Anagram.new('diaper')
  #   detector.match(%w(hello world zombies pants)).should eq([])
  # end
 
  # it 'should detect a simple anagram' do
  #   detector = Anagram.new('ba')
  #   anagrams = detector.match(['ab', 'abc', 'bac'])
  #   anagrams.should eq(['ab'])
  # end
 
  # it 'should detect an anagram' do
  #   detector = Anagram.new('listen')
  #   anagrams = detector.match %w(enlists google inlets banana)
  #   anagrams.should eq(['inlets'])
  # end
 
  # it 'should detect multiple anagrams' do
  #   detector = Anagram.new('allergy')
  #   anagrams = detector.match %w(gallery ballerina regally clergy largely leading)
  #   anagrams.should eq(['gallery', 'regally', 'largely'])
  # end
end



