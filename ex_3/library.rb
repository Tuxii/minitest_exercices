class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(title)
    if book_exists?(title)
      raise "Book already exists in the library"
    else
      @books << title
    end
  end

  def remove_book(title)
    if book_exists?(title)
      @books.delete(title)
    else
      raise "Book #{title} not found in the library"
    end
  end

  def book_exists?(title)
    @books.include?(title)
  end
end
