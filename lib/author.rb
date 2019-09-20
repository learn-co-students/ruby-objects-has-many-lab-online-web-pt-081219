class Author
  attr_accessor :name, :posts, :author
  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.posts
    @@posts
  end

  def add_post(post_object)
    post_object.author = self
  end

  def self.post_count
    @@posts.length
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end
end

    # @@posts << self 