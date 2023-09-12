class Library
  attr_reader :books, :borrowed_books

  def initialize
    @books = []
    @borrowed_books = []
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

  def borrow_book(title)
    if @books.include?(title)
      @borrowed_books << title
      remove_book(title)
    else
      raise "Book #{title} not found in the library"
    end
  end

  def return_book(title)
    if @borrowed_books.include?(title)
      @books << title
      @borrowed_books.delete(title)
    else
      raise "Book #{title} has not been borrowed"
    end
  end
end
