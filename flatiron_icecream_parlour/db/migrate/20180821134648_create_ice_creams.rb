class CreateIceCreams < ActiveRecord::Migration[5.2]
  def change
    create_table :ice_creams do |t|
      t.string :flavor
      t.string :color
      t.integer :calories
      t.boolean :is_dairy

      t.timestamps
    end
  end
end
