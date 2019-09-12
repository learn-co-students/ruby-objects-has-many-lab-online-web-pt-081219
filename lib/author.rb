class Author 
  attr_accessor :name 
  @@all = []
  
  def initialize(name) 
    @name = name 
    @posts = []
  end 
  
  def posts 
    @posts 
  end
  
  def add_post(work)
    work.author = self
    save(work)
  end
  
  def add_post_by_title(title) 
    work = Post.new(title)
    add_post(work)
    save(work)
  end
  
  def save(work) 
    @@all << work 
  end 
  
  def self.post_count 
    @@all.length 
  end
  
end