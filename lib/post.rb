class Post
  
  @@all = []
  
  attr_accessor :author, :title
  
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if author
      self.author.name
    else
      nil
    end
  end
  
end