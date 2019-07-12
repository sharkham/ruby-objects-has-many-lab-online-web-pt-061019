class Author
  attr_accessor :name
  attr_reader :posts
  ALL_POSTS = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    ALL_POSTS << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    ALL_POSTS << post
    post.author = self
  end

  def self.post_count
    ALL_POSTS.count 
  end
end
