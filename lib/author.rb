class Author 
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @posts = []
  end
  def add_post(post)
    @posts << post 
    post.author = self
  end
  def posts
    Post.all.select {|post| post.author == self}
  end
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
    #post.author
  end
  def self.post_count
    @posts = 3
end 
end