class Author
  attr_accessor :name, :posts
  
  @@all_posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(new_post)
    new_post.author = self
    @posts << new_post
    @@all_posts << new_post
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts.push(new_post)
    @@all_posts.push(new_post)
  end 
  
  def self.post_count
    Post.all.length
  end 
end