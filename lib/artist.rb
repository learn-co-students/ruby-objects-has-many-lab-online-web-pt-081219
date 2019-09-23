class Artist

  attr_accessor :name, :songs
  
  @@allSongs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@allSongs
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    @@allSongs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    @@allSongs << new_song
    new_song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end