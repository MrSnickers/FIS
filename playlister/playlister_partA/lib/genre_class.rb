### GENRE CLASS

class Genre

attr_accessor :name

GENRES = []

  def initialize
     @name
     GENRES << self
  end

  def count
    self.length
  end

  def songs
    @songs ||= []
  end

  def artists
    songs.collect{|song| song.artist}

  end

end