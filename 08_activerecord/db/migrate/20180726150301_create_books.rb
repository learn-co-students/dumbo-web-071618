class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      # pages INTEGER
      # author TEXT - book.author => #<Author>
      # author_id
      # title TEXT
      # genre TEXT
      t.integer :pages
      t.string :title
    end
  end
end
