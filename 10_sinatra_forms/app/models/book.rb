class Book < ActiveRecord::Base
  validates :author, presence: true
end
