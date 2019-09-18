class Author
  @@all=[]
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @posts=[]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def posts
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def self.post_count
    Post.all.count
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
end