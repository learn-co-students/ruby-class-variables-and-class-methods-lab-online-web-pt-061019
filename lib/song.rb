class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def count
    @@count
  end

  def self.genres # def genres passes but maybe it shouldn't?
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def genre_count
    hash = {}


    # hash["new_key"] = "New Value"

  end


end
