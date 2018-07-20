require 'pry'
require_relative 'lib/author.rb'
require_relative 'lib/genre.rb'
require_relative 'lib/book.rb'

prince = Author.new("Prince", "THE PRINCE ERA")
rosa = Author.new("Rosa", "NOW")
roberto = Author.new("Roberto", "If it ain't baroque, don't fix it")

corgi = Genre.new("Adorable")
prince.write_novel("Corgis", corgi, 321)

puts "#{prince.genres}"
