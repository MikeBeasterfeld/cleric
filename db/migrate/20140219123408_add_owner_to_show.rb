class AddOwnerToShow < ActiveRecord::Migration
  def change
    add_column :shows, :owner_id, :integer
  end
end
