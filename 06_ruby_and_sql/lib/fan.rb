class Fan
  # CRUD
  # Create - We want to add data to our database

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

    DB[:conn].execute(sql, id)
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
end

# Fan.insert(name, artist_id)
# fan = #<Fan:0x21378172>
