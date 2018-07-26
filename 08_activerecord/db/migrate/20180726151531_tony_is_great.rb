class TonyIsGreat < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |beef|
      # name - STRING
      # age - INTEGER
      # approachability - INTEGER
      beef.string :name
      beef.integer :age
      beef.integer :approachability
    end
  end
end
