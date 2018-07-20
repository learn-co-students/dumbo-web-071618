require 'pry'
require_relative 'lib/author.rb'
require_relative 'lib/book.rb'

prince = Author.new("Prince", "THE PRINCE ERA")
rosa = Author.new("Rosa", "NOW")
roberto = Author.new("Roberto", "If it ain't baroque, don't fix it")

# prince_book1 = Book.new("My life", prince, 123)

puts "Prince's books before:#{prince.books.length}"

prince.write_novel("My life", 123)
prince.write_novel("My life", 123)
prince.write_novel("My life", 123)
prince.write_novel("My life", 123)
prince.write_novel("My life", 123)

prince = 10

rosa.write_novel("WOW", 2000000)
rosa.write_novel("WOWWWWW", 2000000)
rosa.write_novel("WOWWWWWWWWW", 2000000)

binding.pry
puts "Prince's books after: #{prince.books.length}"
