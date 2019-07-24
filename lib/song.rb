class Song
     attr_accessor("name", "artist", "genre")
 @@song_count = 0
  def initialize (name, artist, genre)
   @@song_count += 1
   @name = name
   @artist = artist
   @genre = genre
  end

song.name
  def song_count
    self.count
  end
song1 = Song.new("song1","artist","genre")

end

end





  #The Song class can produce individual songs. Each song has a name,
  #an artist and a genre. We need our Song class to be able to keep track of the number of songs that it creates.
