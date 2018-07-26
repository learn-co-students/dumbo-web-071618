class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre

  # This code gets written for us by
  # belongs_to
  # def author
  #   # Returns #<Author:0x12378912>
  #   Author.find(self.author_id)
  # end
end
