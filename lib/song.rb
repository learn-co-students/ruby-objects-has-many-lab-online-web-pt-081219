class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def artist=(artist)
    artist.songs.push(self)
    @artist = artist
  end 
  
  def artist_name
    @artist ? self.artist.name : nil
  end 
end 