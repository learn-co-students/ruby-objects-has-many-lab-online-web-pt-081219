require 'pry'

class Artist 
  attr_accessor :name, :artist
  
  @@song_count = 0
   
  def initialize(name)
    @name = name
    @songs = []
    @@song_count
  end

  
  def add_song(song)
  
    @songs << song 
    song.artist = self
    #binding.pry
    @@song_count += 1
  end
  
  def add_song_by_name(song)
   song = Song.new(song)
   @songs << song
   song.artist = self
   @@song_count += 1
  end
  
  def songs
    Song.all.each do |song|
      song
    end
    #@songs
  end
  
  def self.song_count
    @@song_count += 1
  end
end