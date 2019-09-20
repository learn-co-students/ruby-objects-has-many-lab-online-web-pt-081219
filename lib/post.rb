class Post
  @@all = []
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
    Author.posts << self
  end

  def author
    @author
  end

  def author=(a)
    @author = a
    author.posts << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      author.name
    end
  end
end