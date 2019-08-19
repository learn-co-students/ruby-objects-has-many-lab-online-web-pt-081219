class Song 
  attr_accessor :artist , :name 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end

  
  def artist=(artist_object)
   artist_object.songs << self
    @artist = artist_object
  end  
  
  def self.all 
    @@all
  end 
  
  def artist_name 
    self.artist ? self.artist.name: nil
  end
  
  
end