class Song
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

  def initialize(album_name, artist_name, genre_type)
    @name = album_name
    @artist = artist_name
    @genre = genre_type
    @@count +=1
    @@genres << genre_type
    @@artists << artist_name
  end
  def self.count
    @@count
  end

  def self.artists
      @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.map do |genre|
        genre_hash[genre] ||= 0
        genre_hash[genre] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.map do |art|
        artist_hash[art] ||= 0
        artist_hash[art] += 1
    end
    artist_hash
  end
end
