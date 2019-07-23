class Song
 @@song_count = []
  def initialize
   @@song_count += 1
  end

  def song_count
    self.count
  end
end





  #The Song class can produce individual songs. Each song has a name,
  #an artist and a genre. We need our Song class to be able to keep track of the number of songs that it creates.


end
