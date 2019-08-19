class Post
  attr_accessor :title, :author
    @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end  
  

  
  def author=(author_object)
    author_object.posts << self
    @author = author_object
  end 
  
  def author_name
    self.author ?  self.author.name : nil
  end
  
  def self.all
    @@all
  end
  
end