class Artist
  attr_accessor :name, :songs
  
 
  def initialize(name)
    @name = name
     @songs = []
    
  end  
  
  def add_song(song)
  
    @songs << song 
    song.artist = self 
    
  end
  
  def songs
    @songs 
  @@all_song = @songs
  end 
  
  def add_song_by_name(song_name) 
    new_song = Song.new(song_name) 
    new_song.artist = self 
    
  end 
 
   def self.song_count 
    Song.all.length
  end
  
end 

