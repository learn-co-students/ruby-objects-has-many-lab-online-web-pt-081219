require 'pry'
class Author
  attr_accessor :name, :posts
  @@post_count = 3

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select do |post|
      post.author == self
  end
end

def add_post(post)
  self.posts << post
  post.author = self
  @@post_count += 1
end

def add_post_by_title(title)
  post = Post.new(title)
  @posts = post
  post.author = self
  @@post_count += 1
end

def self.post_count
  @@post_count = 3
end

end