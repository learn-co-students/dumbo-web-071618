class Author
  # name, era, books

  attr_reader :name, :era

  def initialize(name, era)
    @name = name
    @era = era
  end

  def write_novel(title, genre, pages)
    # binding.pry
    book = Book.new(title, self, genre, pages) #belongs_to
  end

  # This method allows us to ASK the Book class for
  # all of its books and then only use the ones that
  # belong to this particular instance of the author
  def books
    Book.all.select do |book|
      # Does the book's author match me?
      book.author == self
    end
  end

  # An array of Genre Objects that an author has written
  # a book for
  def genres
    # [#<Book>,#<Book>,#<Book> ]
    self.books.map do |book|
      book.genre
    end
    # 5 Books -> 5 Genres
  end

  # Since we wrote a method that already shows us the
  # book objects, we can iterate over it and return
  # back the title strings for each.
  def titles
    self.books.map do |book|
      book.title
    end
  end
end
