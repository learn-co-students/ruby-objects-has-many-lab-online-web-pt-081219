class Artist
  attr_accessor :name
  
  @@count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
    
  def add_song(song)
    song.artist = self
    self.songs << song
    @@count += 1
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    @@count += 1
  end
  
  def self.song_count
    @@count
  end
  
end
  
