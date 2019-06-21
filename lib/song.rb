class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end
  
  def self.count
    @song_count = song_count
  end
  
  def self.artists
    @artist_count = artist_count
  end
  
  def self.genres
    @self.genres
  end
end