require 'pry'

class Artist 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []  
  end
  
  def songs
    @songs
  end 
  
  def add_song(song)
    #binding.pry
    @songs << song
    song.artist = self
    save(song)
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    save(song)
  end
  
  def self.song_count
    @@all.length
  end 
  
  def save(song)
    @@all << song 
  end
end