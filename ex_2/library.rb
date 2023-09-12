class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_books(title)
    @books << title unless book_exists?(title)
  end

  def book_exists?(title)
    @books.include?(title)
  end
end
