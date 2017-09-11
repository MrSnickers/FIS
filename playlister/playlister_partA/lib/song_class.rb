### SONG CLASS

class Song

attr_accessor :genre, :artist

  def initialize
      # @title = song_name
      @artist
      @genre
  end

  def genre=(song_genre)
    @genre = song_genre
    song_genre.songs << self
  end

end