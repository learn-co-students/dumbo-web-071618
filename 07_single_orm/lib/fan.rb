class Fan
  # CRUD - The 4 actions that we do to our data in our database
  # Create - "Creating data onto our database"
  # Read - "Reading data from our database"
  # Update - "Updating things that exist on our database"
  # Delete - "Deleting things on our database"

  # ORM - Object Relation Mapper
  # Allows us to use the Ruby code we love and connect to our
  # database without having to write SQL code again


  attr_accessor :id, :name, :artist_id, :artist

  # Mass Assignment
  # Where we take a hash
  # Fan.new({id: 1, name: "Prince", artist_id: 169 })
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

  def save
    if self.id.nil?
      insert_record
      fan_id = DB[:conn].execute("SELECT id FROM fans ORDER BY id DESC LIMIT 1")[0]["id"]
      self.id = fan_id
      self.artist = Artist.find(self.artist_id)
    else
      update_record
      self.artist = Artist.find(self.artist_id)
    end

    # One: When it is not already on the database
    # Two: When we're updating the database
    # We know when we're updating because there is already an id
    self
  end

  def self.create_table
    #HEREDOCS  <<-SQL
    sql = <<-SQL
      CREATE TABLE fans (id INTEGER PRIMARY KEY, name TEXT, artist_id INTEGER);
    SQL

    DB[:conn].execute(sql)
  end

  def self.insert(name, artist_id)
    sql = <<-SQL
      INSERT INTO fans (name, artist_id) VALUES (?, ?);
    SQL
    DB[:conn].execute(sql, name, artist_id)
  end

  # READ
  def self.find(id)
    sql = <<-SQL
      SELECT * FROM fans WHERE id = ?
    SQL

    fan_hash = DB[:conn].execute(sql, id)[0]
    Fan.new(fan_hash)
  end

  # UPDATE
  def self.update(id, name, artist_id)
    # attributes = {name: their_name, artist_id: fan_of_artist}
    sql = <<-SQL
      UPDATE fans SET name = ?, artist_id = ? WHERE id = ?
    SQL

    DB[:conn].execute(sql, name, artist_id, id)
  end

  # DELETE
  def self.delete(id)
    sql = <<-SQL
      DELETE FROM fans WHERE id = ?
    SQL

    DB[:conn].execute(sql, id)
  end


  private
  def insert_record
    sql = <<-SQL
      INSERT INTO fans (name, artist_id) VALUES (?, ?);
    SQL

    DB[:conn].execute(sql, self.name, self.artist_id)
  end

  def update_record
    sql = <<-SQL
      UPDATE fans SET name = ?, artist_id = ? WHERE id = ?
    SQL

    DB[:conn].execute(sql, self.name, self.artist_id, self.id)
  end
end

# Fan.insert(name, artist_id)
# fan = #<Fan:0x21378172>
