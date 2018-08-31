class Animal
  def alive
    true
  end

  def eat
    true
  end

  def sleep
    true
  end

  def breathe
    true
  end
end

class Dog < Animal
  def sound
    'woof'
  end
end


class Puppy < Dog
  def is_cute?
    true
  end

  def alive
    true
  end

  def eat
    true
  end

  def sleep
    true
  end

  def breathe
    true
  end
end

puppy = Puppy.new








