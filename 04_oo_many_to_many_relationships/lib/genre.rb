class Genre

  attr_reader :name
  # name
  def initialize(name)
    @name = name
  end

  def books
    Book.all.select do |book|
      # Find the book's genre that matches self
      book.genre == self
    end
  end

  def authors
    #  Every book knows about its author


    # books.map also works
    books.collect do |book|
      book.author
    end

    # Put all authors into a variable
    # Return an array of Author instances
  end
end

# genre = Genre.new("Horror")
# puts genre.name
