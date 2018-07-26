class Author < ActiveRecord::Base
  has_many :books
  has_many :genres, { through: :books}

  # This method gets built by using our syntax above:
  # has_many :books
  
  # def books
  #   # Find all books
  #   # Find all of the books that belong to this author
  #   Book.all.select do |book|
  #     book.author_id == self.id
  #   end
  # end
end
