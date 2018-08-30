class Koala
  @@all = []

  def initialize(name)
    @name = name
    # instance of a new koala
    @@all << self
  end

  def sound
    # instance
    puts 'meow'
  end

  # class
  puts self

  def self.all
    # class
    @@all
  end


end

koala = Koala.new('Francine')
koala.sound
Koala.all






