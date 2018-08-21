class AddPasswordDigestToUser < ActiveRecord::Migration[5.2]
  def change
    # Add Column to User called Password Digest (type string)
    add_column :users, :password_digest, :string
  end
end
