class Book
  attr_reader :title, :author, :pages, :genre

  # All references of books that are ever
  # created
  @@all = []

  def initialize(title, author, genre, pages)
    @title = title
    @author = author # Belongs_to
    @pages = pages
    @genre = genre

    @@all << self
  end

  def self.all
    @@all
  end
end

# Book.new
