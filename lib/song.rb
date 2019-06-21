class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self
    @@genres << self
  end
  
  # def self.artist
  #   @@artists
  # end
  
  # def self.genre
  #   @@genres
  # end
end