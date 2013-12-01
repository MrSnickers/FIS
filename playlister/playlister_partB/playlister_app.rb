### PlAYLISTER APP

require './lib/artist_class.rb'
require './lib/song_class.rb'
require './lib/genre_class.rb'
require './lib/parser_class.rb'
require 'awesome_print'


my_directory = Dir.new("./data").entries.select {|f| !File.directory? f}
genre_array = []
artist_array = []
song_array = []
 my_directory.each do |song_data|
  genre_array << song_data.split(" [")[-1][0..-6]
  artist_array << song_data.split(" - ")[0][0..-1]
  song_array << song_data.split(/ [-\[]/)[1]
end
puts song_array






# current songs = Parser.new()
# student_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")

# name_array = student_scraper.get_students_names
# blog_array = student_scraper.get_students_blogs
# twitter_array = student_scraper.get_students_twitters

# index_counter = 0
# student_directory = []

# name_array.each do |name|
#   student_directory << Student.new(name, twitter_array[index_counter], blog_array[index_counter])
#   index_counter += 1
# end

# student_directory.sort! {|student1, student2| student1.name <=> student2.name}

# def directory(student_directory)
#     puts "Please enter the number of the requested student."
#     student_directory.each_with_index do |student, index|
#         puts "#{index+1}. #{student.name}"
#     end
#     request_index = gets.chomp.to_i
#     request_index -1
# end



# puts "Do you want to look up the Twitter of a specific student? Type: 'T'"
# puts "Do you want to look up the blog of a specific student? Type: 'B'"
# puts "Do you want to try out Twitter roulette? Type: 'R'"
# puts "Do you want to view a random blog? Type: 'L'"
# puts "To exit type: 'exit'"

# response = gets.chomp
# case

# when response.downcase == "t"
#     student_index = directory(student_directory)
#    if student_directory[student_index].twitter == "none"
#       puts "Sorry that student has not shared a Twitter account."
#    else
#      Launchy.open("#{student_directory[student_index].twitter}")
#    end
# when response.downcase == "b"
#     student_index = directory(student_directory)
#    if student_directory[student_index].blog == "none"
#     puts "Sorry that student has not shared a blog."
#    else
#     Launchy.open("#{student_directory[student_index].blog}")
#    end
# when response.downcase == "r"
#     random_twitter = student_directory.sample.twitter
#     random_twitter = student_directory.sample.twitter if random_twitter == "none"
#      Launchy.open("#{student_directory.sample.twitter}")
# when response.downcase == "l"
#     random_blog = student_directory.sample.blog
#     random_blog = student_directory.sample.blog if random_blog == "none"
#     Launchy.open("#{student_directory.sample.blog}")
# when response.downcase == "exit"
#     puts "Goodbye"
# else 
#     puts "I am so confused."
# end