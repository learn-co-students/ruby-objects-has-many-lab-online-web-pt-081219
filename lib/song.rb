require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    save
  end
  
  def save
    @@all << self
    #binding.pry
  end
  
  def artist_name
    if self.artist 
      self.artist.name
    else
      nil
    end
  end
  
  def self.all
    @@all
  end
end