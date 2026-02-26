class AddAcceptedAtDeclinedAtToProposals < ActiveRecord::Migration[8.1]
  def change
    add_column :proposals, :accepted_at, :timestamp, if_not_exists: true
    add_column :proposals, :declined_at, :timestamp, if_not_exists: true
  end
end
