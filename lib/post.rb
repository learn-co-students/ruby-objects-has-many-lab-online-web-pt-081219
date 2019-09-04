class Post
  attr_accessor :title
  @@all = []
  def initialize(name)
    @title = name
    @author = nil
    save
  end
  
  def author
    @author
  end
  
  def author=(new_artist)
    @author = new_artist
    new_artist.posts << self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if @author != nil
      @author.name
    else
      nil
    end
  end
  
  def self.post_count
    @@all.length
  end
  
end