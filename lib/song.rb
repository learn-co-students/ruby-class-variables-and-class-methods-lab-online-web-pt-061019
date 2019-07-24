require'pry'
class Song
     attr_accessor(:name, :artist, :genre)
 @@count = 0
 @@artists = []
 @@genres = []
  def initialize (name, artist, genre)
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

     genre_hash = {}
    @@genres.each do |a|
      #binding.pry

      if genre_hash[a]
        genre_hash[a] += 1
      else
         genre_hash[a] = 1
      end
    end
    genre_hash
   end

   def self.artist_count

     artist_hash = {}
    @@artists.each do |a|
      #binding.pry

      if artist_hash[a]
        artist_hash[a] += 1
      else
         artist_hash[a] = 1
      end
    end
    artist_hash
   end


# You will need to iterate over the @@genres array and populate a hash with the key/value pairs. You will need to check to see if the hash already contains a key of a particular genre. If so, increment the value of that key by one, otherwise, create a new key/value pair.
    #
song1 = Song.new("song1","artist","genre")



end
