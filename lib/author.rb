class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author=self
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    post.author=self
    @posts << post
  end
  
  def self.post_count
    Post.post_count
  end
end