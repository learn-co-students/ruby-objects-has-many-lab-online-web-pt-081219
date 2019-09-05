require "pry"
class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs 
    if Song.all == []
      Song.all 
    else 
      Song.all.select{|song|song.artist == self}
    end
  end 
  
  def add_song(song) 
    song.artist = self
  end 
  
  def add_song_by_name(song_name)
     song = Song.new(song_name)
     add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end 
end 