class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre 
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artists << artist
    @@genres << genre
  end
  
  def self.artists 
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genre_count 
    
    #initialize each genre with 0 
    @@genres.each do |genre|
      @@genre_count[genre] = 0
    end 
    
    #change each genre value to have the number of songs in that genre
    @@genres.each do |genre|
      @@genre_count[genre] +=1 
    end 
    @@genre_count
  end 
  
  def self.artist_count 
    
    #initialize each artist key with 0 
    @@artists.each do |artist|
      @@artist_count[artist] = 0
    end 
    
    #change each artist value to have the number of songs in that genre
    @@artists.each do |artist|
      @@artist_count[artist] +=1 
    end 
    @@artist_count
  end 
  
end 