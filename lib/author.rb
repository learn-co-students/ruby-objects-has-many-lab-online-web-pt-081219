class Author

  attr_accessor :name, :posts

  def initialize (name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.each do |post|
      if post.author == self
        @posts.push(post)
      end
    end
  end

  def add_post(new_post)
    new_post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
  end

  def self.post_count
    Post.all.count
  end
end 