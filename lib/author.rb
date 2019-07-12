class Author
  attr_accessor :name
  attr_reader :posts
  def initialize(name)
    @name = name
    @posts = []
  end
end
