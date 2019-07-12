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

  # def genres # def genres passes but maybe it shouldn't?
  #   @@genres.uniq
  # end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}

    @@genres.uniq.each do |genre| # Get each unique item in the @@genres array..
      hash[genre] = @@genres.count(genre) # Make it a key, and the number of times that genre appears as the value...
    end
    return hash # Then return the array

  end

  def self.artist_count
    hash = {}

    @@artists.uniq.each do |artist| # Get each unique item in the @@artists array..
      hash[artist] = @@artists.count(artist) # Make it a key, and the number of times songs that artist has appears as the value...
    end
    return hash # Then return the array

  end

end
