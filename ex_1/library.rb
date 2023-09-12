class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_books(title)
    @books << title
  end
end
