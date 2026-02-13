class AddUserToSocks < ActiveRecord::Migration[8.1]
  def change
    # I had some errors with null: false here, so I'm allowing null for now. 
    add_reference :socks, :user, null: false, foreign_key: true
  end
end