class Song
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
    Artist.songs << self
  end

  def artist
    @artist
  end

  def artist=(a)
    @artist = a
    artist.songs << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist
      artist.name
    end
  end
end