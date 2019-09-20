class Artist
  attr_accessor :name, :songs, :artist
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.songs
    @@songs
  end

  def add_song(song)
    song.artist = self
  end

  def self.song_count
    @@songs.length
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end
end
