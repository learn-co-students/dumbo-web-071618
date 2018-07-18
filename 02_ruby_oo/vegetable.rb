class Vegetable
  # Attributes for each instance of a vegetable: texture, color, has_seeds, flavor

  # `attr_reader` is a special method (a macro) that creates methods that allow us
  # to **READ** the attribute (the instance variable) it matches to
  # attr_reader :color, :texture, :has_seeds, :flavor

  # `attr_writer` is a special method (a macro) that creates methods that allow us
  # to **WRITE** to the attribute (the instance variable) it matches to
  # attr_writer :color, :texture, :has_seeds, :flavor

  # `attr_accessor` is a special method (a macro) that creates methods that allow us
  # to **READ AND WRITE** to the attribute (the instance variable) it matches to
  attr_accessor :color, :texture, :has_seeds, :flavor

  # Store all instances of our vegetables
  @@all = []

  def initialize(color, texture, has_seeds, flavor)
    # Instance variable
    @color = color
    @texture = texture
    @has_seeds = has_seeds
    @flavor = flavor

    @@all << self
  end

  # Class Method - denoted by the method definition having `self.` before its
  # name
  def self.chopping
    puts "We're ready to chop some veggies"
  end

  # A class method here! What we are doing is making our class variable @@all
  # accessible to other classes. We won't see the importance of this till we start
  # connecting it with another class
  def self.all
    @@all
  end

  # We wrote this method to see how `self` changes when you're in an instance
  # method vs. when you're in a class method.
  def whoami
    puts self
  end

  # These are all INSTANCE METHODS.
  # Methods that must be called on an instance of our class

  # Attribute Readers
  # def color
  #   @color
  # end
  #
  # def texture
  #   @texture
  # end
  #
  # def has_seeds?
  #   @has_seeds
  # end
  #
  # def flavor
  #   @flavor
  # end

  # Attribute Writer
  # def color=(new_color)
  #   @color = new_color
  # end
end

# puts "These are our vegetables: #{Vegetable.all}"
carrot = Vegetable.new("orange", "rough", false, "sweet")
cucumber = Vegetable.new("light green", "bumpy", true, "neutral")
puts "These are our vegetables: #{Vegetable.all}"

puts Vegetable.all[1] == cucumber
# Class Method
# Vegetable.chopping


# Instance method
# carrot.whoami

# Instance method - are called on instances (objects)
# puts carrot.color
# puts carrot.texture
# puts carrot.has_seeds
#
# puts cucumber.color
# puts cucumber.texture
# puts cucumber.has_seeds

# puts cucumber.color                # Attribute Reader
# cucumber.color=("brown") # Attribute Writer
# cucumber.has_seeds=(false)
# cucumber.texture=("mushy")
# cucumber.flavor=("gross")
# puts cucumber.color                # Attribute Reader
# puts cucumber.texture
# puts cucumber.has_seeds
# puts cucumber.flavor


# def prints_name(name)
#   puts "Hello, you're name is #{name}"
# end
#
# prints_name("Tony")
# prints_name("Scarlett")
# prints_name("Prince")
# prints_name("Winston")
Vegetable.chopping
