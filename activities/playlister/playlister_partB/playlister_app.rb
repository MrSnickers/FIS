### PlAYLISTER APP

require './lib/artist_class.rb'
require './lib/song_class.rb'
require './lib/genre_class.rb'


my_directory = Dir.new("./data").entries.select {|f| !File.directory? f}


my_directory.each do |song_data|
  artist_name = song_data.split(" - ")[0][0..-1]
  song_title = song_data.split(/ [-\[]/)[1]
  genre = song_data.split(" [")[-1][0..-6]

  temp_song = Song.new
  temp_song.title = song_title

  preexisting_genre = Genre.all.detect {|item| item.name == genre}
  if preexisting_genre
    temp_song.genre=(preexisting_genre)
  else
    temp_genre = Genre.new
    temp_genre.name = genre
    temp_song.genre=(temp_genre)
  end
 
  preexisting_artist = Artist.all.detect {|item| item.name == artist_name}
  if preexisting_artist
    preexisting_artist.add_song(temp_song)
  else
    temp_artist = Artist.new
    temp_artist.name = artist_name
    temp_artist.add_song(temp_song)
  end
end

artist_list = Artist.all.sort! {|artist1, artist2| artist1.name <=> artist2.name}
genre_list = Genre.all.sort! {|genre1, genre2| genre1.name <=> genre2.name}

puts "To browse artists type 'A'"
puts "To browse genres type 'G'"
puts "To exit type 'exit'"
response = gets.chomp.downcase

case

when response == "a"
    puts "Please enter the number of the requested artist."
    
    artist_list.each_with_index  do |artist, index| 
      s = "s" if artist.songs_count > 1
      #Kate's pluralization solution
      puts "#{index+1}. #{artist.name} - #{artist.songs_count} song#{s}"
    end
    request_index = gets.chomp.to_i
    request_index -= 1
    s = "s" if artist_list[request_index].songs_count > 1
    puts "#####{artist_list[request_index].name} - #{artist_list[request_index].songs_count} song#{s}"
    artist_list[request_index].songs.each_with_index do |song, index|
      puts "######{index+1}. #{song.title} - #{song.genre.name}"
    end

when response == "g"
    puts "Please enter the number of the requested genre."
    genre_list.each_with_index do|genre, index|
      s = "s" if genre.songs.length >1
      puts "#{index+1}. #{genre.name} - #{genre.songs.length} song#{s}"
    end
    request_index = gets.chomp.to_i
    request_index -=1
    s = "s" if genre_list[request_index].songs.length > 1
     puts "#####{genre_list[request_index].name} - #{genre_list[request_index].songs.length} song#{s}"
    genre_list[request_index].songs.each_with_index do |song, index|
      puts "######{index+1}. #{song.title} - #{song.artist.name}"
    end


when response == "exit"
      puts "Goodbye"
else puts "Please type 'A' for artists and 'G' for genres."
end

