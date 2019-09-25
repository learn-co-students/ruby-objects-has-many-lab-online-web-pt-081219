class Post
  attr_accessor :author, :title
 
  @@all = []
 
  def initialize(title)
    @title = title
    save
  end
  
  def author_name
    if author != nil # != means doesnt equal nil
    author.name  #we have an attr_accessor for name so to call it  or retrieve author here we do .name on author
 end 
 end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end

# #if author.name != nil
#   author.name

# that still breaks if author is nil
# you can't call .name on something that doesn't exist
# thats why line 11-15 is the way it is