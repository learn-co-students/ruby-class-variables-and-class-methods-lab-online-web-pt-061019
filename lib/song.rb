class Song

  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    new_hash = {}
    @@genres.each do |type|
      if new_hash[type] == nil
        new_hash[type] = 1 #this says that if rap doesn't exist in the hash as a key, then set rap => 1
      else
        new_hash[type] += 1 #this says that the type (rap), if present again, should have value increase by 1
      end
    end
    return new_hash
  end

  def self.artist_count
    dictionary = {}
    @@artists.each do |musician|
      if dictionary[musician] == nil
        dictionary[musician] = 1 #this says that if rap doesn't exist in the hash as a key, then set rap => 1
      else
        dictionary[musician] += 1 #this says that the type (rap), if present again, should have value increase by 1
      end
    end
    return dictionary
  end

end
