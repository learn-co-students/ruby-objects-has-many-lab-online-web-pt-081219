class Post 
  
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def save 
    @@all << self
  end
  
  def author_name
    if @author == nil 
      return nil 
    else 
      author.name 
    end
  end
  
  def self.all
    @@all 
  end
    
end