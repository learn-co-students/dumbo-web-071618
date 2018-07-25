class Artist

  attr_accessor :id, :name

  # Mass Assignment
  def initialize(attributes)
    # @id = attributes["id"]
    # @name = attributes["name"]
    # @artist_id = attributes["artist_id"]

    attributes.each do |key, value|
      # If you have a writer method, we'll send it
      # Otherwise, ignore it
      if self.respond_to?("#{key}=")
        self.send("#{key}=", value)
      end
      # binding.pry
    end
  end

  def self.find(id)
    sql = <<-SQL
      SELECT * FROM artists WHERE id = ?
    SQL

    artist_hash = DB[:conn].execute(sql, id)[0]
    Artist.new(artist_hash)
  end

  def save
    if self.id.nil?
      insert_record
      artist_id = DB[:conn].execute("SELECT id FROM artists ORDER BY id DESC LIMIT 1")[0]["id"]
      self.id = artist_id
    else
      update_record
    end

    # One: When it is not already on the database
    # Two: When we're updating the database
    # We know when we're updating because there is already an id
    self
  end

  private
  def insert_record
    sql = <<-SQL
      INSERT INTO artists (name) VALUES (?);
    SQL

    DB[:conn].execute(sql, self.name)
  end

  def update_record
    sql = <<-SQL
      UPDATE artists SET name = ? WHERE id = ?
    SQL

    DB[:conn].execute(sql, self.name, self.id)
  end
end
