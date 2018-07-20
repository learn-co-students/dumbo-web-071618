class Book
  attr_reader :title, :author, :pages

  # All references of books that are ever
  # created
  @@all = []

  def initialize(title, author, pages)
    @title = title
    @author = author # Belongs_to
    @pages = pages

    @@all << self
  end

  def self.all
    @@all
  end
end

# Book.new
