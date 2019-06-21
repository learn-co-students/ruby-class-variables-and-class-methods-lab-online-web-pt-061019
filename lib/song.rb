class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count_lists(array)
    count = {}
    array.each do |item|
      if count[item] then count[item] += 1
      else count[item] = 1
      end
    end
    count
  end

  def self.genre_count
    count_lists(@@genres)
  end

  def self.artist_count
    count_lists(@@artists)
  end

end
