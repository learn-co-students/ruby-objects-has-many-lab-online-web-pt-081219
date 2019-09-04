require_relative "../lib/artist.rb"


class Song
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    save
  end
  
  def artist
    @artist
  end
  
  def artist=(new_artist)
    @artist = new_artist
    new_artist.songs << self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist != nil
      @artist.name
    else
      nil
    end
  end
  
  def self.song_count
    @@all.length
  end
  
end